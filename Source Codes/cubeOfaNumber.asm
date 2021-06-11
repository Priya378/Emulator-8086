.MODEL small
.STACK
.DATA
num db 0
str db 10 ?
.CODE
.STARTUP
lea dx,str
mov ah, 0ah
int 21h

mov ax,0
mov al,str[1]

sub ax,1
mov cl,al; storing number of digits

mov di,2 ;starting of numbers
mov bh,cl; saving cl
loop1:
mov al,01h
cbw
mov bl,str[di]
sub bl,30h
mul bl
mul bl
mul bl ;hexadecimal result
;initialisation conditions for decimal conversion 
mov cx,4h
mov dx,ax
mov bl,10d
mov si,0
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
mov ah,2h
mov dx,0
mov dl, num[si]

;displaying in reverse order
loop3:
int 21h
dec si
mov dl,num[si]
loop loop3

inc di
mov cl,bh ;restoring c value
loop loop1 

END