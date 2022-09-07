INCLUDE 'EMU8086.INC'
.MODEL SMALL         
.STACK 100H

.DATA
 COUNT DW 0   ;variable to store number of 0s

.CODE      

MOV AX,@DATA
MOV DS,AX

CALL PTHIS 
DB  "Enter a decimal number: ",0    ;store number in CX

CALL SCAN_NUM

CALL PTHIS 
DB  0ah,0dh,"Binary: ",0

MOV BX, CX      ;free CX to used for loop counter
MOV CX,16

PRINT_:
CMP CX,0       ;if 0 exit loop
JE STOP_
DEC CX
MOV AL,80H     ;compare first digit of input to check for 1 or 0
AND AL,BH
CMP AL,80H
JNE PRINT0_     ;if 0 entered
JE PRINT1_      ;if 1 entered
   
PRINT0_:  
ADD COUNT,1    ;increase count
MOV DL,'0'     ;print 0
MOV AH,2
INT 21H
SHL BX,1
JMP PRINT_

PRINT1_:
MOV DL,'1'    ;print 1
MOV AH,2
INT 21H 
SHL BX,1
JMP PRINT_
  
STOP_:     
CALL PTHIS 
DB  0AH,0DH,"Number of '0's: ",0
MOV AX, COUNT
CALL PRINT_NUM_UNS
MOV AH,4CH
INT 21H

DEFINE_PRINT_NUM_UNS
DEFINE_PRINT_NUM
DEFINE_GET_STRING
DEFINE_PTHIS
DEFINE_SCAN_NUM

END

