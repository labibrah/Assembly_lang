INCLUDE 'EMU8086.INC'
.MODEL SMALL         
.STACK 100H

.DATA


.CODE
CALL PTHIS 
DB "Enter a binary number: ", 0  ;prompt for input

   
MOV CX, 16 ;for 16 digits of input  
XOR BX, BX ;clear BX 
MOV AH, 1

INPUT:
INT 21H    ;input char in AL

CMP AL, 0DH ;if enter pressed
JE OUTPUT_

CMP AL, 30H  ;if 0 or 1 not entered
JL ERROR_

CMP AL, 31H
JG ERROR_   

AND AL, 0FH    ;else store 1 or 0 depending on input in AL
SHL BX, 1      ;shift to multiply
OR BL, AL      ;insert 1 or 0 at right of BL

LOOP INPUT



OUTPUT_:       ;display number in decimal
MOV AX, BX     
CALL PTHIS
DB 0dh, 0ah, "Decimal: ", 0
CALL PRINT_NUM
JMP  STOP_

ERROR_:
CALL PTHIS
DB 0dh, 0ah, "Invalid Input ", 0 

STOP_:
MOV AH,4CH               ;exit
INT 21H


DEFINE_PRINT_NUM_UNS
DEFINE_PRINT_NUM
DEFINE_GET_STRING
DEFINE_PTHIS


END

