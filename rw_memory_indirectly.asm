; Writing to data-sec indirectly using reg as intermediate

format PE

start:
        int3
        mov eax, mdata
        mov ebx, [eax]
        add ebx, 2       ; directly writing to data-sec
        mov dword [eax], ebx

section 'msection' data readable writeable
        mdata db 06h
