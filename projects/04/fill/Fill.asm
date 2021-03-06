// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, the
// program clears the screen, i.e. writes "white" in every pixel.

// Put your code here.

   (REPEAT)
 
   @KBD
   D=M

   @CLEAR_SCREEN
   D;JEQ
   
   @SCREEN
   D=A
   
   @R0
   M=D  

   (LOOP) 
   
   @R0
   A=M  

   M=-1

   @R0
   M=M+1   

   @KBD
   D=A 
   
   @R0
   D=D-M  

   @LOOP
   D;JNE
   
   @REPEAT
   0;JMP
   
   (CLEAR_SCREEN)
   
   @SCREEN
   D=A

   @R0
   M=D
   
   (LOOP2)
 
   @R0
   A=M

   M=0

   @R0
   M=M+1

   @KBD
   D=A

   @R0
   D=D-M

   @LOOP2
   D;JNE

   @REPEAT
   0;JMP

   

   (END)
   
   @END
   0;JMP
