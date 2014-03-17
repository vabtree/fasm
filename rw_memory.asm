
format PE

start:
        int3
        mov eax, mdata
        add byte [eax], 2       ; directly writing to data-sec
;       mov mdata, eax          ;ERROR: Invalid operand
        mov ebx, pdata          ; mov offset of pdata into ebx
        mov ecx, [ebx]          ; mov data from ebx to ecx

section 'msection' data readable writeable
        mdata db 06h
        pdata db 'A'
