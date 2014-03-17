;
format PE
start:
	int3
       xor eax, eax
       mov eax, 1234h
       rol eax,4
       ror eax,4