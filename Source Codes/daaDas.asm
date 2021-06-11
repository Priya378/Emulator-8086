.MODEL small
.STACK
.DATA
.CODE
.STARTUP

mov al,30h
mov bl, 0ah
add al,bl
daa; 40 in al

mov al,14h
mov bl,0ah
sub al,bl ;0a in al
das; 04 in al
END