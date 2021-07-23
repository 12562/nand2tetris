namespace eval CodeWriter {
          variable fd
          variable write_or_append "write"
          variable output {}
          variable comment_counter 1
          variable .vm_file
          variable file_Path
### functionName$label : Let foo be a function within a VM file Xxx. Each label bar command within foo should generate and insert into the assembly code stream a symbol Xxx.foo$bar. When translating goto bar and if-goto bar commands (within foo) into assembly, the full label specification Xxx.foo$bar must be used instead of bar.
          variable current_function "" 
          ## => current_function = Xxx.foo, this changes on each call to Writefunction command
### Xxx.i symbols : Each static variable i in file Xxx.vm is translated into the assembly symbol Xxx.j., where j is incremented each time a new static variable is encountered in the file Xxx.vm.
          variable static_index 1   
          ## => static_index = j
          variable static_mapping
### functionName$ret.i : Let foo be a function within a VM file Xxx. Within foo, each function call command should generate and insert into the assembly code stream a symbol Xxx.foo$ret.i, where i is a running integer (one such symbol should be generated for  each call command within foo). This symbol serves as the return address to the calling function. 
          variable call_running_integer
           
          proc setFileName { fileName } {
               variable .vm_file
               variable file_Path
               set file_Path ${fileName}
               set .vm_file [regsub {\..*} [file tail "${file_Path}"] {}]
          }
          
          proc CodeWriter { file } {
               variable fd
               variable write_or_append 
               if { $write_or_append == "write" } {
                  set fd [open $file w]
                  set write_or_append "append"
               } else {
                  set fd [open $file a]
               }
          }

          proc Close {} {
               variable fd
               close $fd 
          }
          
          proc writeInit {} {
               variable output
               variable current_function
               set current_function "Sys.init"
               set output {}
               lappend output {@256     //Initial value for stack pointer}
               lappend output {D=A      // Put value 256 in D register to finally save at SP memory location}
               lappend output {@SP      //Load Stack pointer address in A}
               lappend output {M=D      //Now, SP points to RAM address 256}
               write_output_to_file
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
          
          proc return_segment_ptr { .vm_file segment index {pop 0}} {
               variable static_index
               variable static_mapping
               switch $segment {
                      local    { return LCL  }
                      argument { return ARG  }
                      this     { return THIS }
                      that     { return THAT }
                      temp     { return R5   }
                      static   { if { $pop eq "1" } {set static_mapping(${.vm_file}.$index) "${.vm_file}.$static_index"; incr static_index; return $static_mapping(${.vm_file}.$index)} else { puts "Array names are : [array names static_mapping]"; return $static_mapping(${.vm_file}.$index) }}
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
               set segment_ptr [return_segment_ptr ${.vm_file} $segment $index 1]

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

          proc load_segment_addr { segment {.vm_file ""} {index 0}} {
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
             load_segment_addr $segment ${.vm_file} ${index}
               
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
                  lappend output "// For push"
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
                  lappend output "// For pop"
                  lappend output "// $command $segment $index"
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
#####################PUSH/POP memory segment code procs ########################

#####################Label/Goto/If-goto code proc ########################
          proc writeLabel {label} {
               variable output
               variable current_function
               set output {}
               if { $current_function != "" } {
                  lappend output "($current_function\$$label)"
               } else {
                  lappend output "($label)"
               }
               write_output_to_file
          }
          
          proc writeGoto {label} {
               variable output
               variable current_function
               set output {}
               if { $current_function != "" } {
                  lappend output "@$current_function\$$label"
               } else {
                  lappend output "@$label"
               }
               lappend output "0;JMP"
               write_output_to_file
          }
          
          proc writeIf {label} {
               variable output
               variable current_function
               set output {}
               SP_pop_code
               if { $current_function != "" } {
                  lappend output "@$current_function\$$label"
               } else {
                  lappend output "@$label"
               }
               lappend output "D;JNE"
               write_output_to_file
          }
#####################Label/Goto/If-goto code proc ########################
#####################Function/Call/Return code proc ########################

          proc writeFunction { functionName numVars } {
               variable output
               set output {}
               variable current_function
               set current_function "$functionName"
               lappend output "($functionName)"
               if { $numVars } {
                  lappend output "//Calling push constant 0 numVars times to initialize all local variables to 0"
                  append_code_for_push_constant 0 
                  set i 0
                  while { $i < $numVars } {
                      SP_push_code
                      incr i
                  }
               }
               write_output_to_file
          }
           
          proc writeCall { functionName numArgs } {
               variable current_function
               variable .vm_file
               variable output
               set output {}
               variable call_running_integer
               set segments {local argument this that}
               set output {}
               if { [regexp $current_function [array names call_running_integer] ] } {
                  incr call_running_integer($current_function)
               } else {
                  array set call_running_integer "$current_function 1"
               }
               set returnAddr "${current_function}\$ret.$call_running_integer($current_function)"
               lappend output "// Pushing return address onto the stack for function $current_function"
               append_code_for_push_constant $returnAddr
                 
               lappend output "// Pushing LCL, ARG, THIS and THAT of the caller"
               foreach segment $segments {
                  lappend output "// Caller's state saved for segment $segment "
                  load_segment_addr $segment
                  SP_push_code
               }

               lappend output {// Reposition ARG for callee}
               lappend output {@SP}
               lappend output {D=M}
               lappend output {@5}
               lappend output {D=D-A}
               lappend output "@$numArgs"
               lappend output {D=D-A}
               lappend output {@ARG}
               lappend output {M=D}
               
               lappend output {// Repositon LCL for callee}
               lappend output {@SP}
               lappend output {D=M}
               lappend output {@LCL}
               lappend output {M=D} 
               
               lappend output {// Goto callee function}
               lappend output "@$functionName"
               lappend output {0;JMP}
               
               lappend output {//Continue execution from the current function line}
               lappend output "($returnAddr)"
               
               write_output_to_file
          }

          proc LCL_pop_code { segment } {
               variable output
               lappend output {@LCL           // Load Stack pointer}
               lappend output {M=M-1          // Decrement SP by 1 since we are going to pop}
               lappend output {A=M            // Get new stack pointer address and let A register point to the new SP address}
               lappend output {D=M            // Get the value stored on top of stack for saving in the memory segment}
               lappend output "@$segment"
               lappend output {M=D}
          }
           
          proc writeReturn {} {
               variable output
               set output {}
               lappend output {@LCL}
               lappend output {D=M}
               lappend output {// Return Address is saved 5 memory addresses behind LCL. Get it and save it in R15}
               lappend output {@5}
               lappend output {A=D-A}
               lappend output {D=M}
               lappend output {@R15}
               lappend output {M=D}
                  
               lappend output {// Reposition the return value for the caller}
               SP_pop_code
               lappend output {@ARG}
               lappend output {A=M}
               lappend output {M=D}
                  
               lappend output {// Reposition the SP of the caller to one address ahead of return value}
               lappend output {@ARG} 
               lappend output {D=M+1}
               lappend output {@SP}
               lappend output {M=D}
                   
               lappend output {// Restore that of the caller}
               LCL_pop_code THAT
               lappend output {// Restore THIS of the caller}
               LCL_pop_code THIS
               lappend output {// Restore ARG of the caller}
               LCL_pop_code ARG
               lappend output {// Restore LCL of the caller}
               LCL_pop_code LCL
             
               lappend output {// Goes to the caller's return address} 
               lappend output {@R15}
               lappend output {A=M}
               lappend output {0;JMP}
               
               write_output_to_file
          }
          
#####################Function/Call/Return code proc ########################

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
