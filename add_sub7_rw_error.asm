; R/W directly into memory(data-section)

format PE
start:
        int3
        mov ebx, dlabel

; ERROR: operand size not specified
; content at address [ebx] could be any larger or smaller
;        add [ebx], 20h
        add byte [ebx], 20h     ; 'ABC' => 'aBC' directly into data section

section 'sec1' data writeable readable
dlabel:
        db 41h, 42h, 43h
