data segment
a db 0ah,0bh,0ch,0dh,0eh,0fh,10h,15h
msg1 db "search found the element @position"
pos dw ?
msge db 13,10,"$"
msg2 db "element not fopund$"
key db 0bh
num dw 08h
data ends
print macro msg
lea dx,msg
mov ah,09h
int 21h
endm
code segment
assume cs:code,ds:data
start:
mov ax,data
mov ds,ax
mov si,00h
mov di,num
dec di
mov bx,00h
back:cmp si,di
ja loc3
mov bx,si
add bx,di
shr bx,1
mov al,a[bx]
cmp al,key
je loc1
jb loc2
mov di,bx
dec di
cmp di,0
js loc3
jmp back
loc2:
mov si,bx
inc si
jmp back
loc3:
print msg2
jmp ahead
loc1:
mov ax,bx
add ax,48
mov pos,ax
print msg1
ahead:
mov ah,4ch
int 21h
code ends
end start

