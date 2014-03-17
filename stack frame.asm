.text:00401270 ; int __cdecl main(int argc,const char ** argv,const char * envp)
.text:00401270 push ebp		;save current ebp on stack
.text:00401271 mov ebp, esp	;current esp will be the new base of frame pointer
.text:00401273 sub esp, 80h ;make allocation on the stack '-' means allocation
.text:00401279 push offset aReverseEnginee