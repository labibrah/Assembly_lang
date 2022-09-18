INCLUDE 'EMU8086.INC'
.MODEL SMALL         
.STACK 100H
    
 
.DATA


.CODE
CALL PTHIS 
DB "Enter a number: ", 0  ;prompt for input

CALL SCAN_NUM

MOV AX, CX

CALL PTHIS 
DB "Enter a second number: ", 0  ;prompt for input

CALL SCAN_NUM
;STORE INPUT IN AX
SUB AX,CX

CALL PTHIS  
DB 13,10,"The difference is: ", 0  ;show difference

CALL PRINT_NUM




STOP_:
MOV AH,4CH               ;exit
INT 21H


DEFINE_PRINT_NUM_UNS
DEFINE_PRINT_NUM
DEFINE_GET_STRING
DEFINE_PTHIS
DEFINE_SCAN_NUM

END

