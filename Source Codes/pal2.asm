;program to check whether the number entered is palindrome or not
.model small
.stack
.data
pal db "palindrome$"
nopal db "not a palindrome$"
  str db 10 ?
.code
.startup
 lea dx,str
 mov ah,0ah
 int 21h 
 
 mov ax,0
 mov al,str[1]  

 sub ax,1  ;to get strlen
 
 add si,ax 
 add si,1  
 mov bh,2h
 div bh
 mov cx,0
 mov cl,al
 mov di,2
 loop1:
   mov bh,str[si]
   cmp bh,str[di]
   jne exit1
   dec si
   inc di
   loop loop1
   lea dx,pal
   mov ah,09h
   int 21h
   jmp end1
   exit1:
   lea dx,nopal
   mov ah,09h
   int 21h
   end1:
end