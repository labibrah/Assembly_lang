.MODEL SMALL
.STACK 100H
.CODE

MOV AH, 1          ;BLACK SCREEN FOR INPUT 
INT 21H   ;INPUT IN AL  EXECUTE LINE BEFORE

MOV BL,AL      ;MOV AL TO BL     
              
MOV AH,2        ;OUTPUT

MOV DL, 20H  ;PRINT SPACE    
INT 21H 
MOV DL, BL            
INT 21H 


EXIT:
MOV AH, 4CH
INT 21H 
