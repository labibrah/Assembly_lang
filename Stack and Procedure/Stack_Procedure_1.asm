INCLUDE 'EMU8086.INC'
.MODEL SMALL 
.STACK 100H 
.DATA 
 MSG1 DB "Enter a line of text: $" 
 MSG2 DB 0AH, 0DH, "Reverse: $"   
 MSG3 DB 0AH, 0DH, "The stack is empty.$" 
     
.CODE 
 MOV AX, @DATA 
 MOV DS, AX 
     
 MOV AH, 9 
 LEA DX, MSG1 
 INT 21H                       
     
 MOV CX, 0        ;input count set to 0 
     
 INPUT:
                       ;take input 
 MOV AH, 1 
 INT 21H    
 CMP AL, 0DH      ;check if CRET? 
 JE DISPLAY       ;if CRET, exit loop & go to display
 
 CMP CX, 16
 JE SIZE_EXCEED 
             
 XOR AH, AH              ;clear AH 
 PUSH AX          ;push the input on stack 
 INC CX                       ;increment input count 
 JMP INPUT        ;loop back 
     
 DISPLAY: 
 CMP CX, 0H       ;check if stack is empty 
 JE EMPTY_STACK   ;if empty go to empty_stack 
                      
 MOV AH, 9        ;if not not empty, display the reverse 
 LEA DX, MSG2 
 INT 21H 
 
  
     
 REV: 
 POP DX                       ;get a character from stack 
 MOV AH, 2 
 INT 21H                      ;display the character 
     
 LOOP REV 
 JMP EXIT         ;as done with display, go to exit 
 
 SIZE_EXCEED:
 PRINTN "The given size exceeded"
 JMP EXIT
     
 EMPTY_STACK: 
 MOV AH, 9 
 LEA DX, MSG3     ;show the empty stack message 
 INT 21H 
     
 EXIT: 
 MOV AH, 4CH      ;terminate program 
 INT 21H 