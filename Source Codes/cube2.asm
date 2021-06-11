.MODEL small
.STACK
.DATA
num db 0,0,0,0,0,0
str db 10 ?
temp dw 0
t db 0
.CODE
.STARTUP

lea dx,str
mov ah, 0ah
int 21h

mov ax,0
mov al,str[1]

sub ax,1
mov cl,al

mov si,2

loop1:
mov al,01h
mov bl,str[si]
sub bl,30h
mul bl
mul bl
mul bl
aam



mov bx,0
mov bl,ah
mov ax,bx 
aam

;lea dx, num
;mov num, ah
;mov num+1,al
;mov num+2, ' '
;mov num+3, '$'

;mov ah,09h
;int 21h
;inc si
mov ax,0
mov bx,0
inc si
loop loop1 

END
