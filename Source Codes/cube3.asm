.MODEL small
.STACK
.DATA
num db 0,0,0,0,0,0
str db 10 ?
c db ?
s dw ?
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
mov c, cl
;mov s,si

loop1:
mov al,01h
mov bl,str[si]
sub bl,30h
mul bl
mul bl
mul bl
aam




dec c
 
mov cx,4h
mov dx,ax
mov bl,10d

loop2:
div bl
mov num[si],ah
add num[si], 30h
inc si
mov al,ah
cbw
sub dx,ax
mov ax,dx
div bl
mov dx,ax
loop loop2

dec si
mov cx,4
mov ax,0
mov ah,2h
mov dx,0
mov dl, num[si]

loop3:
int 21h
dec si
mov dl,num[si]
loop loop3














mov ax,0
mov bx,0
mov si,s
inc si

mov cl,c

loop loop1 

END