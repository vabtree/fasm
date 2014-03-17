; reading from data section
format PE
start:
        int3
        mov ebx, dlabel
        add ebx, 2      ; caution address is 32-bit so we need ebx and not bh/bx/bl
        mov al, [ebx]

section 'sec1' data readable writeable

dlabel:
        db 41h, 42h, 43h

