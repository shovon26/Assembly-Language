; array

.MODEL SMALL
.STACK 100H

.DATA

A DB 10 DUP(0) 
B DB ?
C DB ?
D DB ?
CNT DB ?


.CODE

MAIN PROC

MOV AX, @DATA
MOV DS, AX


MOV AH,1
INT 21H
MOV B, AL

MOV AH,2
MOV DL, 0DH
INT 21H

MOV DL, 0AH
INT 21H


XOR BX, BX

MOV D, 1

MOV CNT, 48

FOR: 
MOV CL, B
MOV C, CL 
MOV CL, D
AND C, CL
CMP C, 0
JE ZERO

MOV A[BX], 49

JMP NXT


ZERO: 
MOV A[BX], 48 
INC CNT
JMP NXT

NXT:
MOV CL, D
ADD D, CL
INC BX
CMP BX, 8
JL FOR

XOR BX, BX

MOV BX, 7

MOV AH,2

FOR1:
MOV DL, A[BX]
INT 21H
CMP BX, 0
JE EXIT
DEC BX
JMP FOR1

EXIT:

MOV DL, 0DH
INT 21H

MOV DL, 0AH
INT 21H

MOV DL, CNT
INT 21H

MOV AH, 4CH
INT 21H
MAIN ENDP

END MAIN