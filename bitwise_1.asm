; Basic usuage of OR, AND operations and flags set by them
 format PE
 start:
	int3
	xor eax, eax
	mov al, 0101b
	or al, 1

	xor eax, eax
	mov al, 0101b
	and al, 10b
	mov eax, 1b
	jnz loc
	; some random commands
	push 1
	push 2
	pop eax
	pop eax
loc:
	xor eax, eax

