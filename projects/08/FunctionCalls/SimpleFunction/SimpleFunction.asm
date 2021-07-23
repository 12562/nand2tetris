(SimpleFunction.test)
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
M=M-1 // SP = SP - 1
A=M   // A = SP
D=M   // Save first value at top of stack in D
A=A-1 // Point to second value from top of stack
D=M+D // Apply operator(+) on first value in D and second value pointed to by A in memory
M=D // Save result 
@SP
A=M
A=A-1
D=M
D=!D
M=D // Save result 
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
@SP
M=M-1 // SP = SP - 1
A=M   // A = SP
D=M   // Save first value at top of stack in D
A=A-1 // Point to second value from top of stack
D=M+D // Apply operator(+) on first value in D and second value pointed to by A in memory
M=D // Save result 
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
@SP
M=M-1 // SP = SP - 1
A=M   // A = SP
D=M   // Save first value at top of stack in D
A=A-1 // Point to second value from top of stack
D=M-D // Apply operator(-) on first value in D and second value pointed to by A in memory
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
