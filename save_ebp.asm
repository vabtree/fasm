format PE

start:
	int3
	push 4
	push 3
	push 2
	push 1
	call subrout

subrout:
	push 8
	push 7
	push 6
	push 5
	leave
	ret