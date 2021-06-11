.MODEL small
.STACK
.DATA
str1 db "computer$"
str2 db ?
num4 db 5h
.CODE
.STARTUP
mov dx, ds
mov es, dx
lea si,str1
lea di,str1
mov al, 0FFh 
scasw
END   