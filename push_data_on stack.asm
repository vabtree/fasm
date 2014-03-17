format PE

start:
        int3
        mov eax, var_a
        xor ecx, ecx
        mov cl, 8
        mov ebp, esp
fillstack:
        mov bl, [eax]
        push ebx
        inc eax
        dec cl
        jnz fillstack
        mov esp, ebp    ;restore stack


section 'mdata' data readable writeable

var_a db 1,2,3,4,5,6,7,8
