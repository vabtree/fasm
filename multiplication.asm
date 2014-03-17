; Multiplication using repeated addition
; TODO: complete the loop

format PE



start:
	int3
	xor eax, eax
	xor ebx, ebx
	mov al,byte [var_a]
	mov bl,byte [var_b]

addt:
	add eax,eax	  ; cannot perform 'add ah,ah?'
	dec bl
	jnz addt
	
	mov ebx, var_r
	mov [ebx], eax

section 'pdata1' data readable writeable
       var_a: db 10h
       var_b: db 2h
       var_r: db 00h
