// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, 
// the screen should be cleared.

//*pointer=0
@0
D=A
@pointer
M=D

//screensize=&KBD-&SCREEN
@KBD
D=A
@SCREEN
D=D-A
@screensize
M=D

(LOOP)

@KBD
D=M

@BLACK
D;JNE

@CLEAR
0;JMP

(CLEAR)
@pointer
D=M

@LOOP
D;JLE

@pointer
M=M-1
D=M
@SCREEN
A=A+D
M=0

@LOOP
0;JMP

(BLACK)
@pointer
D=M
@screensize
D=M-D

@LOOP
D;JLE

@pointer
D=M

@SCREEN
A=A+D
M=-1

@pointer
M=M+1

@LOOP
0;JMP

