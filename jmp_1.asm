; R/W using jmp instruction

format PE
start:
       int3
       mov ebx, dlabel

lower:
       add byte [ebx], 20h
       add ebx, 1
       jmp lower        ; CAUTION: uncontrolled loop

section 'sec1' data writeable readable

dlabel: db 41h, 42h, 43h