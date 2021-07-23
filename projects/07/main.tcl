
source CodeWriter.tcl
source parser.tcl
namespace import parser::*
namespace import CodeWriter::*

::parser::parser $argv
::CodeWriter::CodeWriter $argv
while { [::parser::hasMoreCommands] } {
        ::parser::remove_spaces_tabs
        ::parser::advance
        puts $::parser::current_command
        if { [regexp {^//} $::parser::current_command]  || [regexp {^$} $::parser::current_command]} {
           puts "Within if condition for comments"
           continue
        }
        if { [::parser::commandType] == "C_ARITHMETIC" } {
           puts "Arithmetic command"
           ::CodeWriter::writeArithmetic [::parser::arg1]
        } elseif { [regexp {(C_PUSH|C_POP)} [::parser::commandType]] } {
           puts "Push/Pop command"
           ::CodeWriter::WritePushPop [::parser::commandType] [::parser::arg1] [::parser::arg2]
        }
}      
::CodeWriter::end_asm
::parser::parser $argv
::CodeWriter::CodeWriter $argv
