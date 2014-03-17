; Using loop

format PE
start:
        int3
        mov ebx, dlabel
        mov ecx, 3
lower:
        add byte [ebx], 20h
        inc ebx
        loop lower     ; ecx is auto decremented

section 'sec1' data readable writeable

dlabel: db 41h, 42h, 43h