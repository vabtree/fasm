; Moving content in ah from start label

format PE

start:
        int3
        mov eax, 11111111b
        mov al, 00
        mov ah, [start]  ; ah = CC00