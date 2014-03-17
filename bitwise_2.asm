format PE GUI
start:
	int3
	push 0	     ;uType
	push mdata   ;title
	push mdata   ;text message
	push 0	     ;handle of owner window
	call [MessageBoxA]
	push 0
	call [ExitProcess]



section 'sec-flat' data readable writeable
mdata db '0xC0DE101',0

section  '.idata' import data readable writeable

  dd 0,0,0, RVA kernel_name, RVA kernel_table
  dd 0,0,0, RVA user_name, RVA user_table
  dd 0,0,0,0,0

kernel_table:
  ExitProcess dd RVA _ExitProcess
  dd 0

user_table:
  MessageBoxA dd RVA _MessageBoxA
  dd 0

  kernel_name db 'KERNEL32.DLL', 0
  user_name   db 'USER32.dLL', 0

  _ExitProcess dw 0
  db 'ExitProcess', 0
  _MessageBoxA dw 0
  db 'MessageBoxA', 0