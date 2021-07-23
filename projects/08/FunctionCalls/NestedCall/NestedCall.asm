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
@Sys.main
0;JMP
//Continue execution from the current function line
(Sys.init$ret.2)
// For pop
// C_POP temp 1
@R5  // Load segment pointer
D=A            // Store segment starting address in A for temp segment
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
(Sys.init$LOOP)
@Sys.init$LOOP
0;JMP
(Sys.main)
// For push
@123
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
// Pushing return address onto the stack for function Sys.main
@Sys.main$ret.1
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
@Sys.add12
0;JMP
//Continue execution from the current function line
(Sys.main$ret.1)
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
@246
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
(Sys.add12)
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
// For push
@12
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
