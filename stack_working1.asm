format PE

start:
        int3
        push 1
        push 2
        push 3
        call ret_val
        push 4

ret_val:
        mov eax, 00000001
        shl eax,1
        ret 0