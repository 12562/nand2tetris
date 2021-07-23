@256     //Initial value for stack pointer
D=A      // Put value 256 in D register to finally save at SP memory location
@SP      //Load Stack pointer address in A
M=D      //Now, SP points to RAM address 256
// Pushing return address onto the stack for function Sys.init
@Sys.init$ret.1
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Pushing LCL, ARG, THIS and THAT of the caller
// Caller's state saved for segment local 
@LCL // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment argument 
@ARG // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment this 
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment that 
@THAT // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Reposition ARG for callee
@SP
D=M
@5
D=D-A
@0
D=D-A
@ARG
M=D
// Repositon LCL for callee
@SP
D=M
@LCL
M=D
// Goto callee function
@Sys.init
0;JMP
//Continue execution from the current function line
(Sys.init$ret.1)
(Sys.init)
// Pushing return address onto the stack for function Sys.init
@Sys.init$ret.2
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Pushing LCL, ARG, THIS and THAT of the caller
// Caller's state saved for segment local 
@LCL // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment argument 
@ARG // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment this 
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment that 
@THAT // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Reposition ARG for callee
@SP
D=M
@5
D=D-A
@0
D=D-A
@ARG
M=D
// Repositon LCL for callee
@SP
D=M
@LCL
M=D
// Goto callee function
@Main.main
0;JMP
//Continue execution from the current function line
(Sys.init$ret.2)
(Sys.init$WHILE)
@Sys.init$WHILE
0;JMP
(Square.new)
// For push
@3
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Pushing return address onto the stack for function Square.new
@Square.new$ret.1
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Pushing LCL, ARG, THIS and THAT of the caller
// Caller's state saved for segment local 
@LCL // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment argument 
@ARG // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment this 
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment that 
@THAT // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Reposition ARG for callee
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
// Repositon LCL for callee
@SP
D=M
@LCL
M=D
// Goto callee function
@Memory.alloc
0;JMP
//Continue execution from the current function line
(Square.new$ret.1)
// For pop
// C_POP pointer 0
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@R3  // Load segment pointer
M=D            // Save popped value (in D register) to the reqd. memory segment (static/pointer) location
// For push
@ARG // Load segment pointer
D=M            // Store segment starting address in D
@0        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// For pop
// C_POP this 0
@THIS  // Load segment pointer
D=M            // Store segment starting address in D
@0        // Load index from starting address
D=D+A          // Store Starting address + index in D
@R15           // General purpose R15 register used to save the segment address where we will pop
M=D            // Save the reqd. segment address in memory location 15
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@R15           // Reload the reqd. segment address where we have to pop from R15
A=M            // Get reqd. address in A register
M=D            // Save popped value (in D register) to the reqd. memory segment location
// For push
@ARG // Load segment pointer
D=M            // Store segment starting address in D
@1        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// For pop
// C_POP this 1
@THIS  // Load segment pointer
D=M            // Store segment starting address in D
@1        // Load index from starting address
D=D+A          // Store Starting address + index in D
@R15           // General purpose R15 register used to save the segment address where we will pop
M=D            // Save the reqd. segment address in memory location 15
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@R15           // Reload the reqd. segment address where we have to pop from R15
A=M            // Get reqd. address in A register
M=D            // Save popped value (in D register) to the reqd. memory segment location
// For push
@ARG // Load segment pointer
D=M            // Store segment starting address in D
@2        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// For pop
// C_POP this 2
@THIS  // Load segment pointer
D=M            // Store segment starting address in D
@2        // Load index from starting address
D=D+A          // Store Starting address + index in D
@R15           // General purpose R15 register used to save the segment address where we will pop
M=D            // Save the reqd. segment address in memory location 15
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@R15           // Reload the reqd. segment address where we have to pop from R15
A=M            // Get reqd. address in A register
M=D            // Save popped value (in D register) to the reqd. memory segment location
// For push
@R3 // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Pushing return address onto the stack for function Square.new
@Square.new$ret.2
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Pushing LCL, ARG, THIS and THAT of the caller
// Caller's state saved for segment local 
@LCL // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment argument 
@ARG // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment this 
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment that 
@THAT // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Reposition ARG for callee
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
// Repositon LCL for callee
@SP
D=M
@LCL
M=D
// Goto callee function
@Square.draw
0;JMP
//Continue execution from the current function line
(Square.new$ret.2)
// For pop
// C_POP temp 0
@R5  // Load segment pointer
D=A            // Store segment starting address in A for temp segment
@0        // Load index from starting address
D=D+A          // Store Starting address + index in D
@R15           // General purpose R15 register used to save the segment address where we will pop
M=D            // Save the reqd. segment address in memory location 15
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@R15           // Reload the reqd. segment address where we have to pop from R15
A=M            // Get reqd. address in A register
M=D            // Save popped value (in D register) to the reqd. memory segment location
// For push
@R3 // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
@LCL
D=M
// Return Address is saved 5 memory addresses behind LCL. Get it and save it in R15
@5
A=D-A
D=M
@R15
M=D
// Reposition the return value for the caller
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@ARG
A=M
M=D
// Reposition the SP of the caller to one address ahead of return value
@ARG
D=M+1
@SP
M=D
// Restore that of the caller
@LCL           // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@THAT
M=D
// Restore THIS of the caller
@LCL           // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@THIS
M=D
// Restore ARG of the caller
@LCL           // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@ARG
M=D
// Restore LCL of the caller
@LCL           // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@LCL
M=D
// Goes to the caller's return address
@R15
A=M
0;JMP
(Square.dispose)
// For push
@ARG // Load segment pointer
D=M            // Store segment starting address in D
@0        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// For pop
// C_POP pointer 0
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@R3  // Load segment pointer
M=D            // Save popped value (in D register) to the reqd. memory segment (static/pointer) location
// For push
@R3 // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Pushing return address onto the stack for function Square.dispose
@Square.dispose$ret.1
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Pushing LCL, ARG, THIS and THAT of the caller
// Caller's state saved for segment local 
@LCL // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment argument 
@ARG // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment this 
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment that 
@THAT // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Reposition ARG for callee
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
// Repositon LCL for callee
@SP
D=M
@LCL
M=D
// Goto callee function
@Memory.deAlloc
0;JMP
//Continue execution from the current function line
(Square.dispose$ret.1)
// For pop
// C_POP temp 0
@R5  // Load segment pointer
D=A            // Store segment starting address in A for temp segment
@0        // Load index from starting address
D=D+A          // Store Starting address + index in D
@R15           // General purpose R15 register used to save the segment address where we will pop
M=D            // Save the reqd. segment address in memory location 15
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@R15           // Reload the reqd. segment address where we have to pop from R15
A=M            // Get reqd. address in A register
M=D            // Save popped value (in D register) to the reqd. memory segment location
// For push
@0
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
@LCL
D=M
// Return Address is saved 5 memory addresses behind LCL. Get it and save it in R15
@5
A=D-A
D=M
@R15
M=D
// Reposition the return value for the caller
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@ARG
A=M
M=D
// Reposition the SP of the caller to one address ahead of return value
@ARG
D=M+1
@SP
M=D
// Restore that of the caller
@LCL           // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@THAT
M=D
// Restore THIS of the caller
@LCL           // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@THIS
M=D
// Restore ARG of the caller
@LCL           // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@ARG
M=D
// Restore LCL of the caller
@LCL           // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@LCL
M=D
// Goes to the caller's return address
@R15
A=M
0;JMP
(Square.draw)
// For push
@ARG // Load segment pointer
D=M            // Store segment starting address in D
@0        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// For pop
// C_POP pointer 0
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@R3  // Load segment pointer
M=D            // Save popped value (in D register) to the reqd. memory segment (static/pointer) location
// For push
@0
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
@SP
A=M
A=A-1
D=M
D=!D
M=D // Save result 
// Pushing return address onto the stack for function Square.draw
@Square.draw$ret.1
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Pushing LCL, ARG, THIS and THAT of the caller
// Caller's state saved for segment local 
@LCL // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment argument 
@ARG // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment this 
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment that 
@THAT // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Reposition ARG for callee
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
// Repositon LCL for callee
@SP
D=M
@LCL
M=D
// Goto callee function
@Screen.setColor
0;JMP
//Continue execution from the current function line
(Square.draw$ret.1)
// For pop
// C_POP temp 0
@R5  // Load segment pointer
D=A            // Store segment starting address in A for temp segment
@0        // Load index from starting address
D=D+A          // Store Starting address + index in D
@R15           // General purpose R15 register used to save the segment address where we will pop
M=D            // Save the reqd. segment address in memory location 15
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@R15           // Reload the reqd. segment address where we have to pop from R15
A=M            // Get reqd. address in A register
M=D            // Save popped value (in D register) to the reqd. memory segment location
// For push
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@0        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// For push
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@1        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// For push
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@0        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// For push
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@2        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
@SP
M=M-1 // SP = SP - 1
A=M   // A = SP
D=M   // Save first value at top of stack in D
A=A-1 // Point to second value from top of stack
D=M+D // Apply operator(+) on first value in D and second value pointed to by A in memory
M=D // Save result 
// For push
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@1        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// For push
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@2        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
@SP
M=M-1 // SP = SP - 1
A=M   // A = SP
D=M   // Save first value at top of stack in D
A=A-1 // Point to second value from top of stack
D=M+D // Apply operator(+) on first value in D and second value pointed to by A in memory
M=D // Save result 
// Pushing return address onto the stack for function Square.draw
@Square.draw$ret.2
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Pushing LCL, ARG, THIS and THAT of the caller
// Caller's state saved for segment local 
@LCL // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment argument 
@ARG // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment this 
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment that 
@THAT // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Reposition ARG for callee
@SP
D=M
@5
D=D-A
@4
D=D-A
@ARG
M=D
// Repositon LCL for callee
@SP
D=M
@LCL
M=D
// Goto callee function
@Screen.drawRectangle
0;JMP
//Continue execution from the current function line
(Square.draw$ret.2)
// For pop
// C_POP temp 0
@R5  // Load segment pointer
D=A            // Store segment starting address in A for temp segment
@0        // Load index from starting address
D=D+A          // Store Starting address + index in D
@R15           // General purpose R15 register used to save the segment address where we will pop
M=D            // Save the reqd. segment address in memory location 15
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@R15           // Reload the reqd. segment address where we have to pop from R15
A=M            // Get reqd. address in A register
M=D            // Save popped value (in D register) to the reqd. memory segment location
// For push
@0
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
@LCL
D=M
// Return Address is saved 5 memory addresses behind LCL. Get it and save it in R15
@5
A=D-A
D=M
@R15
M=D
// Reposition the return value for the caller
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@ARG
A=M
M=D
// Reposition the SP of the caller to one address ahead of return value
@ARG
D=M+1
@SP
M=D
// Restore that of the caller
@LCL           // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@THAT
M=D
// Restore THIS of the caller
@LCL           // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@THIS
M=D
// Restore ARG of the caller
@LCL           // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@ARG
M=D
// Restore LCL of the caller
@LCL           // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@LCL
M=D
// Goes to the caller's return address
@R15
A=M
0;JMP
(Square.erase)
// For push
@ARG // Load segment pointer
D=M            // Store segment starting address in D
@0        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// For pop
// C_POP pointer 0
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@R3  // Load segment pointer
M=D            // Save popped value (in D register) to the reqd. memory segment (static/pointer) location
// For push
@0
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Pushing return address onto the stack for function Square.erase
@Square.erase$ret.1
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Pushing LCL, ARG, THIS and THAT of the caller
// Caller's state saved for segment local 
@LCL // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment argument 
@ARG // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment this 
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment that 
@THAT // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Reposition ARG for callee
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
// Repositon LCL for callee
@SP
D=M
@LCL
M=D
// Goto callee function
@Screen.setColor
0;JMP
//Continue execution from the current function line
(Square.erase$ret.1)
// For pop
// C_POP temp 0
@R5  // Load segment pointer
D=A            // Store segment starting address in A for temp segment
@0        // Load index from starting address
D=D+A          // Store Starting address + index in D
@R15           // General purpose R15 register used to save the segment address where we will pop
M=D            // Save the reqd. segment address in memory location 15
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@R15           // Reload the reqd. segment address where we have to pop from R15
A=M            // Get reqd. address in A register
M=D            // Save popped value (in D register) to the reqd. memory segment location
// For push
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@0        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// For push
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@1        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// For push
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@0        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// For push
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@2        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
@SP
M=M-1 // SP = SP - 1
A=M   // A = SP
D=M   // Save first value at top of stack in D
A=A-1 // Point to second value from top of stack
D=M+D // Apply operator(+) on first value in D and second value pointed to by A in memory
M=D // Save result 
// For push
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@1        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// For push
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@2        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
@SP
M=M-1 // SP = SP - 1
A=M   // A = SP
D=M   // Save first value at top of stack in D
A=A-1 // Point to second value from top of stack
D=M+D // Apply operator(+) on first value in D and second value pointed to by A in memory
M=D // Save result 
// Pushing return address onto the stack for function Square.erase
@Square.erase$ret.2
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Pushing LCL, ARG, THIS and THAT of the caller
// Caller's state saved for segment local 
@LCL // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment argument 
@ARG // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment this 
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment that 
@THAT // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Reposition ARG for callee
@SP
D=M
@5
D=D-A
@4
D=D-A
@ARG
M=D
// Repositon LCL for callee
@SP
D=M
@LCL
M=D
// Goto callee function
@Screen.drawRectangle
0;JMP
//Continue execution from the current function line
(Square.erase$ret.2)
// For pop
// C_POP temp 0
@R5  // Load segment pointer
D=A            // Store segment starting address in A for temp segment
@0        // Load index from starting address
D=D+A          // Store Starting address + index in D
@R15           // General purpose R15 register used to save the segment address where we will pop
M=D            // Save the reqd. segment address in memory location 15
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@R15           // Reload the reqd. segment address where we have to pop from R15
A=M            // Get reqd. address in A register
M=D            // Save popped value (in D register) to the reqd. memory segment location
// For push
@0
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
@LCL
D=M
// Return Address is saved 5 memory addresses behind LCL. Get it and save it in R15
@5
A=D-A
D=M
@R15
M=D
// Reposition the return value for the caller
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@ARG
A=M
M=D
// Reposition the SP of the caller to one address ahead of return value
@ARG
D=M+1
@SP
M=D
// Restore that of the caller
@LCL           // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@THAT
M=D
// Restore THIS of the caller
@LCL           // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@THIS
M=D
// Restore ARG of the caller
@LCL           // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@ARG
M=D
// Restore LCL of the caller
@LCL           // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@LCL
M=D
// Goes to the caller's return address
@R15
A=M
0;JMP
(Square.incSize)
// For push
@ARG // Load segment pointer
D=M            // Store segment starting address in D
@0        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// For pop
// C_POP pointer 0
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@R3  // Load segment pointer
M=D            // Save popped value (in D register) to the reqd. memory segment (static/pointer) location
// For push
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@1        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// For push
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@2        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
@SP
M=M-1 // SP = SP - 1
A=M   // A = SP
D=M   // Save first value at top of stack in D
A=A-1 // Point to second value from top of stack
D=M+D // Apply operator(+) on first value in D and second value pointed to by A in memory
M=D // Save result 
// For push
@254
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
@SP
M=M-1 // SP = SP - 1
A=M   // A = SP
D=M   // Save first value at top of stack in D
A=A-1 // Point to second value from top of stack
D=M-D // Apply operator(-) on first value in D and second value pointed to by A in memory
@DECIDE_OUTPUT74
D;JLT
D=0
@SAVE_OUTPUT74
0;JMP
(DECIDE_OUTPUT74)
D=-1
(SAVE_OUTPUT74)
@SP
A=M-1
M=D // Save result 
// For push
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@0        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// For push
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@2        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
@SP
M=M-1 // SP = SP - 1
A=M   // A = SP
D=M   // Save first value at top of stack in D
A=A-1 // Point to second value from top of stack
D=M+D // Apply operator(+) on first value in D and second value pointed to by A in memory
M=D // Save result 
// For push
@510
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
@SP
M=M-1 // SP = SP - 1
A=M   // A = SP
D=M   // Save first value at top of stack in D
A=A-1 // Point to second value from top of stack
D=M-D // Apply operator(-) on first value in D and second value pointed to by A in memory
@DECIDE_OUTPUT79
D;JLT
D=0
@SAVE_OUTPUT79
0;JMP
(DECIDE_OUTPUT79)
D=-1
(SAVE_OUTPUT79)
@SP
A=M-1
M=D // Save result 
@SP
M=M-1 // SP = SP - 1
A=M   // A = SP
D=M   // Save first value at top of stack in D
A=A-1 // Point to second value from top of stack
D=M&D // Apply operator(&) on first value in D and second value pointed to by A in memory
M=D // Save result 
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@Square.incSize$IF_TRUE0
D;JNE
@Square.incSize$IF_FALSE0
0;JMP
(Square.incSize$IF_TRUE0)
// For push
@R3 // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Pushing return address onto the stack for function Square.incSize
@Square.incSize$ret.1
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Pushing LCL, ARG, THIS and THAT of the caller
// Caller's state saved for segment local 
@LCL // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment argument 
@ARG // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment this 
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment that 
@THAT // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Reposition ARG for callee
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
// Repositon LCL for callee
@SP
D=M
@LCL
M=D
// Goto callee function
@Square.erase
0;JMP
//Continue execution from the current function line
(Square.incSize$ret.1)
// For pop
// C_POP temp 0
@R5  // Load segment pointer
D=A            // Store segment starting address in A for temp segment
@0        // Load index from starting address
D=D+A          // Store Starting address + index in D
@R15           // General purpose R15 register used to save the segment address where we will pop
M=D            // Save the reqd. segment address in memory location 15
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@R15           // Reload the reqd. segment address where we have to pop from R15
A=M            // Get reqd. address in A register
M=D            // Save popped value (in D register) to the reqd. memory segment location
// For push
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@2        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// For push
@2
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
@SP
M=M-1 // SP = SP - 1
A=M   // A = SP
D=M   // Save first value at top of stack in D
A=A-1 // Point to second value from top of stack
D=M+D // Apply operator(+) on first value in D and second value pointed to by A in memory
M=D // Save result 
// For pop
// C_POP this 2
@THIS  // Load segment pointer
D=M            // Store segment starting address in D
@2        // Load index from starting address
D=D+A          // Store Starting address + index in D
@R15           // General purpose R15 register used to save the segment address where we will pop
M=D            // Save the reqd. segment address in memory location 15
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@R15           // Reload the reqd. segment address where we have to pop from R15
A=M            // Get reqd. address in A register
M=D            // Save popped value (in D register) to the reqd. memory segment location
// For push
@R3 // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Pushing return address onto the stack for function Square.incSize
@Square.incSize$ret.2
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Pushing LCL, ARG, THIS and THAT of the caller
// Caller's state saved for segment local 
@LCL // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment argument 
@ARG // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment this 
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment that 
@THAT // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Reposition ARG for callee
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
// Repositon LCL for callee
@SP
D=M
@LCL
M=D
// Goto callee function
@Square.draw
0;JMP
//Continue execution from the current function line
(Square.incSize$ret.2)
// For pop
// C_POP temp 0
@R5  // Load segment pointer
D=A            // Store segment starting address in A for temp segment
@0        // Load index from starting address
D=D+A          // Store Starting address + index in D
@R15           // General purpose R15 register used to save the segment address where we will pop
M=D            // Save the reqd. segment address in memory location 15
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@R15           // Reload the reqd. segment address where we have to pop from R15
A=M            // Get reqd. address in A register
M=D            // Save popped value (in D register) to the reqd. memory segment location
(Square.incSize$IF_FALSE0)
// For push
@0
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
@LCL
D=M
// Return Address is saved 5 memory addresses behind LCL. Get it and save it in R15
@5
A=D-A
D=M
@R15
M=D
// Reposition the return value for the caller
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@ARG
A=M
M=D
// Reposition the SP of the caller to one address ahead of return value
@ARG
D=M+1
@SP
M=D
// Restore that of the caller
@LCL           // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@THAT
M=D
// Restore THIS of the caller
@LCL           // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@THIS
M=D
// Restore ARG of the caller
@LCL           // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@ARG
M=D
// Restore LCL of the caller
@LCL           // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@LCL
M=D
// Goes to the caller's return address
@R15
A=M
0;JMP
(Square.decSize)
// For push
@ARG // Load segment pointer
D=M            // Store segment starting address in D
@0        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// For pop
// C_POP pointer 0
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@R3  // Load segment pointer
M=D            // Save popped value (in D register) to the reqd. memory segment (static/pointer) location
// For push
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@2        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// For push
@2
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
@SP
M=M-1 // SP = SP - 1
A=M   // A = SP
D=M   // Save first value at top of stack in D
A=A-1 // Point to second value from top of stack
D=M-D // Apply operator(-) on first value in D and second value pointed to by A in memory
@DECIDE_OUTPUT102
D;JGT
D=0
@SAVE_OUTPUT102
0;JMP
(DECIDE_OUTPUT102)
D=-1
(SAVE_OUTPUT102)
@SP
A=M-1
M=D // Save result 
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@Square.decSize$IF_TRUE0
D;JNE
@Square.decSize$IF_FALSE0
0;JMP
(Square.decSize$IF_TRUE0)
// For push
@R3 // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Pushing return address onto the stack for function Square.decSize
@Square.decSize$ret.1
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Pushing LCL, ARG, THIS and THAT of the caller
// Caller's state saved for segment local 
@LCL // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment argument 
@ARG // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment this 
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment that 
@THAT // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Reposition ARG for callee
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
// Repositon LCL for callee
@SP
D=M
@LCL
M=D
// Goto callee function
@Square.erase
0;JMP
//Continue execution from the current function line
(Square.decSize$ret.1)
// For pop
// C_POP temp 0
@R5  // Load segment pointer
D=A            // Store segment starting address in A for temp segment
@0        // Load index from starting address
D=D+A          // Store Starting address + index in D
@R15           // General purpose R15 register used to save the segment address where we will pop
M=D            // Save the reqd. segment address in memory location 15
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@R15           // Reload the reqd. segment address where we have to pop from R15
A=M            // Get reqd. address in A register
M=D            // Save popped value (in D register) to the reqd. memory segment location
// For push
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@2        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// For push
@2
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
@SP
M=M-1 // SP = SP - 1
A=M   // A = SP
D=M   // Save first value at top of stack in D
A=A-1 // Point to second value from top of stack
D=M-D // Apply operator(-) on first value in D and second value pointed to by A in memory
M=D // Save result 
// For pop
// C_POP this 2
@THIS  // Load segment pointer
D=M            // Store segment starting address in D
@2        // Load index from starting address
D=D+A          // Store Starting address + index in D
@R15           // General purpose R15 register used to save the segment address where we will pop
M=D            // Save the reqd. segment address in memory location 15
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@R15           // Reload the reqd. segment address where we have to pop from R15
A=M            // Get reqd. address in A register
M=D            // Save popped value (in D register) to the reqd. memory segment location
// For push
@R3 // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Pushing return address onto the stack for function Square.decSize
@Square.decSize$ret.2
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Pushing LCL, ARG, THIS and THAT of the caller
// Caller's state saved for segment local 
@LCL // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment argument 
@ARG // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment this 
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment that 
@THAT // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Reposition ARG for callee
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
// Repositon LCL for callee
@SP
D=M
@LCL
M=D
// Goto callee function
@Square.draw
0;JMP
//Continue execution from the current function line
(Square.decSize$ret.2)
// For pop
// C_POP temp 0
@R5  // Load segment pointer
D=A            // Store segment starting address in A for temp segment
@0        // Load index from starting address
D=D+A          // Store Starting address + index in D
@R15           // General purpose R15 register used to save the segment address where we will pop
M=D            // Save the reqd. segment address in memory location 15
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@R15           // Reload the reqd. segment address where we have to pop from R15
A=M            // Get reqd. address in A register
M=D            // Save popped value (in D register) to the reqd. memory segment location
(Square.decSize$IF_FALSE0)
// For push
@0
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
@LCL
D=M
// Return Address is saved 5 memory addresses behind LCL. Get it and save it in R15
@5
A=D-A
D=M
@R15
M=D
// Reposition the return value for the caller
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@ARG
A=M
M=D
// Reposition the SP of the caller to one address ahead of return value
@ARG
D=M+1
@SP
M=D
// Restore that of the caller
@LCL           // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@THAT
M=D
// Restore THIS of the caller
@LCL           // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@THIS
M=D
// Restore ARG of the caller
@LCL           // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@ARG
M=D
// Restore LCL of the caller
@LCL           // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@LCL
M=D
// Goes to the caller's return address
@R15
A=M
0;JMP
(Square.moveUp)
// For push
@ARG // Load segment pointer
D=M            // Store segment starting address in D
@0        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// For pop
// C_POP pointer 0
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@R3  // Load segment pointer
M=D            // Save popped value (in D register) to the reqd. memory segment (static/pointer) location
// For push
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@1        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// For push
@1
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
@SP
M=M-1 // SP = SP - 1
A=M   // A = SP
D=M   // Save first value at top of stack in D
A=A-1 // Point to second value from top of stack
D=M-D // Apply operator(-) on first value in D and second value pointed to by A in memory
@DECIDE_OUTPUT124
D;JGT
D=0
@SAVE_OUTPUT124
0;JMP
(DECIDE_OUTPUT124)
D=-1
(SAVE_OUTPUT124)
@SP
A=M-1
M=D // Save result 
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@Square.moveUp$IF_TRUE0
D;JNE
@Square.moveUp$IF_FALSE0
0;JMP
(Square.moveUp$IF_TRUE0)
// For push
@0
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Pushing return address onto the stack for function Square.moveUp
@Square.moveUp$ret.1
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Pushing LCL, ARG, THIS and THAT of the caller
// Caller's state saved for segment local 
@LCL // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment argument 
@ARG // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment this 
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment that 
@THAT // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Reposition ARG for callee
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
// Repositon LCL for callee
@SP
D=M
@LCL
M=D
// Goto callee function
@Screen.setColor
0;JMP
//Continue execution from the current function line
(Square.moveUp$ret.1)
// For pop
// C_POP temp 0
@R5  // Load segment pointer
D=A            // Store segment starting address in A for temp segment
@0        // Load index from starting address
D=D+A          // Store Starting address + index in D
@R15           // General purpose R15 register used to save the segment address where we will pop
M=D            // Save the reqd. segment address in memory location 15
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@R15           // Reload the reqd. segment address where we have to pop from R15
A=M            // Get reqd. address in A register
M=D            // Save popped value (in D register) to the reqd. memory segment location
// For push
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@0        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// For push
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@1        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// For push
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@2        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
@SP
M=M-1 // SP = SP - 1
A=M   // A = SP
D=M   // Save first value at top of stack in D
A=A-1 // Point to second value from top of stack
D=M+D // Apply operator(+) on first value in D and second value pointed to by A in memory
M=D // Save result 
// For push
@1
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
@SP
M=M-1 // SP = SP - 1
A=M   // A = SP
D=M   // Save first value at top of stack in D
A=A-1 // Point to second value from top of stack
D=M-D // Apply operator(-) on first value in D and second value pointed to by A in memory
M=D // Save result 
// For push
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@0        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// For push
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@2        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
@SP
M=M-1 // SP = SP - 1
A=M   // A = SP
D=M   // Save first value at top of stack in D
A=A-1 // Point to second value from top of stack
D=M+D // Apply operator(+) on first value in D and second value pointed to by A in memory
M=D // Save result 
// For push
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@1        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// For push
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@2        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
@SP
M=M-1 // SP = SP - 1
A=M   // A = SP
D=M   // Save first value at top of stack in D
A=A-1 // Point to second value from top of stack
D=M+D // Apply operator(+) on first value in D and second value pointed to by A in memory
M=D // Save result 
// Pushing return address onto the stack for function Square.moveUp
@Square.moveUp$ret.2
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Pushing LCL, ARG, THIS and THAT of the caller
// Caller's state saved for segment local 
@LCL // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment argument 
@ARG // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment this 
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment that 
@THAT // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Reposition ARG for callee
@SP
D=M
@5
D=D-A
@4
D=D-A
@ARG
M=D
// Repositon LCL for callee
@SP
D=M
@LCL
M=D
// Goto callee function
@Screen.drawRectangle
0;JMP
//Continue execution from the current function line
(Square.moveUp$ret.2)
// For pop
// C_POP temp 0
@R5  // Load segment pointer
D=A            // Store segment starting address in A for temp segment
@0        // Load index from starting address
D=D+A          // Store Starting address + index in D
@R15           // General purpose R15 register used to save the segment address where we will pop
M=D            // Save the reqd. segment address in memory location 15
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@R15           // Reload the reqd. segment address where we have to pop from R15
A=M            // Get reqd. address in A register
M=D            // Save popped value (in D register) to the reqd. memory segment location
// For push
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@1        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// For push
@2
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
@SP
M=M-1 // SP = SP - 1
A=M   // A = SP
D=M   // Save first value at top of stack in D
A=A-1 // Point to second value from top of stack
D=M-D // Apply operator(-) on first value in D and second value pointed to by A in memory
M=D // Save result 
// For pop
// C_POP this 1
@THIS  // Load segment pointer
D=M            // Store segment starting address in D
@1        // Load index from starting address
D=D+A          // Store Starting address + index in D
@R15           // General purpose R15 register used to save the segment address where we will pop
M=D            // Save the reqd. segment address in memory location 15
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@R15           // Reload the reqd. segment address where we have to pop from R15
A=M            // Get reqd. address in A register
M=D            // Save popped value (in D register) to the reqd. memory segment location
// For push
@0
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
@SP
A=M
A=A-1
D=M
D=!D
M=D // Save result 
// Pushing return address onto the stack for function Square.moveUp
@Square.moveUp$ret.3
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Pushing LCL, ARG, THIS and THAT of the caller
// Caller's state saved for segment local 
@LCL // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment argument 
@ARG // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment this 
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment that 
@THAT // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Reposition ARG for callee
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
// Repositon LCL for callee
@SP
D=M
@LCL
M=D
// Goto callee function
@Screen.setColor
0;JMP
//Continue execution from the current function line
(Square.moveUp$ret.3)
// For pop
// C_POP temp 0
@R5  // Load segment pointer
D=A            // Store segment starting address in A for temp segment
@0        // Load index from starting address
D=D+A          // Store Starting address + index in D
@R15           // General purpose R15 register used to save the segment address where we will pop
M=D            // Save the reqd. segment address in memory location 15
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@R15           // Reload the reqd. segment address where we have to pop from R15
A=M            // Get reqd. address in A register
M=D            // Save popped value (in D register) to the reqd. memory segment location
// For push
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@0        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// For push
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@1        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// For push
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@0        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// For push
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@2        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
@SP
M=M-1 // SP = SP - 1
A=M   // A = SP
D=M   // Save first value at top of stack in D
A=A-1 // Point to second value from top of stack
D=M+D // Apply operator(+) on first value in D and second value pointed to by A in memory
M=D // Save result 
// For push
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@1        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// For push
@1
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
@SP
M=M-1 // SP = SP - 1
A=M   // A = SP
D=M   // Save first value at top of stack in D
A=A-1 // Point to second value from top of stack
D=M+D // Apply operator(+) on first value in D and second value pointed to by A in memory
M=D // Save result 
// Pushing return address onto the stack for function Square.moveUp
@Square.moveUp$ret.4
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Pushing LCL, ARG, THIS and THAT of the caller
// Caller's state saved for segment local 
@LCL // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment argument 
@ARG // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment this 
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment that 
@THAT // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Reposition ARG for callee
@SP
D=M
@5
D=D-A
@4
D=D-A
@ARG
M=D
// Repositon LCL for callee
@SP
D=M
@LCL
M=D
// Goto callee function
@Screen.drawRectangle
0;JMP
//Continue execution from the current function line
(Square.moveUp$ret.4)
// For pop
// C_POP temp 0
@R5  // Load segment pointer
D=A            // Store segment starting address in A for temp segment
@0        // Load index from starting address
D=D+A          // Store Starting address + index in D
@R15           // General purpose R15 register used to save the segment address where we will pop
M=D            // Save the reqd. segment address in memory location 15
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@R15           // Reload the reqd. segment address where we have to pop from R15
A=M            // Get reqd. address in A register
M=D            // Save popped value (in D register) to the reqd. memory segment location
(Square.moveUp$IF_FALSE0)
// For push
@0
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
@LCL
D=M
// Return Address is saved 5 memory addresses behind LCL. Get it and save it in R15
@5
A=D-A
D=M
@R15
M=D
// Reposition the return value for the caller
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@ARG
A=M
M=D
// Reposition the SP of the caller to one address ahead of return value
@ARG
D=M+1
@SP
M=D
// Restore that of the caller
@LCL           // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@THAT
M=D
// Restore THIS of the caller
@LCL           // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@THIS
M=D
// Restore ARG of the caller
@LCL           // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@ARG
M=D
// Restore LCL of the caller
@LCL           // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@LCL
M=D
// Goes to the caller's return address
@R15
A=M
0;JMP
(Square.moveDown)
// For push
@ARG // Load segment pointer
D=M            // Store segment starting address in D
@0        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// For pop
// C_POP pointer 0
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@R3  // Load segment pointer
M=D            // Save popped value (in D register) to the reqd. memory segment (static/pointer) location
// For push
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@1        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// For push
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@2        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
@SP
M=M-1 // SP = SP - 1
A=M   // A = SP
D=M   // Save first value at top of stack in D
A=A-1 // Point to second value from top of stack
D=M+D // Apply operator(+) on first value in D and second value pointed to by A in memory
M=D // Save result 
// For push
@254
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
@SP
M=M-1 // SP = SP - 1
A=M   // A = SP
D=M   // Save first value at top of stack in D
A=A-1 // Point to second value from top of stack
D=M-D // Apply operator(-) on first value in D and second value pointed to by A in memory
@DECIDE_OUTPUT173
D;JLT
D=0
@SAVE_OUTPUT173
0;JMP
(DECIDE_OUTPUT173)
D=-1
(SAVE_OUTPUT173)
@SP
A=M-1
M=D // Save result 
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@Square.moveDown$IF_TRUE0
D;JNE
@Square.moveDown$IF_FALSE0
0;JMP
(Square.moveDown$IF_TRUE0)
// For push
@0
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Pushing return address onto the stack for function Square.moveDown
@Square.moveDown$ret.1
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Pushing LCL, ARG, THIS and THAT of the caller
// Caller's state saved for segment local 
@LCL // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment argument 
@ARG // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment this 
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment that 
@THAT // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Reposition ARG for callee
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
// Repositon LCL for callee
@SP
D=M
@LCL
M=D
// Goto callee function
@Screen.setColor
0;JMP
//Continue execution from the current function line
(Square.moveDown$ret.1)
// For pop
// C_POP temp 0
@R5  // Load segment pointer
D=A            // Store segment starting address in A for temp segment
@0        // Load index from starting address
D=D+A          // Store Starting address + index in D
@R15           // General purpose R15 register used to save the segment address where we will pop
M=D            // Save the reqd. segment address in memory location 15
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@R15           // Reload the reqd. segment address where we have to pop from R15
A=M            // Get reqd. address in A register
M=D            // Save popped value (in D register) to the reqd. memory segment location
// For push
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@0        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// For push
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@1        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// For push
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@0        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// For push
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@2        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
@SP
M=M-1 // SP = SP - 1
A=M   // A = SP
D=M   // Save first value at top of stack in D
A=A-1 // Point to second value from top of stack
D=M+D // Apply operator(+) on first value in D and second value pointed to by A in memory
M=D // Save result 
// For push
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@1        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// For push
@1
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
@SP
M=M-1 // SP = SP - 1
A=M   // A = SP
D=M   // Save first value at top of stack in D
A=A-1 // Point to second value from top of stack
D=M+D // Apply operator(+) on first value in D and second value pointed to by A in memory
M=D // Save result 
// Pushing return address onto the stack for function Square.moveDown
@Square.moveDown$ret.2
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Pushing LCL, ARG, THIS and THAT of the caller
// Caller's state saved for segment local 
@LCL // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment argument 
@ARG // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment this 
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment that 
@THAT // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Reposition ARG for callee
@SP
D=M
@5
D=D-A
@4
D=D-A
@ARG
M=D
// Repositon LCL for callee
@SP
D=M
@LCL
M=D
// Goto callee function
@Screen.drawRectangle
0;JMP
//Continue execution from the current function line
(Square.moveDown$ret.2)
// For pop
// C_POP temp 0
@R5  // Load segment pointer
D=A            // Store segment starting address in A for temp segment
@0        // Load index from starting address
D=D+A          // Store Starting address + index in D
@R15           // General purpose R15 register used to save the segment address where we will pop
M=D            // Save the reqd. segment address in memory location 15
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@R15           // Reload the reqd. segment address where we have to pop from R15
A=M            // Get reqd. address in A register
M=D            // Save popped value (in D register) to the reqd. memory segment location
// For push
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@1        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// For push
@2
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
@SP
M=M-1 // SP = SP - 1
A=M   // A = SP
D=M   // Save first value at top of stack in D
A=A-1 // Point to second value from top of stack
D=M+D // Apply operator(+) on first value in D and second value pointed to by A in memory
M=D // Save result 
// For pop
// C_POP this 1
@THIS  // Load segment pointer
D=M            // Store segment starting address in D
@1        // Load index from starting address
D=D+A          // Store Starting address + index in D
@R15           // General purpose R15 register used to save the segment address where we will pop
M=D            // Save the reqd. segment address in memory location 15
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@R15           // Reload the reqd. segment address where we have to pop from R15
A=M            // Get reqd. address in A register
M=D            // Save popped value (in D register) to the reqd. memory segment location
// For push
@0
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
@SP
A=M
A=A-1
D=M
D=!D
M=D // Save result 
// Pushing return address onto the stack for function Square.moveDown
@Square.moveDown$ret.3
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Pushing LCL, ARG, THIS and THAT of the caller
// Caller's state saved for segment local 
@LCL // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment argument 
@ARG // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment this 
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment that 
@THAT // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Reposition ARG for callee
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
// Repositon LCL for callee
@SP
D=M
@LCL
M=D
// Goto callee function
@Screen.setColor
0;JMP
//Continue execution from the current function line
(Square.moveDown$ret.3)
// For pop
// C_POP temp 0
@R5  // Load segment pointer
D=A            // Store segment starting address in A for temp segment
@0        // Load index from starting address
D=D+A          // Store Starting address + index in D
@R15           // General purpose R15 register used to save the segment address where we will pop
M=D            // Save the reqd. segment address in memory location 15
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@R15           // Reload the reqd. segment address where we have to pop from R15
A=M            // Get reqd. address in A register
M=D            // Save popped value (in D register) to the reqd. memory segment location
// For push
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@0        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// For push
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@1        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// For push
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@2        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
@SP
M=M-1 // SP = SP - 1
A=M   // A = SP
D=M   // Save first value at top of stack in D
A=A-1 // Point to second value from top of stack
D=M+D // Apply operator(+) on first value in D and second value pointed to by A in memory
M=D // Save result 
// For push
@1
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
@SP
M=M-1 // SP = SP - 1
A=M   // A = SP
D=M   // Save first value at top of stack in D
A=A-1 // Point to second value from top of stack
D=M-D // Apply operator(-) on first value in D and second value pointed to by A in memory
M=D // Save result 
// For push
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@0        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// For push
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@2        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
@SP
M=M-1 // SP = SP - 1
A=M   // A = SP
D=M   // Save first value at top of stack in D
A=A-1 // Point to second value from top of stack
D=M+D // Apply operator(+) on first value in D and second value pointed to by A in memory
M=D // Save result 
// For push
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@1        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// For push
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@2        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
@SP
M=M-1 // SP = SP - 1
A=M   // A = SP
D=M   // Save first value at top of stack in D
A=A-1 // Point to second value from top of stack
D=M+D // Apply operator(+) on first value in D and second value pointed to by A in memory
M=D // Save result 
// Pushing return address onto the stack for function Square.moveDown
@Square.moveDown$ret.4
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Pushing LCL, ARG, THIS and THAT of the caller
// Caller's state saved for segment local 
@LCL // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment argument 
@ARG // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment this 
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment that 
@THAT // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Reposition ARG for callee
@SP
D=M
@5
D=D-A
@4
D=D-A
@ARG
M=D
// Repositon LCL for callee
@SP
D=M
@LCL
M=D
// Goto callee function
@Screen.drawRectangle
0;JMP
//Continue execution from the current function line
(Square.moveDown$ret.4)
// For pop
// C_POP temp 0
@R5  // Load segment pointer
D=A            // Store segment starting address in A for temp segment
@0        // Load index from starting address
D=D+A          // Store Starting address + index in D
@R15           // General purpose R15 register used to save the segment address where we will pop
M=D            // Save the reqd. segment address in memory location 15
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@R15           // Reload the reqd. segment address where we have to pop from R15
A=M            // Get reqd. address in A register
M=D            // Save popped value (in D register) to the reqd. memory segment location
(Square.moveDown$IF_FALSE0)
// For push
@0
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
@LCL
D=M
// Return Address is saved 5 memory addresses behind LCL. Get it and save it in R15
@5
A=D-A
D=M
@R15
M=D
// Reposition the return value for the caller
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@ARG
A=M
M=D
// Reposition the SP of the caller to one address ahead of return value
@ARG
D=M+1
@SP
M=D
// Restore that of the caller
@LCL           // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@THAT
M=D
// Restore THIS of the caller
@LCL           // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@THIS
M=D
// Restore ARG of the caller
@LCL           // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@ARG
M=D
// Restore LCL of the caller
@LCL           // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@LCL
M=D
// Goes to the caller's return address
@R15
A=M
0;JMP
(Square.moveLeft)
// For push
@ARG // Load segment pointer
D=M            // Store segment starting address in D
@0        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// For pop
// C_POP pointer 0
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@R3  // Load segment pointer
M=D            // Save popped value (in D register) to the reqd. memory segment (static/pointer) location
// For push
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@0        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// For push
@1
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
@SP
M=M-1 // SP = SP - 1
A=M   // A = SP
D=M   // Save first value at top of stack in D
A=A-1 // Point to second value from top of stack
D=M-D // Apply operator(-) on first value in D and second value pointed to by A in memory
@DECIDE_OUTPUT220
D;JGT
D=0
@SAVE_OUTPUT220
0;JMP
(DECIDE_OUTPUT220)
D=-1
(SAVE_OUTPUT220)
@SP
A=M-1
M=D // Save result 
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@Square.moveLeft$IF_TRUE0
D;JNE
@Square.moveLeft$IF_FALSE0
0;JMP
(Square.moveLeft$IF_TRUE0)
// For push
@0
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Pushing return address onto the stack for function Square.moveLeft
@Square.moveLeft$ret.1
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Pushing LCL, ARG, THIS and THAT of the caller
// Caller's state saved for segment local 
@LCL // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment argument 
@ARG // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment this 
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment that 
@THAT // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Reposition ARG for callee
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
// Repositon LCL for callee
@SP
D=M
@LCL
M=D
// Goto callee function
@Screen.setColor
0;JMP
//Continue execution from the current function line
(Square.moveLeft$ret.1)
// For pop
// C_POP temp 0
@R5  // Load segment pointer
D=A            // Store segment starting address in A for temp segment
@0        // Load index from starting address
D=D+A          // Store Starting address + index in D
@R15           // General purpose R15 register used to save the segment address where we will pop
M=D            // Save the reqd. segment address in memory location 15
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@R15           // Reload the reqd. segment address where we have to pop from R15
A=M            // Get reqd. address in A register
M=D            // Save popped value (in D register) to the reqd. memory segment location
// For push
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@0        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// For push
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@2        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
@SP
M=M-1 // SP = SP - 1
A=M   // A = SP
D=M   // Save first value at top of stack in D
A=A-1 // Point to second value from top of stack
D=M+D // Apply operator(+) on first value in D and second value pointed to by A in memory
M=D // Save result 
// For push
@1
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
@SP
M=M-1 // SP = SP - 1
A=M   // A = SP
D=M   // Save first value at top of stack in D
A=A-1 // Point to second value from top of stack
D=M-D // Apply operator(-) on first value in D and second value pointed to by A in memory
M=D // Save result 
// For push
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@1        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// For push
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@0        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// For push
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@2        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
@SP
M=M-1 // SP = SP - 1
A=M   // A = SP
D=M   // Save first value at top of stack in D
A=A-1 // Point to second value from top of stack
D=M+D // Apply operator(+) on first value in D and second value pointed to by A in memory
M=D // Save result 
// For push
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@1        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// For push
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@2        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
@SP
M=M-1 // SP = SP - 1
A=M   // A = SP
D=M   // Save first value at top of stack in D
A=A-1 // Point to second value from top of stack
D=M+D // Apply operator(+) on first value in D and second value pointed to by A in memory
M=D // Save result 
// Pushing return address onto the stack for function Square.moveLeft
@Square.moveLeft$ret.2
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Pushing LCL, ARG, THIS and THAT of the caller
// Caller's state saved for segment local 
@LCL // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment argument 
@ARG // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment this 
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment that 
@THAT // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Reposition ARG for callee
@SP
D=M
@5
D=D-A
@4
D=D-A
@ARG
M=D
// Repositon LCL for callee
@SP
D=M
@LCL
M=D
// Goto callee function
@Screen.drawRectangle
0;JMP
//Continue execution from the current function line
(Square.moveLeft$ret.2)
// For pop
// C_POP temp 0
@R5  // Load segment pointer
D=A            // Store segment starting address in A for temp segment
@0        // Load index from starting address
D=D+A          // Store Starting address + index in D
@R15           // General purpose R15 register used to save the segment address where we will pop
M=D            // Save the reqd. segment address in memory location 15
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@R15           // Reload the reqd. segment address where we have to pop from R15
A=M            // Get reqd. address in A register
M=D            // Save popped value (in D register) to the reqd. memory segment location
// For push
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@0        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// For push
@2
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
@SP
M=M-1 // SP = SP - 1
A=M   // A = SP
D=M   // Save first value at top of stack in D
A=A-1 // Point to second value from top of stack
D=M-D // Apply operator(-) on first value in D and second value pointed to by A in memory
M=D // Save result 
// For pop
// C_POP this 0
@THIS  // Load segment pointer
D=M            // Store segment starting address in D
@0        // Load index from starting address
D=D+A          // Store Starting address + index in D
@R15           // General purpose R15 register used to save the segment address where we will pop
M=D            // Save the reqd. segment address in memory location 15
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@R15           // Reload the reqd. segment address where we have to pop from R15
A=M            // Get reqd. address in A register
M=D            // Save popped value (in D register) to the reqd. memory segment location
// For push
@0
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
@SP
A=M
A=A-1
D=M
D=!D
M=D // Save result 
// Pushing return address onto the stack for function Square.moveLeft
@Square.moveLeft$ret.3
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Pushing LCL, ARG, THIS and THAT of the caller
// Caller's state saved for segment local 
@LCL // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment argument 
@ARG // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment this 
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment that 
@THAT // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Reposition ARG for callee
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
// Repositon LCL for callee
@SP
D=M
@LCL
M=D
// Goto callee function
@Screen.setColor
0;JMP
//Continue execution from the current function line
(Square.moveLeft$ret.3)
// For pop
// C_POP temp 0
@R5  // Load segment pointer
D=A            // Store segment starting address in A for temp segment
@0        // Load index from starting address
D=D+A          // Store Starting address + index in D
@R15           // General purpose R15 register used to save the segment address where we will pop
M=D            // Save the reqd. segment address in memory location 15
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@R15           // Reload the reqd. segment address where we have to pop from R15
A=M            // Get reqd. address in A register
M=D            // Save popped value (in D register) to the reqd. memory segment location
// For push
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@0        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// For push
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@1        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// For push
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@0        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// For push
@1
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
@SP
M=M-1 // SP = SP - 1
A=M   // A = SP
D=M   // Save first value at top of stack in D
A=A-1 // Point to second value from top of stack
D=M+D // Apply operator(+) on first value in D and second value pointed to by A in memory
M=D // Save result 
// For push
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@1        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// For push
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@2        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
@SP
M=M-1 // SP = SP - 1
A=M   // A = SP
D=M   // Save first value at top of stack in D
A=A-1 // Point to second value from top of stack
D=M+D // Apply operator(+) on first value in D and second value pointed to by A in memory
M=D // Save result 
// Pushing return address onto the stack for function Square.moveLeft
@Square.moveLeft$ret.4
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Pushing LCL, ARG, THIS and THAT of the caller
// Caller's state saved for segment local 
@LCL // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment argument 
@ARG // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment this 
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment that 
@THAT // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Reposition ARG for callee
@SP
D=M
@5
D=D-A
@4
D=D-A
@ARG
M=D
// Repositon LCL for callee
@SP
D=M
@LCL
M=D
// Goto callee function
@Screen.drawRectangle
0;JMP
//Continue execution from the current function line
(Square.moveLeft$ret.4)
// For pop
// C_POP temp 0
@R5  // Load segment pointer
D=A            // Store segment starting address in A for temp segment
@0        // Load index from starting address
D=D+A          // Store Starting address + index in D
@R15           // General purpose R15 register used to save the segment address where we will pop
M=D            // Save the reqd. segment address in memory location 15
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@R15           // Reload the reqd. segment address where we have to pop from R15
A=M            // Get reqd. address in A register
M=D            // Save popped value (in D register) to the reqd. memory segment location
(Square.moveLeft$IF_FALSE0)
// For push
@0
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
@LCL
D=M
// Return Address is saved 5 memory addresses behind LCL. Get it and save it in R15
@5
A=D-A
D=M
@R15
M=D
// Reposition the return value for the caller
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@ARG
A=M
M=D
// Reposition the SP of the caller to one address ahead of return value
@ARG
D=M+1
@SP
M=D
// Restore that of the caller
@LCL           // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@THAT
M=D
// Restore THIS of the caller
@LCL           // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@THIS
M=D
// Restore ARG of the caller
@LCL           // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@ARG
M=D
// Restore LCL of the caller
@LCL           // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@LCL
M=D
// Goes to the caller's return address
@R15
A=M
0;JMP
(Square.moveRight)
// For push
@ARG // Load segment pointer
D=M            // Store segment starting address in D
@0        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// For pop
// C_POP pointer 0
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@R3  // Load segment pointer
M=D            // Save popped value (in D register) to the reqd. memory segment (static/pointer) location
// For push
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@0        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// For push
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@2        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
@SP
M=M-1 // SP = SP - 1
A=M   // A = SP
D=M   // Save first value at top of stack in D
A=A-1 // Point to second value from top of stack
D=M+D // Apply operator(+) on first value in D and second value pointed to by A in memory
M=D // Save result 
// For push
@510
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
@SP
M=M-1 // SP = SP - 1
A=M   // A = SP
D=M   // Save first value at top of stack in D
A=A-1 // Point to second value from top of stack
D=M-D // Apply operator(-) on first value in D and second value pointed to by A in memory
@DECIDE_OUTPUT269
D;JLT
D=0
@SAVE_OUTPUT269
0;JMP
(DECIDE_OUTPUT269)
D=-1
(SAVE_OUTPUT269)
@SP
A=M-1
M=D // Save result 
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@Square.moveRight$IF_TRUE0
D;JNE
@Square.moveRight$IF_FALSE0
0;JMP
(Square.moveRight$IF_TRUE0)
// For push
@0
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Pushing return address onto the stack for function Square.moveRight
@Square.moveRight$ret.1
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Pushing LCL, ARG, THIS and THAT of the caller
// Caller's state saved for segment local 
@LCL // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment argument 
@ARG // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment this 
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment that 
@THAT // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Reposition ARG for callee
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
// Repositon LCL for callee
@SP
D=M
@LCL
M=D
// Goto callee function
@Screen.setColor
0;JMP
//Continue execution from the current function line
(Square.moveRight$ret.1)
// For pop
// C_POP temp 0
@R5  // Load segment pointer
D=A            // Store segment starting address in A for temp segment
@0        // Load index from starting address
D=D+A          // Store Starting address + index in D
@R15           // General purpose R15 register used to save the segment address where we will pop
M=D            // Save the reqd. segment address in memory location 15
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@R15           // Reload the reqd. segment address where we have to pop from R15
A=M            // Get reqd. address in A register
M=D            // Save popped value (in D register) to the reqd. memory segment location
// For push
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@0        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// For push
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@1        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// For push
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@0        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// For push
@1
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
@SP
M=M-1 // SP = SP - 1
A=M   // A = SP
D=M   // Save first value at top of stack in D
A=A-1 // Point to second value from top of stack
D=M+D // Apply operator(+) on first value in D and second value pointed to by A in memory
M=D // Save result 
// For push
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@1        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// For push
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@2        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
@SP
M=M-1 // SP = SP - 1
A=M   // A = SP
D=M   // Save first value at top of stack in D
A=A-1 // Point to second value from top of stack
D=M+D // Apply operator(+) on first value in D and second value pointed to by A in memory
M=D // Save result 
// Pushing return address onto the stack for function Square.moveRight
@Square.moveRight$ret.2
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Pushing LCL, ARG, THIS and THAT of the caller
// Caller's state saved for segment local 
@LCL // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment argument 
@ARG // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment this 
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment that 
@THAT // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Reposition ARG for callee
@SP
D=M
@5
D=D-A
@4
D=D-A
@ARG
M=D
// Repositon LCL for callee
@SP
D=M
@LCL
M=D
// Goto callee function
@Screen.drawRectangle
0;JMP
//Continue execution from the current function line
(Square.moveRight$ret.2)
// For pop
// C_POP temp 0
@R5  // Load segment pointer
D=A            // Store segment starting address in A for temp segment
@0        // Load index from starting address
D=D+A          // Store Starting address + index in D
@R15           // General purpose R15 register used to save the segment address where we will pop
M=D            // Save the reqd. segment address in memory location 15
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@R15           // Reload the reqd. segment address where we have to pop from R15
A=M            // Get reqd. address in A register
M=D            // Save popped value (in D register) to the reqd. memory segment location
// For push
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@0        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// For push
@2
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
@SP
M=M-1 // SP = SP - 1
A=M   // A = SP
D=M   // Save first value at top of stack in D
A=A-1 // Point to second value from top of stack
D=M+D // Apply operator(+) on first value in D and second value pointed to by A in memory
M=D // Save result 
// For pop
// C_POP this 0
@THIS  // Load segment pointer
D=M            // Store segment starting address in D
@0        // Load index from starting address
D=D+A          // Store Starting address + index in D
@R15           // General purpose R15 register used to save the segment address where we will pop
M=D            // Save the reqd. segment address in memory location 15
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@R15           // Reload the reqd. segment address where we have to pop from R15
A=M            // Get reqd. address in A register
M=D            // Save popped value (in D register) to the reqd. memory segment location
// For push
@0
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
@SP
A=M
A=A-1
D=M
D=!D
M=D // Save result 
// Pushing return address onto the stack for function Square.moveRight
@Square.moveRight$ret.3
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Pushing LCL, ARG, THIS and THAT of the caller
// Caller's state saved for segment local 
@LCL // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment argument 
@ARG // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment this 
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment that 
@THAT // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Reposition ARG for callee
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
// Repositon LCL for callee
@SP
D=M
@LCL
M=D
// Goto callee function
@Screen.setColor
0;JMP
//Continue execution from the current function line
(Square.moveRight$ret.3)
// For pop
// C_POP temp 0
@R5  // Load segment pointer
D=A            // Store segment starting address in A for temp segment
@0        // Load index from starting address
D=D+A          // Store Starting address + index in D
@R15           // General purpose R15 register used to save the segment address where we will pop
M=D            // Save the reqd. segment address in memory location 15
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@R15           // Reload the reqd. segment address where we have to pop from R15
A=M            // Get reqd. address in A register
M=D            // Save popped value (in D register) to the reqd. memory segment location
// For push
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@0        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// For push
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@2        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
@SP
M=M-1 // SP = SP - 1
A=M   // A = SP
D=M   // Save first value at top of stack in D
A=A-1 // Point to second value from top of stack
D=M+D // Apply operator(+) on first value in D and second value pointed to by A in memory
M=D // Save result 
// For push
@1
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
@SP
M=M-1 // SP = SP - 1
A=M   // A = SP
D=M   // Save first value at top of stack in D
A=A-1 // Point to second value from top of stack
D=M-D // Apply operator(-) on first value in D and second value pointed to by A in memory
M=D // Save result 
// For push
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@1        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// For push
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@0        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// For push
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@2        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
@SP
M=M-1 // SP = SP - 1
A=M   // A = SP
D=M   // Save first value at top of stack in D
A=A-1 // Point to second value from top of stack
D=M+D // Apply operator(+) on first value in D and second value pointed to by A in memory
M=D // Save result 
// For push
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@1        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// For push
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@2        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
@SP
M=M-1 // SP = SP - 1
A=M   // A = SP
D=M   // Save first value at top of stack in D
A=A-1 // Point to second value from top of stack
D=M+D // Apply operator(+) on first value in D and second value pointed to by A in memory
M=D // Save result 
// Pushing return address onto the stack for function Square.moveRight
@Square.moveRight$ret.4
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Pushing LCL, ARG, THIS and THAT of the caller
// Caller's state saved for segment local 
@LCL // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment argument 
@ARG // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment this 
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment that 
@THAT // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Reposition ARG for callee
@SP
D=M
@5
D=D-A
@4
D=D-A
@ARG
M=D
// Repositon LCL for callee
@SP
D=M
@LCL
M=D
// Goto callee function
@Screen.drawRectangle
0;JMP
//Continue execution from the current function line
(Square.moveRight$ret.4)
// For pop
// C_POP temp 0
@R5  // Load segment pointer
D=A            // Store segment starting address in A for temp segment
@0        // Load index from starting address
D=D+A          // Store Starting address + index in D
@R15           // General purpose R15 register used to save the segment address where we will pop
M=D            // Save the reqd. segment address in memory location 15
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@R15           // Reload the reqd. segment address where we have to pop from R15
A=M            // Get reqd. address in A register
M=D            // Save popped value (in D register) to the reqd. memory segment location
(Square.moveRight$IF_FALSE0)
// For push
@0
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
@LCL
D=M
// Return Address is saved 5 memory addresses behind LCL. Get it and save it in R15
@5
A=D-A
D=M
@R15
M=D
// Reposition the return value for the caller
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@ARG
A=M
M=D
// Reposition the SP of the caller to one address ahead of return value
@ARG
D=M+1
@SP
M=D
// Restore that of the caller
@LCL           // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@THAT
M=D
// Restore THIS of the caller
@LCL           // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@THIS
M=D
// Restore ARG of the caller
@LCL           // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@ARG
M=D
// Restore LCL of the caller
@LCL           // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@LCL
M=D
// Goes to the caller's return address
@R15
A=M
0;JMP
(Main.main)
//Calling push constant 0 numVars times to initialize all local variables to 0
@0
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Pushing return address onto the stack for function Main.main
@Main.main$ret.1
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Pushing LCL, ARG, THIS and THAT of the caller
// Caller's state saved for segment local 
@LCL // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment argument 
@ARG // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment this 
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment that 
@THAT // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Reposition ARG for callee
@SP
D=M
@5
D=D-A
@0
D=D-A
@ARG
M=D
// Repositon LCL for callee
@SP
D=M
@LCL
M=D
// Goto callee function
@SquareGame.new
0;JMP
//Continue execution from the current function line
(Main.main$ret.1)
// For pop
// C_POP local 0
@LCL  // Load segment pointer
D=M            // Store segment starting address in D
@0        // Load index from starting address
D=D+A          // Store Starting address + index in D
@R15           // General purpose R15 register used to save the segment address where we will pop
M=D            // Save the reqd. segment address in memory location 15
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@R15           // Reload the reqd. segment address where we have to pop from R15
A=M            // Get reqd. address in A register
M=D            // Save popped value (in D register) to the reqd. memory segment location
// For push
@LCL // Load segment pointer
D=M            // Store segment starting address in D
@0        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Pushing return address onto the stack for function Main.main
@Main.main$ret.2
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Pushing LCL, ARG, THIS and THAT of the caller
// Caller's state saved for segment local 
@LCL // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment argument 
@ARG // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment this 
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment that 
@THAT // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Reposition ARG for callee
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
// Repositon LCL for callee
@SP
D=M
@LCL
M=D
// Goto callee function
@SquareGame.run
0;JMP
//Continue execution from the current function line
(Main.main$ret.2)
// For pop
// C_POP temp 0
@R5  // Load segment pointer
D=A            // Store segment starting address in A for temp segment
@0        // Load index from starting address
D=D+A          // Store Starting address + index in D
@R15           // General purpose R15 register used to save the segment address where we will pop
M=D            // Save the reqd. segment address in memory location 15
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@R15           // Reload the reqd. segment address where we have to pop from R15
A=M            // Get reqd. address in A register
M=D            // Save popped value (in D register) to the reqd. memory segment location
// For push
@LCL // Load segment pointer
D=M            // Store segment starting address in D
@0        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Pushing return address onto the stack for function Main.main
@Main.main$ret.3
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Pushing LCL, ARG, THIS and THAT of the caller
// Caller's state saved for segment local 
@LCL // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment argument 
@ARG // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment this 
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment that 
@THAT // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Reposition ARG for callee
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
// Repositon LCL for callee
@SP
D=M
@LCL
M=D
// Goto callee function
@SquareGame.dispose
0;JMP
//Continue execution from the current function line
(Main.main$ret.3)
// For pop
// C_POP temp 0
@R5  // Load segment pointer
D=A            // Store segment starting address in A for temp segment
@0        // Load index from starting address
D=D+A          // Store Starting address + index in D
@R15           // General purpose R15 register used to save the segment address where we will pop
M=D            // Save the reqd. segment address in memory location 15
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@R15           // Reload the reqd. segment address where we have to pop from R15
A=M            // Get reqd. address in A register
M=D            // Save popped value (in D register) to the reqd. memory segment location
// For push
@0
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
@LCL
D=M
// Return Address is saved 5 memory addresses behind LCL. Get it and save it in R15
@5
A=D-A
D=M
@R15
M=D
// Reposition the return value for the caller
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@ARG
A=M
M=D
// Reposition the SP of the caller to one address ahead of return value
@ARG
D=M+1
@SP
M=D
// Restore that of the caller
@LCL           // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@THAT
M=D
// Restore THIS of the caller
@LCL           // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@THIS
M=D
// Restore ARG of the caller
@LCL           // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@ARG
M=D
// Restore LCL of the caller
@LCL           // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@LCL
M=D
// Goes to the caller's return address
@R15
A=M
0;JMP
(SquareGame.new)
// For push
@2
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Pushing return address onto the stack for function SquareGame.new
@SquareGame.new$ret.1
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Pushing LCL, ARG, THIS and THAT of the caller
// Caller's state saved for segment local 
@LCL // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment argument 
@ARG // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment this 
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment that 
@THAT // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Reposition ARG for callee
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
// Repositon LCL for callee
@SP
D=M
@LCL
M=D
// Goto callee function
@Memory.alloc
0;JMP
//Continue execution from the current function line
(SquareGame.new$ret.1)
// For pop
// C_POP pointer 0
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@R3  // Load segment pointer
M=D            // Save popped value (in D register) to the reqd. memory segment (static/pointer) location
// For push
@0
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// For push
@0
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// For push
@30
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Pushing return address onto the stack for function SquareGame.new
@SquareGame.new$ret.2
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Pushing LCL, ARG, THIS and THAT of the caller
// Caller's state saved for segment local 
@LCL // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment argument 
@ARG // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment this 
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment that 
@THAT // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Reposition ARG for callee
@SP
D=M
@5
D=D-A
@3
D=D-A
@ARG
M=D
// Repositon LCL for callee
@SP
D=M
@LCL
M=D
// Goto callee function
@Square.new
0;JMP
//Continue execution from the current function line
(SquareGame.new$ret.2)
// For pop
// C_POP this 0
@THIS  // Load segment pointer
D=M            // Store segment starting address in D
@0        // Load index from starting address
D=D+A          // Store Starting address + index in D
@R15           // General purpose R15 register used to save the segment address where we will pop
M=D            // Save the reqd. segment address in memory location 15
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@R15           // Reload the reqd. segment address where we have to pop from R15
A=M            // Get reqd. address in A register
M=D            // Save popped value (in D register) to the reqd. memory segment location
// For push
@0
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// For pop
// C_POP this 1
@THIS  // Load segment pointer
D=M            // Store segment starting address in D
@1        // Load index from starting address
D=D+A          // Store Starting address + index in D
@R15           // General purpose R15 register used to save the segment address where we will pop
M=D            // Save the reqd. segment address in memory location 15
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@R15           // Reload the reqd. segment address where we have to pop from R15
A=M            // Get reqd. address in A register
M=D            // Save popped value (in D register) to the reqd. memory segment location
// For push
@R3 // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
@LCL
D=M
// Return Address is saved 5 memory addresses behind LCL. Get it and save it in R15
@5
A=D-A
D=M
@R15
M=D
// Reposition the return value for the caller
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@ARG
A=M
M=D
// Reposition the SP of the caller to one address ahead of return value
@ARG
D=M+1
@SP
M=D
// Restore that of the caller
@LCL           // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@THAT
M=D
// Restore THIS of the caller
@LCL           // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@THIS
M=D
// Restore ARG of the caller
@LCL           // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@ARG
M=D
// Restore LCL of the caller
@LCL           // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@LCL
M=D
// Goes to the caller's return address
@R15
A=M
0;JMP
(SquareGame.dispose)
// For push
@ARG // Load segment pointer
D=M            // Store segment starting address in D
@0        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// For pop
// C_POP pointer 0
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@R3  // Load segment pointer
M=D            // Save popped value (in D register) to the reqd. memory segment (static/pointer) location
// For push
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@0        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Pushing return address onto the stack for function SquareGame.dispose
@SquareGame.dispose$ret.1
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Pushing LCL, ARG, THIS and THAT of the caller
// Caller's state saved for segment local 
@LCL // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment argument 
@ARG // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment this 
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment that 
@THAT // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Reposition ARG for callee
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
// Repositon LCL for callee
@SP
D=M
@LCL
M=D
// Goto callee function
@Square.dispose
0;JMP
//Continue execution from the current function line
(SquareGame.dispose$ret.1)
// For pop
// C_POP temp 0
@R5  // Load segment pointer
D=A            // Store segment starting address in A for temp segment
@0        // Load index from starting address
D=D+A          // Store Starting address + index in D
@R15           // General purpose R15 register used to save the segment address where we will pop
M=D            // Save the reqd. segment address in memory location 15
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@R15           // Reload the reqd. segment address where we have to pop from R15
A=M            // Get reqd. address in A register
M=D            // Save popped value (in D register) to the reqd. memory segment location
// For push
@R3 // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Pushing return address onto the stack for function SquareGame.dispose
@SquareGame.dispose$ret.2
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Pushing LCL, ARG, THIS and THAT of the caller
// Caller's state saved for segment local 
@LCL // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment argument 
@ARG // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment this 
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment that 
@THAT // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Reposition ARG for callee
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
// Repositon LCL for callee
@SP
D=M
@LCL
M=D
// Goto callee function
@Memory.deAlloc
0;JMP
//Continue execution from the current function line
(SquareGame.dispose$ret.2)
// For pop
// C_POP temp 0
@R5  // Load segment pointer
D=A            // Store segment starting address in A for temp segment
@0        // Load index from starting address
D=D+A          // Store Starting address + index in D
@R15           // General purpose R15 register used to save the segment address where we will pop
M=D            // Save the reqd. segment address in memory location 15
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@R15           // Reload the reqd. segment address where we have to pop from R15
A=M            // Get reqd. address in A register
M=D            // Save popped value (in D register) to the reqd. memory segment location
// For push
@0
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
@LCL
D=M
// Return Address is saved 5 memory addresses behind LCL. Get it and save it in R15
@5
A=D-A
D=M
@R15
M=D
// Reposition the return value for the caller
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@ARG
A=M
M=D
// Reposition the SP of the caller to one address ahead of return value
@ARG
D=M+1
@SP
M=D
// Restore that of the caller
@LCL           // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@THAT
M=D
// Restore THIS of the caller
@LCL           // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@THIS
M=D
// Restore ARG of the caller
@LCL           // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@ARG
M=D
// Restore LCL of the caller
@LCL           // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@LCL
M=D
// Goes to the caller's return address
@R15
A=M
0;JMP
(SquareGame.run)
//Calling push constant 0 numVars times to initialize all local variables to 0
@0
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// For push
@ARG // Load segment pointer
D=M            // Store segment starting address in D
@0        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// For pop
// C_POP pointer 0
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@R3  // Load segment pointer
M=D            // Save popped value (in D register) to the reqd. memory segment (static/pointer) location
// For push
@0
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// For pop
// C_POP local 1
@LCL  // Load segment pointer
D=M            // Store segment starting address in D
@1        // Load index from starting address
D=D+A          // Store Starting address + index in D
@R15           // General purpose R15 register used to save the segment address where we will pop
M=D            // Save the reqd. segment address in memory location 15
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@R15           // Reload the reqd. segment address where we have to pop from R15
A=M            // Get reqd. address in A register
M=D            // Save popped value (in D register) to the reqd. memory segment location
(SquareGame.run$WHILE_EXP0)
// For push
@LCL // Load segment pointer
D=M            // Store segment starting address in D
@1        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
@SP
A=M
A=A-1
D=M
D=!D
M=D // Save result 
@SP
A=M
A=A-1
D=M
D=!D
M=D // Save result 
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@SquareGame.run$WHILE_END0
D;JNE
(SquareGame.run$WHILE_EXP1)
// For push
@LCL // Load segment pointer
D=M            // Store segment starting address in D
@0        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// For push
@0
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
@SP
M=M-1 // SP = SP - 1
A=M   // A = SP
D=M   // Save first value at top of stack in D
A=A-1 // Point to second value from top of stack
D=M-D // Apply operator(-) on first value in D and second value pointed to by A in memory
@DECIDE_OUTPUT359
D;JEQ
D=0
@SAVE_OUTPUT359
0;JMP
(DECIDE_OUTPUT359)
D=-1
(SAVE_OUTPUT359)
@SP
A=M-1
M=D // Save result 
@SP
A=M
A=A-1
D=M
D=!D
M=D // Save result 
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@SquareGame.run$WHILE_END1
D;JNE
// Pushing return address onto the stack for function SquareGame.run
@SquareGame.run$ret.1
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Pushing LCL, ARG, THIS and THAT of the caller
// Caller's state saved for segment local 
@LCL // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment argument 
@ARG // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment this 
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment that 
@THAT // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Reposition ARG for callee
@SP
D=M
@5
D=D-A
@0
D=D-A
@ARG
M=D
// Repositon LCL for callee
@SP
D=M
@LCL
M=D
// Goto callee function
@Keyboard.keyPressed
0;JMP
//Continue execution from the current function line
(SquareGame.run$ret.1)
// For pop
// C_POP local 0
@LCL  // Load segment pointer
D=M            // Store segment starting address in D
@0        // Load index from starting address
D=D+A          // Store Starting address + index in D
@R15           // General purpose R15 register used to save the segment address where we will pop
M=D            // Save the reqd. segment address in memory location 15
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@R15           // Reload the reqd. segment address where we have to pop from R15
A=M            // Get reqd. address in A register
M=D            // Save popped value (in D register) to the reqd. memory segment location
// For push
@R3 // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Pushing return address onto the stack for function SquareGame.run
@SquareGame.run$ret.2
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Pushing LCL, ARG, THIS and THAT of the caller
// Caller's state saved for segment local 
@LCL // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment argument 
@ARG // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment this 
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment that 
@THAT // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Reposition ARG for callee
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
// Repositon LCL for callee
@SP
D=M
@LCL
M=D
// Goto callee function
@SquareGame.moveSquare
0;JMP
//Continue execution from the current function line
(SquareGame.run$ret.2)
// For pop
// C_POP temp 0
@R5  // Load segment pointer
D=A            // Store segment starting address in A for temp segment
@0        // Load index from starting address
D=D+A          // Store Starting address + index in D
@R15           // General purpose R15 register used to save the segment address where we will pop
M=D            // Save the reqd. segment address in memory location 15
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@R15           // Reload the reqd. segment address where we have to pop from R15
A=M            // Get reqd. address in A register
M=D            // Save popped value (in D register) to the reqd. memory segment location
@SquareGame.run$WHILE_EXP1
0;JMP
(SquareGame.run$WHILE_END1)
// For push
@LCL // Load segment pointer
D=M            // Store segment starting address in D
@0        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// For push
@81
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
@SP
M=M-1 // SP = SP - 1
A=M   // A = SP
D=M   // Save first value at top of stack in D
A=A-1 // Point to second value from top of stack
D=M-D // Apply operator(-) on first value in D and second value pointed to by A in memory
@DECIDE_OUTPUT371
D;JEQ
D=0
@SAVE_OUTPUT371
0;JMP
(DECIDE_OUTPUT371)
D=-1
(SAVE_OUTPUT371)
@SP
A=M-1
M=D // Save result 
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@SquareGame.run$IF_TRUE0
D;JNE
@SquareGame.run$IF_FALSE0
0;JMP
(SquareGame.run$IF_TRUE0)
// For push
@0
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
@SP
A=M
A=A-1
D=M
D=!D
M=D // Save result 
// For pop
// C_POP local 1
@LCL  // Load segment pointer
D=M            // Store segment starting address in D
@1        // Load index from starting address
D=D+A          // Store Starting address + index in D
@R15           // General purpose R15 register used to save the segment address where we will pop
M=D            // Save the reqd. segment address in memory location 15
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@R15           // Reload the reqd. segment address where we have to pop from R15
A=M            // Get reqd. address in A register
M=D            // Save popped value (in D register) to the reqd. memory segment location
(SquareGame.run$IF_FALSE0)
// For push
@LCL // Load segment pointer
D=M            // Store segment starting address in D
@0        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// For push
@90
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
@SP
M=M-1 // SP = SP - 1
A=M   // A = SP
D=M   // Save first value at top of stack in D
A=A-1 // Point to second value from top of stack
D=M-D // Apply operator(-) on first value in D and second value pointed to by A in memory
@DECIDE_OUTPUT381
D;JEQ
D=0
@SAVE_OUTPUT381
0;JMP
(DECIDE_OUTPUT381)
D=-1
(SAVE_OUTPUT381)
@SP
A=M-1
M=D // Save result 
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@SquareGame.run$IF_TRUE1
D;JNE
@SquareGame.run$IF_FALSE1
0;JMP
(SquareGame.run$IF_TRUE1)
// For push
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@0        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Pushing return address onto the stack for function SquareGame.run
@SquareGame.run$ret.3
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Pushing LCL, ARG, THIS and THAT of the caller
// Caller's state saved for segment local 
@LCL // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment argument 
@ARG // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment this 
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment that 
@THAT // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Reposition ARG for callee
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
// Repositon LCL for callee
@SP
D=M
@LCL
M=D
// Goto callee function
@Square.decSize
0;JMP
//Continue execution from the current function line
(SquareGame.run$ret.3)
// For pop
// C_POP temp 0
@R5  // Load segment pointer
D=A            // Store segment starting address in A for temp segment
@0        // Load index from starting address
D=D+A          // Store Starting address + index in D
@R15           // General purpose R15 register used to save the segment address where we will pop
M=D            // Save the reqd. segment address in memory location 15
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@R15           // Reload the reqd. segment address where we have to pop from R15
A=M            // Get reqd. address in A register
M=D            // Save popped value (in D register) to the reqd. memory segment location
(SquareGame.run$IF_FALSE1)
// For push
@LCL // Load segment pointer
D=M            // Store segment starting address in D
@0        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// For push
@88
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
@SP
M=M-1 // SP = SP - 1
A=M   // A = SP
D=M   // Save first value at top of stack in D
A=A-1 // Point to second value from top of stack
D=M-D // Apply operator(-) on first value in D and second value pointed to by A in memory
@DECIDE_OUTPUT391
D;JEQ
D=0
@SAVE_OUTPUT391
0;JMP
(DECIDE_OUTPUT391)
D=-1
(SAVE_OUTPUT391)
@SP
A=M-1
M=D // Save result 
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@SquareGame.run$IF_TRUE2
D;JNE
@SquareGame.run$IF_FALSE2
0;JMP
(SquareGame.run$IF_TRUE2)
// For push
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@0        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Pushing return address onto the stack for function SquareGame.run
@SquareGame.run$ret.4
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Pushing LCL, ARG, THIS and THAT of the caller
// Caller's state saved for segment local 
@LCL // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment argument 
@ARG // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment this 
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment that 
@THAT // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Reposition ARG for callee
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
// Repositon LCL for callee
@SP
D=M
@LCL
M=D
// Goto callee function
@Square.incSize
0;JMP
//Continue execution from the current function line
(SquareGame.run$ret.4)
// For pop
// C_POP temp 0
@R5  // Load segment pointer
D=A            // Store segment starting address in A for temp segment
@0        // Load index from starting address
D=D+A          // Store Starting address + index in D
@R15           // General purpose R15 register used to save the segment address where we will pop
M=D            // Save the reqd. segment address in memory location 15
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@R15           // Reload the reqd. segment address where we have to pop from R15
A=M            // Get reqd. address in A register
M=D            // Save popped value (in D register) to the reqd. memory segment location
(SquareGame.run$IF_FALSE2)
// For push
@LCL // Load segment pointer
D=M            // Store segment starting address in D
@0        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// For push
@131
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
@SP
M=M-1 // SP = SP - 1
A=M   // A = SP
D=M   // Save first value at top of stack in D
A=A-1 // Point to second value from top of stack
D=M-D // Apply operator(-) on first value in D and second value pointed to by A in memory
@DECIDE_OUTPUT401
D;JEQ
D=0
@SAVE_OUTPUT401
0;JMP
(DECIDE_OUTPUT401)
D=-1
(SAVE_OUTPUT401)
@SP
A=M-1
M=D // Save result 
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@SquareGame.run$IF_TRUE3
D;JNE
@SquareGame.run$IF_FALSE3
0;JMP
(SquareGame.run$IF_TRUE3)
// For push
@1
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// For pop
// C_POP this 1
@THIS  // Load segment pointer
D=M            // Store segment starting address in D
@1        // Load index from starting address
D=D+A          // Store Starting address + index in D
@R15           // General purpose R15 register used to save the segment address where we will pop
M=D            // Save the reqd. segment address in memory location 15
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@R15           // Reload the reqd. segment address where we have to pop from R15
A=M            // Get reqd. address in A register
M=D            // Save popped value (in D register) to the reqd. memory segment location
(SquareGame.run$IF_FALSE3)
// For push
@LCL // Load segment pointer
D=M            // Store segment starting address in D
@0        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// For push
@133
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
@SP
M=M-1 // SP = SP - 1
A=M   // A = SP
D=M   // Save first value at top of stack in D
A=A-1 // Point to second value from top of stack
D=M-D // Apply operator(-) on first value in D and second value pointed to by A in memory
@DECIDE_OUTPUT410
D;JEQ
D=0
@SAVE_OUTPUT410
0;JMP
(DECIDE_OUTPUT410)
D=-1
(SAVE_OUTPUT410)
@SP
A=M-1
M=D // Save result 
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@SquareGame.run$IF_TRUE4
D;JNE
@SquareGame.run$IF_FALSE4
0;JMP
(SquareGame.run$IF_TRUE4)
// For push
@2
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// For pop
// C_POP this 1
@THIS  // Load segment pointer
D=M            // Store segment starting address in D
@1        // Load index from starting address
D=D+A          // Store Starting address + index in D
@R15           // General purpose R15 register used to save the segment address where we will pop
M=D            // Save the reqd. segment address in memory location 15
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@R15           // Reload the reqd. segment address where we have to pop from R15
A=M            // Get reqd. address in A register
M=D            // Save popped value (in D register) to the reqd. memory segment location
(SquareGame.run$IF_FALSE4)
// For push
@LCL // Load segment pointer
D=M            // Store segment starting address in D
@0        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// For push
@130
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
@SP
M=M-1 // SP = SP - 1
A=M   // A = SP
D=M   // Save first value at top of stack in D
A=A-1 // Point to second value from top of stack
D=M-D // Apply operator(-) on first value in D and second value pointed to by A in memory
@DECIDE_OUTPUT419
D;JEQ
D=0
@SAVE_OUTPUT419
0;JMP
(DECIDE_OUTPUT419)
D=-1
(SAVE_OUTPUT419)
@SP
A=M-1
M=D // Save result 
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@SquareGame.run$IF_TRUE5
D;JNE
@SquareGame.run$IF_FALSE5
0;JMP
(SquareGame.run$IF_TRUE5)
// For push
@3
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// For pop
// C_POP this 1
@THIS  // Load segment pointer
D=M            // Store segment starting address in D
@1        // Load index from starting address
D=D+A          // Store Starting address + index in D
@R15           // General purpose R15 register used to save the segment address where we will pop
M=D            // Save the reqd. segment address in memory location 15
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@R15           // Reload the reqd. segment address where we have to pop from R15
A=M            // Get reqd. address in A register
M=D            // Save popped value (in D register) to the reqd. memory segment location
(SquareGame.run$IF_FALSE5)
// For push
@LCL // Load segment pointer
D=M            // Store segment starting address in D
@0        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// For push
@132
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
@SP
M=M-1 // SP = SP - 1
A=M   // A = SP
D=M   // Save first value at top of stack in D
A=A-1 // Point to second value from top of stack
D=M-D // Apply operator(-) on first value in D and second value pointed to by A in memory
@DECIDE_OUTPUT428
D;JEQ
D=0
@SAVE_OUTPUT428
0;JMP
(DECIDE_OUTPUT428)
D=-1
(SAVE_OUTPUT428)
@SP
A=M-1
M=D // Save result 
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@SquareGame.run$IF_TRUE6
D;JNE
@SquareGame.run$IF_FALSE6
0;JMP
(SquareGame.run$IF_TRUE6)
// For push
@4
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// For pop
// C_POP this 1
@THIS  // Load segment pointer
D=M            // Store segment starting address in D
@1        // Load index from starting address
D=D+A          // Store Starting address + index in D
@R15           // General purpose R15 register used to save the segment address where we will pop
M=D            // Save the reqd. segment address in memory location 15
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@R15           // Reload the reqd. segment address where we have to pop from R15
A=M            // Get reqd. address in A register
M=D            // Save popped value (in D register) to the reqd. memory segment location
(SquareGame.run$IF_FALSE6)
(SquareGame.run$WHILE_EXP2)
// For push
@LCL // Load segment pointer
D=M            // Store segment starting address in D
@0        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// For push
@0
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
@SP
M=M-1 // SP = SP - 1
A=M   // A = SP
D=M   // Save first value at top of stack in D
A=A-1 // Point to second value from top of stack
D=M-D // Apply operator(-) on first value in D and second value pointed to by A in memory
@DECIDE_OUTPUT438
D;JEQ
D=0
@SAVE_OUTPUT438
0;JMP
(DECIDE_OUTPUT438)
D=-1
(SAVE_OUTPUT438)
@SP
A=M-1
M=D // Save result 
@SP
A=M
A=A-1
D=M
D=!D
M=D // Save result 
@SP
A=M
A=A-1
D=M
D=!D
M=D // Save result 
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@SquareGame.run$WHILE_END2
D;JNE
// Pushing return address onto the stack for function SquareGame.run
@SquareGame.run$ret.5
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Pushing LCL, ARG, THIS and THAT of the caller
// Caller's state saved for segment local 
@LCL // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment argument 
@ARG // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment this 
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment that 
@THAT // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Reposition ARG for callee
@SP
D=M
@5
D=D-A
@0
D=D-A
@ARG
M=D
// Repositon LCL for callee
@SP
D=M
@LCL
M=D
// Goto callee function
@Keyboard.keyPressed
0;JMP
//Continue execution from the current function line
(SquareGame.run$ret.5)
// For pop
// C_POP local 0
@LCL  // Load segment pointer
D=M            // Store segment starting address in D
@0        // Load index from starting address
D=D+A          // Store Starting address + index in D
@R15           // General purpose R15 register used to save the segment address where we will pop
M=D            // Save the reqd. segment address in memory location 15
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@R15           // Reload the reqd. segment address where we have to pop from R15
A=M            // Get reqd. address in A register
M=D            // Save popped value (in D register) to the reqd. memory segment location
// For push
@R3 // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Pushing return address onto the stack for function SquareGame.run
@SquareGame.run$ret.6
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Pushing LCL, ARG, THIS and THAT of the caller
// Caller's state saved for segment local 
@LCL // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment argument 
@ARG // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment this 
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment that 
@THAT // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Reposition ARG for callee
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
// Repositon LCL for callee
@SP
D=M
@LCL
M=D
// Goto callee function
@SquareGame.moveSquare
0;JMP
//Continue execution from the current function line
(SquareGame.run$ret.6)
// For pop
// C_POP temp 0
@R5  // Load segment pointer
D=A            // Store segment starting address in A for temp segment
@0        // Load index from starting address
D=D+A          // Store Starting address + index in D
@R15           // General purpose R15 register used to save the segment address where we will pop
M=D            // Save the reqd. segment address in memory location 15
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@R15           // Reload the reqd. segment address where we have to pop from R15
A=M            // Get reqd. address in A register
M=D            // Save popped value (in D register) to the reqd. memory segment location
@SquareGame.run$WHILE_EXP2
0;JMP
(SquareGame.run$WHILE_END2)
@SquareGame.run$WHILE_EXP0
0;JMP
(SquareGame.run$WHILE_END0)
// For push
@0
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
@LCL
D=M
// Return Address is saved 5 memory addresses behind LCL. Get it and save it in R15
@5
A=D-A
D=M
@R15
M=D
// Reposition the return value for the caller
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@ARG
A=M
M=D
// Reposition the SP of the caller to one address ahead of return value
@ARG
D=M+1
@SP
M=D
// Restore that of the caller
@LCL           // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@THAT
M=D
// Restore THIS of the caller
@LCL           // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@THIS
M=D
// Restore ARG of the caller
@LCL           // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@ARG
M=D
// Restore LCL of the caller
@LCL           // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@LCL
M=D
// Goes to the caller's return address
@R15
A=M
0;JMP
(SquareGame.moveSquare)
// For push
@ARG // Load segment pointer
D=M            // Store segment starting address in D
@0        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// For pop
// C_POP pointer 0
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@R3  // Load segment pointer
M=D            // Save popped value (in D register) to the reqd. memory segment (static/pointer) location
// For push
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@1        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// For push
@1
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
@SP
M=M-1 // SP = SP - 1
A=M   // A = SP
D=M   // Save first value at top of stack in D
A=A-1 // Point to second value from top of stack
D=M-D // Apply operator(-) on first value in D and second value pointed to by A in memory
@DECIDE_OUTPUT458
D;JEQ
D=0
@SAVE_OUTPUT458
0;JMP
(DECIDE_OUTPUT458)
D=-1
(SAVE_OUTPUT458)
@SP
A=M-1
M=D // Save result 
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@SquareGame.moveSquare$IF_TRUE0
D;JNE
@SquareGame.moveSquare$IF_FALSE0
0;JMP
(SquareGame.moveSquare$IF_TRUE0)
// For push
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@0        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Pushing return address onto the stack for function SquareGame.moveSquare
@SquareGame.moveSquare$ret.1
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Pushing LCL, ARG, THIS and THAT of the caller
// Caller's state saved for segment local 
@LCL // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment argument 
@ARG // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment this 
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment that 
@THAT // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Reposition ARG for callee
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
// Repositon LCL for callee
@SP
D=M
@LCL
M=D
// Goto callee function
@Square.moveUp
0;JMP
//Continue execution from the current function line
(SquareGame.moveSquare$ret.1)
// For pop
// C_POP temp 0
@R5  // Load segment pointer
D=A            // Store segment starting address in A for temp segment
@0        // Load index from starting address
D=D+A          // Store Starting address + index in D
@R15           // General purpose R15 register used to save the segment address where we will pop
M=D            // Save the reqd. segment address in memory location 15
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@R15           // Reload the reqd. segment address where we have to pop from R15
A=M            // Get reqd. address in A register
M=D            // Save popped value (in D register) to the reqd. memory segment location
(SquareGame.moveSquare$IF_FALSE0)
// For push
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@1        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// For push
@2
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
@SP
M=M-1 // SP = SP - 1
A=M   // A = SP
D=M   // Save first value at top of stack in D
A=A-1 // Point to second value from top of stack
D=M-D // Apply operator(-) on first value in D and second value pointed to by A in memory
@DECIDE_OUTPUT468
D;JEQ
D=0
@SAVE_OUTPUT468
0;JMP
(DECIDE_OUTPUT468)
D=-1
(SAVE_OUTPUT468)
@SP
A=M-1
M=D // Save result 
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@SquareGame.moveSquare$IF_TRUE1
D;JNE
@SquareGame.moveSquare$IF_FALSE1
0;JMP
(SquareGame.moveSquare$IF_TRUE1)
// For push
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@0        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Pushing return address onto the stack for function SquareGame.moveSquare
@SquareGame.moveSquare$ret.2
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Pushing LCL, ARG, THIS and THAT of the caller
// Caller's state saved for segment local 
@LCL // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment argument 
@ARG // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment this 
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment that 
@THAT // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Reposition ARG for callee
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
// Repositon LCL for callee
@SP
D=M
@LCL
M=D
// Goto callee function
@Square.moveDown
0;JMP
//Continue execution from the current function line
(SquareGame.moveSquare$ret.2)
// For pop
// C_POP temp 0
@R5  // Load segment pointer
D=A            // Store segment starting address in A for temp segment
@0        // Load index from starting address
D=D+A          // Store Starting address + index in D
@R15           // General purpose R15 register used to save the segment address where we will pop
M=D            // Save the reqd. segment address in memory location 15
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@R15           // Reload the reqd. segment address where we have to pop from R15
A=M            // Get reqd. address in A register
M=D            // Save popped value (in D register) to the reqd. memory segment location
(SquareGame.moveSquare$IF_FALSE1)
// For push
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@1        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// For push
@3
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
@SP
M=M-1 // SP = SP - 1
A=M   // A = SP
D=M   // Save first value at top of stack in D
A=A-1 // Point to second value from top of stack
D=M-D // Apply operator(-) on first value in D and second value pointed to by A in memory
@DECIDE_OUTPUT478
D;JEQ
D=0
@SAVE_OUTPUT478
0;JMP
(DECIDE_OUTPUT478)
D=-1
(SAVE_OUTPUT478)
@SP
A=M-1
M=D // Save result 
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@SquareGame.moveSquare$IF_TRUE2
D;JNE
@SquareGame.moveSquare$IF_FALSE2
0;JMP
(SquareGame.moveSquare$IF_TRUE2)
// For push
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@0        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Pushing return address onto the stack for function SquareGame.moveSquare
@SquareGame.moveSquare$ret.3
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Pushing LCL, ARG, THIS and THAT of the caller
// Caller's state saved for segment local 
@LCL // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment argument 
@ARG // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment this 
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment that 
@THAT // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Reposition ARG for callee
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
// Repositon LCL for callee
@SP
D=M
@LCL
M=D
// Goto callee function
@Square.moveLeft
0;JMP
//Continue execution from the current function line
(SquareGame.moveSquare$ret.3)
// For pop
// C_POP temp 0
@R5  // Load segment pointer
D=A            // Store segment starting address in A for temp segment
@0        // Load index from starting address
D=D+A          // Store Starting address + index in D
@R15           // General purpose R15 register used to save the segment address where we will pop
M=D            // Save the reqd. segment address in memory location 15
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@R15           // Reload the reqd. segment address where we have to pop from R15
A=M            // Get reqd. address in A register
M=D            // Save popped value (in D register) to the reqd. memory segment location
(SquareGame.moveSquare$IF_FALSE2)
// For push
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@1        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// For push
@4
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
@SP
M=M-1 // SP = SP - 1
A=M   // A = SP
D=M   // Save first value at top of stack in D
A=A-1 // Point to second value from top of stack
D=M-D // Apply operator(-) on first value in D and second value pointed to by A in memory
@DECIDE_OUTPUT488
D;JEQ
D=0
@SAVE_OUTPUT488
0;JMP
(DECIDE_OUTPUT488)
D=-1
(SAVE_OUTPUT488)
@SP
A=M-1
M=D // Save result 
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@SquareGame.moveSquare$IF_TRUE3
D;JNE
@SquareGame.moveSquare$IF_FALSE3
0;JMP
(SquareGame.moveSquare$IF_TRUE3)
// For push
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@0        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Pushing return address onto the stack for function SquareGame.moveSquare
@SquareGame.moveSquare$ret.4
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Pushing LCL, ARG, THIS and THAT of the caller
// Caller's state saved for segment local 
@LCL // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment argument 
@ARG // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment this 
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment that 
@THAT // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Reposition ARG for callee
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
// Repositon LCL for callee
@SP
D=M
@LCL
M=D
// Goto callee function
@Square.moveRight
0;JMP
//Continue execution from the current function line
(SquareGame.moveSquare$ret.4)
// For pop
// C_POP temp 0
@R5  // Load segment pointer
D=A            // Store segment starting address in A for temp segment
@0        // Load index from starting address
D=D+A          // Store Starting address + index in D
@R15           // General purpose R15 register used to save the segment address where we will pop
M=D            // Save the reqd. segment address in memory location 15
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@R15           // Reload the reqd. segment address where we have to pop from R15
A=M            // Get reqd. address in A register
M=D            // Save popped value (in D register) to the reqd. memory segment location
(SquareGame.moveSquare$IF_FALSE3)
// For push
@5
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Pushing return address onto the stack for function SquareGame.moveSquare
@SquareGame.moveSquare$ret.5
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Pushing LCL, ARG, THIS and THAT of the caller
// Caller's state saved for segment local 
@LCL // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment argument 
@ARG // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment this 
@THIS // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Caller's state saved for segment that 
@THAT // Load segment pointer
D=M            // Store segment starting address in D
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Reposition ARG for callee
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
// Repositon LCL for callee
@SP
D=M
@LCL
M=D
// Goto callee function
@Sys.wait
0;JMP
//Continue execution from the current function line
(SquareGame.moveSquare$ret.5)
// For pop
// C_POP temp 0
@R5  // Load segment pointer
D=A            // Store segment starting address in A for temp segment
@0        // Load index from starting address
D=D+A          // Store Starting address + index in D
@R15           // General purpose R15 register used to save the segment address where we will pop
M=D            // Save the reqd. segment address in memory location 15
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@R15           // Reload the reqd. segment address where we have to pop from R15
A=M            // Get reqd. address in A register
M=D            // Save popped value (in D register) to the reqd. memory segment location
// For push
@0
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
@LCL
D=M
// Return Address is saved 5 memory addresses behind LCL. Get it and save it in R15
@5
A=D-A
D=M
@R15
M=D
// Reposition the return value for the caller
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@ARG
A=M
M=D
// Reposition the SP of the caller to one address ahead of return value
@ARG
D=M+1
@SP
M=D
// Restore that of the caller
@LCL           // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@THAT
M=D
// Restore THIS of the caller
@LCL           // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@THIS
M=D
// Restore ARG of the caller
@LCL           // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@ARG
M=D
// Restore LCL of the caller
@LCL           // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@LCL
M=D
// Goes to the caller's return address
@R15
A=M
0;JMP
(ASM_END_LOOP)
@ASM_END_LOOP
0;JMP
