; R/W in data section

format PE
start:
        int3
        mov ebx, dlabel
        add ebx, 2
        mov al, [ebx]
        add al, 20h     ; convert to lower case
        mov [ebx], al

section 'sec1' data writeable readable

dlabel:
        db 41h, 42h, 43h