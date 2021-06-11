.model small
.stack
.data
num db 0h
  str db 10 ?
.code
.startup
 lea dx,str
 mov ah,0ah
 int 21h 
 
 mov ax,0
 mov al,str[1]  

 sub al,1 ; strlen
 
 add si,2
 
 mov cx, 0h
 mov cl, al
 
 loop1:
   mov bh,str[si]
   cmp bh,'a'
   je cont
   cmp bh,'e'
   je cont
   cmp bh,'i'
   je cont
   cmp bh,'o'
   je cont
   cmp bh,'u'
   je cont
   inc si
   loop loop1
   jmp print
   
   cont:
   inc si
   inc num
   loop loop1
   
 
   print:
   mov dx,0
   mov dl,num
   add dl,30h
   mov ah,02h
   int 21h

exit:
.exit   
end