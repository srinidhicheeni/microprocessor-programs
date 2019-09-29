data segment
        n1 db 06h
        n2 db 08h
        res db ?
data ends

code segment
        assume cs:code,ds:data
        begin:
                mov ax,data
                mov ds,ax
                mov al,n1
                add al,n2
                mov ah,00
                mov cx,2
                div cx
                mov res,al
                mov ah,4ch
                int 21h
code ends
end begin
