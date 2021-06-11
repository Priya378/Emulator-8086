 .MODEL small
.STACK
.DATA
num1 db 10h
num2 db 10h
product1 dw 0h

num3 dw 100h
product2 dw 0h 
.CODE
.STARTUP

mov ax,0h
mov al,num1
mov bh,num2  
mul bh ;source is 8 bit, result in ax
mov product1, ax ; result in first element of product1
mov ax,10h
mov bx, num3
mul bx  ;source is 16 bit, result in ax
mov product2, dx
mov product2+2,ax ; result in first two elements of product2
lea si, num1
mov ax,10h
mul byte ptr [si]
lea bx,num3
mov ax,7h
mul word ptr [bx] 
END



