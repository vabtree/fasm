; Increment the content at location

format PE

start:
        int3
        xor eax, eax
        mov ah, [dlabel]        ; store content at loc dlabel into ah, ah=41
        add ah, 1               ; ah=42


section 'sec1' data writeable readable

dlabel:
        db 41h, 42h, 43h