; Using Indirect addressing for adding

format PE

start:
        int3
        xor eax, eax
        mov ebx, example_label          ; mov address of label into ebx
        mov al, [ebx]                   ; mov content at memory cell [ebx] into al


section 'sec1' data writeable readable

example_label:
        db 41h, 42h, 43h