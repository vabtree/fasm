format PE
start:
	int3
	xor eax, eax
	mov eax, 1234h
	shl eax,1
	shr eax,1

	xor eax, eax
	xor eax, eax
	mov eax, 1234h
	shl eax, 2
	shr eax, 2

	xor eax, eax
	xor eax, eax
	mov eax, 1234h
	shl eax, 3
	shr eax, 3