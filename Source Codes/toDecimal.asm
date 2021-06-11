.model small
.data
num db ?
.stack
.code
.startup

mov ax, 1234h
mov cx,4h
mov dx,ax
mov bl,10d

loop1:
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
loop loop1

dec si
mov cx,4
mov ax,0
mov ah,2h
mov dx,0
mov dl, num[si]

loop2:
int 21h
dec si
mov dl,num[si]
loop loop2

end
