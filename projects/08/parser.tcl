namespace eval parser {
          namespace export hasMoreCommands
          namespace export advance
          namespace export remove_spaces_tabs
          namespace export commandType 
          namespace export arg1
          namespace export arg2
          namespace export parser1
          variable line ""
          variable fd ""
          variable current_command "mycmd"
          variable open_close "open"
          namespace export current_command
          namespace export line

          proc hasMoreCommands {} {
               variable fd
               if { ![eof $fd] } {
                  return true
               } else {
                  return false
               }
          }
          
          proc advance {} {
               variable fd 
               variable line
               variable current_command
               gets $fd line
               regexp {([^ ]*)} "$line" current_command
               puts $line
          }
           
          proc remove_spaces_tabs_comments {} {
               variable line
               set line [string trim $line]
               regsub -all {[\t ]+|//.*} $line  " " line
          }
          
          proc commandType {} {
               variable current_command
               switch $current_command {
                      push      { return C_PUSH       }
                      pop       { return C_POP        }
                      label     { return C_LABEL      }
                      goto      { return C_GOTO       }
                      if-goto   { return C_IF         }
                      function  { return C_FUNCTION   }       
                      return    { return C_RETURN     }
                      call      { return C_CALL       }
                      default   { return C_ARITHMETIC }
               }
          }     
          
          proc arg1 {} {
               variable line
               if { [commandType] == "C_ARITHMETIC" } { 
                  return [lindex $line 0]
               } else {
                  return [lindex $line 1]
               }
          }
          
          proc arg2 {} {
               variable line
               return [lindex $line 2]
          }

          proc parser { .vm_file } {
               variable fd
               variable open_close
               if { $open_close == "open" } {  
                  set fd [open ${.vm_file} r] 
                  set open_close "close"
               } else {
                  close $fd
                  set open_close "open"
               } 
          }
}
