.MODEL small
.STACK
.DATA
str1 db "computer$"
str2 db ?
.CODE
.STARTUP
mov dx, ds
mov es, dx
lea si,str1
lea di,str2
mov ax,6566h
stosb
dec di
stosw
dec di
dec di
movsb
movsw 
lodsb
lodsw
lea si,str1
lea di,str1+2
cmpsb
cmpsw
lea si,str1
mov cx,3
rep lodsb
mov cx,3
lea si,str1
lea di,str1+1
cmpsb
repnz lodsb
mov al,88h
lea di,str1
scasb
scasw
END                
