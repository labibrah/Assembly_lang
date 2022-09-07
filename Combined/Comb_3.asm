INCLUDE 'EMU8086.INC'
.MODEL SMALL         
.STACK 100H

.DATA
N DW 1   

.CODE
MOV AX, @DATA
MOV DS, AX



OUTER_:         
MOV DX, N  ;initialization
CMP DX,9   ;find upto 8 factorial
JE STOP_ 
INC N

MOV CX, DX  ;N also acts as loop counter
MOV AX, 1

FACT_:
MUL CX      ;AX = 1*2*...*N
LOOP FACT_ 

CALL PRINT_NUM_UNS  ;print N factorial stored in AX
PRINTN

JMP OUTER_
   


STOP_:
MOV AH,4CH
INT 21H


DEFINE_PRINT_NUM_UNS
DEFINE_PRINT_NUM
DEFINE_GET_STRING
DEFINE_PTHIS


END

