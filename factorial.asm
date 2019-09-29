data segment
n db 04h
fact dw ?
data ends
code segment
assume cs:code,ds:data
begin:
mov ax,data
mov ds,ax
mov bh,00
mov ax,01
mov bh,00
mov bl,n
call factorial
mov fact,ax
mov ah,4ch
int 21h
factorial proc
cmp bx,01
je l1
push bx
dec bx
call factorial
pop bx
mul bx
l1:ret
factorial endp
code ends
end begin

