// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
// The algorithm is based on repetitive addition.


//add R0 repetitive nth. n is equal R1

    //i=0
    @0
    D=A
    @i
    M=D
    @R2
    M=D

//if((R1-i)>0) do add else goto END
(LOOP)
    @i
    D=M
    //R1-i
    @R1
    D=M-D

    //if !((R1-i)>0) goto END
    @END
    D;JLE

    @R0
    D=M

    @R2
    M=D+M

    @i
    M=M+1
    
    //goto (LOOP)
    @LOOP
    0;JMP

(END)
    @END
    0;JMP