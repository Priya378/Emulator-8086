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
cbw

mov si,2

loop1:
mov al,01h
mov bl,str[si]
sub bl,30h
mul bl
mul bl
mul bl
aam

add ax,3030h
mov dl,ah
mov ah,02h
int 21h

mov dl,al
int 21h

mov ax,0
mov bx,0
inc si
loop loop1 

END