// For push
@0
D=A
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
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
(LOOP_START)
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
@SP
M=M-1 // SP = SP - 1
A=M   // A = SP
D=M   // Save first value at top of stack in D
A=A-1 // Point to second value from top of stack
D=M+D // Apply operator(+) on first value in D and second value pointed to by A in memory
M=D // Save result 
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
// For pop
// C_POP argument 0
@ARG  // Load segment pointer
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
@0        // Load index from starting address
A=D+A          // Store segment starting address + index i.e. reqd. addr from where to push in A
D=M            // Get the reqd. value to push from the memory location
@SP            // Load Stack pointer
A=M            // Get top of stack memory address in A
M=D            // Push the reqd. value saved in D onto the top of the stack
@SP            // Load stack pointer
M=M+1          // Increment SP by 1 since we have pushed
@SP            // Load Stack pointer
M=M-1          // Decrement SP by 1 since we are going to pop
A=M            // Get new stack pointer address and let A register point to the new SP address
D=M            // Get the value stored on top of stack for saving in the memory segment
@LOOP_START
D;JNE
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
(ASM_END_LOOP)
@ASM_END_LOOP
0;JMP
