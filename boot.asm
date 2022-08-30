org 0x7C00                      
%include "secondary.asm"

start:
    jmp main
    init_message:   db "    tutormek   ", 10,0X0D\,
                    db "      l        a", 10,0X0D\,
                    db " _    _     _     _    _   ", 10,0X0D\,
                    db "| |  | |   | |   | |  | |  ", 10,0X0D\,
                    db "| |  | |   | |   | |  | |  ", 10,0X0D\,
                    db "Para precionar la tecla utilica su dedo meñique ", 0

    buffer: times 10 db 0,0

main: 
    print init_message
    print_new_line
    input buffer
    mov bl,0
    mov cl,0
    mov si, buffer
    comp_char buffer

times 510 - ($ - $$) db 0
dw 0xAA55