.MODEL small
.STACK
.DATA
num1 db 10h
num2 db 0ah
num3 dw 1004h 
.CODE
.STARTUP
mov al,num1
mov bh,num2  
div bh ;source is 8 bit, result in ax
mov dx,0
mov ax, num3
mov bx,1000h
div bx ;source is 16bit, result in bx
END