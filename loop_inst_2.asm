format PE

start:
        int3
        mov ebx, mdata
        mov ecx, 3
        push ecx
lower:
        add byte[ebx], 20h
        inc ebx
        loop lower
        pop ecx
        mov al,0

section 'sec1' data readable writeable
        mdata db 41h
