
source /home/mohit/Downloads/coursera/nand2tetris/projects/08/CodeWriter.tcl
source /home/mohit/Downloads/coursera/nand2tetris/projects/08/parser.tcl
namespace import parser::*
namespace import CodeWriter::*

proc get_vm_files { filePath } {
      
     if { [file isdirectory $filePath] } {
        return [glob -directory $filePath *.vm]
     } else {
        return $filePath
     }

}

proc get_output_filename { filePath } {
       
     if { [file isdirectory $filePath] } {
        set dirName [file tail $filePath]
        return "$filePath/${dirName}.asm"
     } else {
        return [regsub {\.vm} ${filePath} {.asm}]
     }
}

proc luniq { lst } {
     set new_lst {}
     foreach ele $lst {
        if { ![regexp $ele $new_lst] } {
           lappend new_lst $ele
        }
     }
     return $new_lst
}

set files [get_vm_files $argv]
if { [regexp {[^ ]*/Sys.vm} $files sys_vm] } {
   set files [luniq "$sys_vm $files"]
}
set asm_file [get_output_filename $argv]
::CodeWriter::CodeWriter $asm_file
puts $files
foreach _file_ $files {
   puts "***************************Parsing contents of : $_file_**********************************"
   ::parser::parser ${_file_}
   ::CodeWriter::setFileName ${_file_}
   if { [regexp Sys.vm ${_file_} ] } { ::CodeWriter::writeInit; ::CodeWriter::writeCall Sys.init 0 }
   while { [::parser::hasMoreCommands] } {
           ::parser::advance
           #puts $::parser::current_command
           if { [regexp {^//} $::parser::current_command]  || [regexp {^$} $::parser::current_command]} {
              puts "Within if condition for comments"
              continue
           }
           ::parser::remove_spaces_tabs_comments
           switch [::parser::commandType] {
              "C_ARITHMETIC"     {puts "Arithmetic command"; ::CodeWriter::writeArithmetic [::parser::arg1]}
              "C_PUSH" - 
              "C_POP"            {puts "Push/Pop command"; ::CodeWriter::WritePushPop [::parser::commandType] [::parser::arg1] [::parser::arg2]}
              "C_LABEL"          {puts "Label command"; ::CodeWriter::writeLabel [::parser::arg1]}
              "C_GOTO"           {puts "Goto command"; ::CodeWriter::writeGoto [::parser::arg1]}
              "C_IF"             {puts "If-Goto command"; ::CodeWriter::writeIf [::parser::arg1]}
              "C_FUNCTION"       {puts "Function command"; ::CodeWriter::writeFunction [::parser::arg1] [::parser::arg2]}
              "C_CALL"           {puts "Call command"; ::CodeWriter::writeCall [::parser::arg1] [::parser::arg2]}
              "C_RETURN"         {puts "Return command"; ::CodeWriter::writeReturn; if { ![::parser::hasMoreCommands] } { set $::CodeWriter::current_function "" }}
           }
   }      
   ::parser::parser ${_file_}
}
::CodeWriter::end_asm
::CodeWriter::Close
