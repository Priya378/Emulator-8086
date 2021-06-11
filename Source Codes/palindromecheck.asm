.model small
.stack
.data
str db "abcba$"
strlen db 0h
flag db 1h
.code


.startup
mov cx,0
mov ax,0

mov si,offset str
check1:cmp [si],'$'
jz palindrome
inc si
inc strlen
jmp check1

palindrome:
mov dx,ds
mov es,dx
mov si,offset str
mov di,offset str
mov cl,strlen
dec strlen
mov al,strlen

add di,ax

loop1:cmpsb

jne exit1
dec di
dec di
loop loop1

exit1:cmp cl,0h
jz exit2
mov flag,0h

exit2:
.exit

end

