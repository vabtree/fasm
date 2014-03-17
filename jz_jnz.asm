; Using JZ, JNZ

format PE
start:
        int3
        mov ebx, dlabel
        mov ecx, 3

lower:
        add byte [ebx], 20h
        inc ebx
        dec ecx
        jnz lower
        xor eax, eax

section 'sec1' data writeable readable

dlabel: db 41h, 42h, 43h