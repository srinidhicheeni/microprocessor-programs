cat segment
a db -8h
pos db "+ve",0ah,0dh,24h
neeg db "-ve",0ah,0dh,24h
cat ends
printf macro msg
mov ah,09h
mov dx,offset msg
int 21h
mov ah,4ch
int 21h
endm

lion segment
assume cs:lion,ds:cat

tiger :
mov ax,cat
mov ds,ax
mov al,a
add al,00
js l1
printf pos
l1:printf neeg
lion ends
end tiger
