;copied from https://github.com/cfenollosa/os-tutorial/tree/master/02-bootsector-print
;to compile (creates a .bin file in repo): nasm -f bin bootsector_hello.asm -o bootsector_hello.bin
;to run: qemu-system-x86_64 bootsector_hello.bin


mov ah, 0x0e ; tty mode
mov al, 'H'
int 0x10
mov al, 'e'
int 0x10
mov al, 'l'
int 0x10
int 0x10 ; 'l' is still on al, remember?
mov al, 'o'
int 0x10

jmp $ ; jump to current address = infinite loop

; padding and magic number
times 510 - ($-$$) db 0
dw 0xaa55 