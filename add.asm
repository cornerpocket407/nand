// Adds 1+...+100.
// int i = 1;
// int sum = 0;
// While (i <= 100){
// sum += i;
// i++;
// }

@i
M=1

@sum
M=0

(LOOP)

// i<= 100
@i
D=M
@100
D=D-A
@END
D;JGT

// sum +=i
@sum
D=M
@i
D=D+M
@sum
M=D

//i++
@i
M=M+1

@LOOP
0;JMP

(END)
@END
0;JMP


