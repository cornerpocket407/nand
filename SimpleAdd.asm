// push constant 7
// push constant 8
// add

// load 7
@7
D=A
// load 8
@8
D=D+A
// load stack pointer
@SP
A=M
// pushes sum into the stack pointer's address
M=D
// increment stack pointer
@SP
M=M+1
