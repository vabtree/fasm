; Instructions for moving data in high and low address

format PE

start:
       int3
       mov eax, 0xff
       mov al,03
       mov ah,05
