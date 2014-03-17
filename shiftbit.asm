format PE

start:
    int3
    xor eax, eax
    push 01
    pop eax

shiftbit:
    rol eax, 1
    jmp shiftbit
