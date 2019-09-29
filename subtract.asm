data segment
        a db 01h
        b db 04h
        res db ?
data ends

code segment
        assume cs:code,ds:data
        begin:
                mov ax,data
                mov ds,ax
                mov al,a
                sub al,b
                mov res,al
                mov ah,4ch
                int 21h
code ends
end begin
