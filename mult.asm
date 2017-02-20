// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// create a i-counter
@i
M=0

(LOOP)
// check iteration
@i
D=M
@R1
A=M
// subtract i from R1 value
D=A-D
@END
// if it's less/equal to 0, exit
D;JLE

// multiply
@R0
D=M
@R2
A=M
D=D+A
@R2
M=D

// increase counter
@i
M=M+1

@LOOP
0;JMP

(END)
@END
// prevent infinite loop
0;JMP
