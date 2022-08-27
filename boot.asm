org 0x7C00                      ; BIOS loads our programm at this address
%include "secondary.asm"; Library made by my own, to simplify code

start:
    jmp main
    init_message: db "    tutormek   ",10,0X0D\,
                  db "", 10,0X0D\,
                  db " _    _     _            ______            ______   ", 10,0X0D\,
                  db "| |  | |   | |          |      |          |      |  ", 10,0X0D\,
                  db "| |  | |   | |          |      |          |      |  ", 0

    buffer: times 10 db 0,0;Buffer to save chars
    none: db "",0

main: 
    ;Prints e inputus del texto, posiciona el cursor para empezar la impresion
    print init_message
    print_new_line
    input buffer
    xor bx, bx
    mov bl,0
    mov cl,0
    mov si, buffer


times 510 - ($ - $$) db 0
dw 0xAA55