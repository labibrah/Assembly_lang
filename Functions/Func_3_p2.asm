.model small
.stack 100h
.code

mov ah, 1          ;black screen for input 

int 21h   ;input in al  execute line before
mov bl,al      ;mov al to bl     

int 21h   ;input in al  execute line before
mov cl,al

int 21h   ;input in al  execute line before
mov ch,al




mov ah,2        ;output

mov dl,20h
int 21h 
mov dl,ch
int 21h  

mov dl,cl
int 21h
mov dl,bl
int 21h




EXIT:
mov ah, 4ch
int 21h 