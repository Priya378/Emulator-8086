.MODEL small
.STACK
.DATA
.CODE
.STARTUP
mov al,20h
mov bl, 0ah
add al,bl ;3a in al
aaa; 100
mov al,42h
cbw
mov bl,38h
sub al,bl ;0a in al
aas; ff04 in ax
;END
mov ax,3h
mov bx,9h
mul bx
aam
aad
end