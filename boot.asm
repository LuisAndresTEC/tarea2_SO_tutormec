org 0x7C00                      ; BIOS loads our programm at this address
%include "secondary.asm"; Library made by my own, to simplify code

start:
    jmp main
    init_message: db "    tutormek   ",10,0X0D\,
    
    second_message: db " _    _     _     _    _   ", 10,0X0D\,
                    db "| |  | |   | |   | |  | |  ", 10,0X0D\,
                    db "| |  | |   | |   | |  | |  ", 10,0X0D\,
                    db "Para precionar la tecla utilica su dedo meñique ", 0

    buffer: times 10 db 0,0;Buffer to save chars
    none: db "",0

main: 
    ;Prints e inputus del texto, posiciona el cursor para empezar la impresion
    print init_message
    ;replacer
    ;print second_message
    print_new_line
    input buffer
    mov bl,0
    mov cl,0
    mov si, buffer
    comp_char buffer

times 510 - ($ - $$) db 0
dw 0xAA55