.model small
.stack
.data
str1 db "today$"
strlen dw 0h
num dw 2h
str2 db ""
.code
.startup
mov cx,0
mov ax,0
mov si,offset str1
check1:cmp [si],'$'
jz copy
inc si
inc strlen
jmp check1

copy:
mov si,offset str1
mov di,offset str2
add si,num

mov bx,num
mov dx,strlen
sub dx,bx
mov cx,dx
inc cx

loop1:
mov al,[si]
mov [di],al
inc si
inc di
loop loop1
mov str1[bx],'$' 

end