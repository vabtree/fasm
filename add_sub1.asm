; Adding & subtracting

format PE

start:
        int3
        xor eax,eax                             ; initialize eax to ZERO
        mov al, [example]

section 'example' data readable writeable       ; adding section to PE

example:
        db 41h, 42h, 43h
