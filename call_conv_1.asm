format PE

start:
        int3
        push 3
        push mdata
        call subroutine

subroutine:
        mov ebx, [esp+4]
        mov ecx, [esp+8]

lower:
        add byte [ebx], 20h
        inc ebx
        loop lower
        ret

section 'msection' data readable writeable
        mdata db 41h, 42h, 43h

; (assume) STACK total stack memory = 100KB

; esp   => 100
; esp-1 => 99
; esp-2 => 98

; esp+2 => 97
; esp+1 => 96
; esp   => 95
; esp-1 => 94
; esp-2 => 93
; (upside down)

; - means allocation on stack
; + means deallocation on stack
