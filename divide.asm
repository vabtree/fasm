; Division using repeated subtraction method

format PE

start:
        int3
        mov eax, [dividend]
        xor ecx,ecx
        
subt:
        sub eax,2       ; 2 is divisor
        inc ecx         ; result: how many times we were able to subtract until we reach zero
        cmp eax,0
        jnz subt

        mov eax, result ; eax is not need & is now 00, store address of result here
        mov [eax], ecx

section 'pdata1' data readable writeable
        dividend: db 20h

section 'pdata2' data  writeable
        result: db 00h

; IMPORTANT ORDER OF INSTRUCTION
; if we do:
; sub eax,2
; inc ecx        this will reset Z flag to 0 when eax is zero on subtraction
; now we have to explicitly check if eax==0 by cmp eax,0
; cmp eax,0
; jnz subt

; But if inc ecx initially then, Z flag is unaffected, such as
; inc ecx
; sub eax,2
; jnz subt
; ...