;copied from https://github.com/cfenollosa/os-tutorial/tree/master/01-bootsector-barebones
;to compile (creates a .bin file in repo): nasm -f bin bootsector_simple.asm -o bootsector_simple.bin
;to run: qemu-system-x86_64 bootsector_simple.bin

; Infinite loop (e9 fd ff)
loop:
    jmp loop 

; Fill with 510 zeros minus the size of the previous code
times 510-($-$$) db 0
; Magic number
dw 0xaa55 