;Getting a character from keyboard
;printing 1 if odd, 0 if even
.model small
.data
odd db 0
.code
.startup
mov ah,01h
int 21h
sub al,30h
and al,1h
jnz print
mov dl,odd
add dl,30h
mov ah,02h
int 21h
.exit


print:
mov odd,1
mov dl,odd
add dl, 30h
mov ah,02h
int 21h

end
 