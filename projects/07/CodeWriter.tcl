namespace eval CodeWriter {
          variable fd
          variable output {}
          variable open_close "open"
          variable comment_counter 1
          variable .vm_file
           
          proc CodeWriter { _file_ } {
               variable fd
               variable open_close
               variable .vm_file 
               set .vm_file [file tail "${_file_}"]
               set file [regsub {\.vm} ${_file_} {.asm}]
               if { $open_close == "open" } {
                  set fd [open $file w]
                  set open_close "close"
               } else {
                  close $fd
               }
          }
          
#############################Arithmetic ASM CODE PROCS #########################
          proc isBinary { arithmetic_command } {
               if { [regexp {add|sub|gt|lt|and|or|eq|lt|gt} $arithmetic_command] } {
                  return true
               } else {
                  return false
               }
          }
          
          proc append_unary_common_code {} {
               variable output
               lappend output {@SP}
               lappend output {A=M}
               lappend output {A=A-1}
               lappend output {D=M}
          }
                
          proc append_binary_common_code {} {
               variable output
               lappend output {@SP} 
               lappend output {M=M-1 // SP = SP - 1}
               lappend output {A=M   // A = SP}
               lappend output {D=M   // Save first value at top of stack in D}
               lappend output {A=A-1 // Point to second value from top of stack}
          }     
           
          proc append_binary_operators_not_common_code { operator } {
               variable output
               lappend output "D=M${operator}D // Apply operator($operator) on first value in D and second value pointed to by A in memory"
          }
           
          proc lt_gt_code {} {
               variable output
               variable comment_counter
               lappend output {D=0}
               lappend output "@SAVE_OUTPUT$comment_counter"
               lappend output {0;JMP}
               lappend output "(DECIDE_OUTPUT$comment_counter)"
               lappend output {D=-1}
               lappend output "(SAVE_OUTPUT$comment_counter)"
               lappend output {@SP}
               lappend output {A=M-1}
          }
          
          proc writeArithmetic { arithmetic_command } {
               variable output
               variable comment_counter
               set output {}
               if { [isBinary $arithmetic_command] } {
                  append_binary_common_code
               } else {
                  append_unary_common_code
               }
               switch $arithmetic_command {
                      add { append_binary_operators_not_common_code "+" }
                      sub { append_binary_operators_not_common_code "-" }
                      neg { lappend output {D=-D} }
                      eq  { append_binary_operators_not_common_code "-"
                            lappend output "@DECIDE_OUTPUT$comment_counter"
                            lappend output {D;JEQ}
                            lt_gt_code }
                      gt  { append_binary_operators_not_common_code "-"
                            lappend output "@DECIDE_OUTPUT$comment_counter"
                            lappend output {D;JGT}
                            lt_gt_code }
                      lt  { append_binary_operators_not_common_code "-"
                            lappend output "@DECIDE_OUTPUT$comment_counter"
                            lappend output {D;JLT}
                            lt_gt_code }
                      and { append_binary_operators_not_common_code "&" }
                      or  { append_binary_operators_not_common_code "|" }
                      not { lappend output {D=!D} }
               }
               save_output_to_memory 
               write_output_to_file
          }
###########################Arithmetic ASM CODE PROCS ###########################

#####################PUSH/POP memory segment code procs ########################

          proc save_output_to_memory {} {
               variable output
               lappend output {M=D // Save result }
          }
          
          proc return_segment_ptr { .vm_file segment index } {
               switch $segment {
                      local    { return LCL  }
                      argument { return ARG  }
                      this     { return THIS }
                      that     { return THAT }
                      temp     { return R5   }
                      static   { return "${.vm_file}.$index" }
                      pointer  {if { $index } { return R4 } else { return R3 } }
               }
          }
          
          proc SP_pop_code {} {
               variable output
               lappend output {@SP            // Load Stack pointer}
               lappend output {M=M-1          // Decrement SP by 1 since we are going to pop}
               lappend output {A=M            // Get new stack pointer address and let A register point to the new SP address}
               lappend output {D=M            // Get the value stored on top of stack for saving in the memory segment}
               
          }
           
          proc append_code_for_pop_lcl_arg_this_that_temp { .vm_file segment index } {
               variable output
               set segment_ptr [return_segment_ptr ${.vm_file} $segment $index]
               
               lappend output "@$segment_ptr  // Load segment pointer"
               if { [regexp {^temp$} $segment] } { 
                  lappend output {D=A            // Store segment starting address in A for temp segment}
               } else {
                  lappend output {D=M            // Store segment starting address in D}
               }
               lappend output "@$index        // Load index from starting address"
               lappend output {D=D+A          // Store Starting address + index in D}
               lappend output {@R15           // General purpose R15 register used to save the segment address where we will pop}
               lappend output {M=D            // Save the reqd. segment address in memory location 15}
               SP_pop_code
               lappend output {@R15           // Reload the reqd. segment address where we have to pop from R15}
               lappend output {A=M            // Get reqd. address in A register}
               lappend output {M=D            // Save popped value (in D register) to the reqd. memory segment location}
          }
           
          proc append_code_for_pop_static_pointer { .vm_file segment index } {
               variable output
               set segment_ptr [return_segment_ptr ${.vm_file} $segment $index]

               SP_pop_code
               lappend output "@$segment_ptr  // Load segment pointer"
               lappend output {M=D            // Save popped value (in D register) to the reqd. memory segment (static/pointer) location}
          }
           
           
          proc SP_push_code {} {
               variable output
               lappend output {@SP            // Load Stack pointer}
               lappend output {A=M            // Get top of stack memory address in A}
               lappend output {M=D            // Push the reqd. value saved in D onto the top of the stack}
               lappend output {@SP            // Load stack pointer}
               lappend output {M=M+1          // Increment SP by 1 since we have pushed}
          }

          proc load_segment_addr { .vm_file segment index } {
               variable output
               set segment_ptr [return_segment_ptr ${.vm_file} $segment $index]
               lappend output "@$segment_ptr // Load segment pointer"
               if { [regexp {^temp$} $segment] } {
                  lappend output {D=A            // Store segment starting address in A for temp segment}
               } else {
                  lappend output {D=M            // Store segment starting address in D}
               }

          }
          
          proc append_code_for_push_lcl_arg_this_that_temp_static_pointer { .vm_file segment index } {
             variable output
             load_segment_addr ${.vm_file} $segment ${index}
               
             if { [regexp {^(local|argument|this|that|temp)$} $segment] } {
                lappend output "@$index        // Load index from starting address"
                lappend output {A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A}
                lappend output {D=M            // Get the reqd. value to push from the memory location}
             }

             SP_push_code
          }
 
          proc append_code_for_push_constant { constant } {
               variable output
               
               lappend output "@$constant"
               lappend output "D=A" 
               SP_push_code
          }
          
          proc WritePushPop { command segment index } {
               variable output
               variable .vm_file
               set output {}
               if { $command == "C_PUSH" } {
                  switch $segment {
                         local -
                         argument - 
                         this -
                         that -
                         temp -
                         static -
                         pointer  { append_code_for_push_lcl_arg_this_that_temp_static_pointer ${.vm_file} $segment $index }
                         constant { append_code_for_push_constant $index }
                  }
               } else {
                  switch $segment {
                         local -
                         argument -
                         this -
                         that -
                         temp      { append_code_for_pop_lcl_arg_this_that_temp ${.vm_file} $segment $index }
                         pointer -
                         static    { append_code_for_pop_static_pointer ${.vm_file} $segment $index }
                  }
               } 
               write_output_to_file
          } 
          
          proc write_output_to_file {} {
               variable output
               variable comment_counter
               variable fd
               foreach code_line $output {
                  puts $fd $code_line
               }
               incr comment_counter
          }
          
          proc end_asm {} {
               variable fd
               puts $fd "(ASM_END_LOOP)"
               puts $fd "@ASM_END_LOOP"
               puts $fd "0;JMP"
          }
}
#####################PUSH/POP memory segment code procs ########################
