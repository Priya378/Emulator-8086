;Getting a string from keyboard
.model small
.data
input db 10, ?
.code
.startup
mov dx,offset input
mov ah,0Ah
int 21h
add dx,2
mov ah,09h
int 21h
.exit
end
 