; push strings on stack instead of appearing in the file

format PE GUI

  int3
  push 'c'
  xor eax, eax
  push 'b'
  xor ebx, ebx
  push 'a'
  pop eax


