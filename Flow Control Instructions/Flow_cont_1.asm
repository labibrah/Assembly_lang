.MODEL SMALL         
.STACK 100H

.DATA

.CODE      

MOV AX,@DATA
MOV DS,AX   

MOV AH,1

;TAKE INPUT
INT 21H

CMP AL, '1'
JE PRINT_O
CMP AL, '3'
JE PRINT_O
CMP AL, '5'
JE PRINT_O
CMP AL, '2'
JE PRINT_E
CMP AL, '4'
JE PRINT_E
JMP END

;PRINT 'O'

PRINT_O:  
MOV AH,2
MOV DL, 0AH
INT 21H
MOV DL, 0DH 
INT 21H
MOV DL, 'O'
INT 21H  
JMP END

;PRINT 'E'

PRINT_E:  
MOV AH,2
MOV DL, 0AH
INT 21H
MOV DL, 0DH 
INT 21H
MOV DL, 'E'
INT 21H



END:
MOV AH, 4CH
INT 21H


END

