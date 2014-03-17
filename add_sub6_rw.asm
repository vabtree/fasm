; R/W multiple times usign reg as intermediate

format PE

start:
        int3
        mov ebx, dlabel
        mov al, [ebx]
        add al, 20h
        mov [ebx], al

        add ebx,1
        mov al, [ebx]
        add al, 20h
        mov [ebx], al

        add ebx,1
        mov al, [ebx]
        add al, 20h
        mov [ebx], al

section 'sec1' data readable writeable

dlabel: db 41h, 42h, 43h

