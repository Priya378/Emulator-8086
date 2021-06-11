;Getting a string from keyboard
.model small
.data
input db 10, ?
strlen db ?
.code
.startup
mov dx,offset input
mov ah,0Ah
int 21h
mov al,input[1]
mov strlen,al
dec strlen
mov dl,strlen
add dl,30h
mov ah,02h
int 21h
.exit
end