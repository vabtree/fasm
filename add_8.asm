; R/W multiple time in data-sec

format PE
start:
        int3
        mov ebx, dlabel         ; ebx = &dlabel
        add byte [ebx], 20h     ; *ebx += 32d
        add ebx, 1              ; ebx++

        add byte [ebx], 20h     ; *ebx += 32d
        add ebx, 1              ; ebx++

        add byte [ebx], 20h     ; *ebx += 32d

section 'sec1' data writeable readable

dlabel:         db 41h, 42h, 43h