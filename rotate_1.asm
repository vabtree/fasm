format PE
start:
	int3
	xor eax, eax
	mov eax, 1234h
	rol eax,1
	ror eax,1

	xor eax, eax
	mov eax, 1234h
	rol eax,2
	ror eax,2

	xor eax, eax
	mov eax, 1234h
	rol eax,4
	ror eax,4