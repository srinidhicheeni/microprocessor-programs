data segment
        n1 dw 0ffffh
        n2 dw 0ffffh
        result dw ?
data ends
code segment
        assume cs:code,ds:data
        begin:
                mov ax,data
                mov ds,ax
                mov ax,n1
                add ax,n2
                mov result,ax
                mov ah,4ch
                int 21h
code ends
end begin
