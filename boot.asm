org 0x7C00                      
;%include "secondary.asm"
%macro print 1
    mov si, %1            
    mov ah, 0x0E          
    %%loop	lodsb                  
        or al, al               
        jz %%end                 
        int 0x10              
        jmp %%loop               
    %%end:
%endmacro

;Recibe un lugar donde se almacenara el caracter pedido por el usuario 
%macro input_character 1
    mov ah, 0x0
	int 0x16
	mov [%1] , al
%endmacro

;Loop que recibe donde se guardara el input y luego pide caracteres al usuario
%macro input 1
    %%read_string: 
        mov bx, %1
    %%start_process:
        cmp cx,10
        jz %%end_read
        input_character bx 
        print bx
        inc bx
        inc cx
    %%end_read:

%endmacro

;Imprime un "new line" en pantalla
%macro print_new_line 0
    mov al, 0x0A
    int 10h
    mov al, 0x0D
    int 10h
%endmacro

;Imprime un caracter pasado por parametro
%macro print_char 1
    mov ah, 0x0e 
    mov al, [%1]
    int 0x10
%endmacro

;Loop que imprime muchas new lines
%macro clear_screen 0

    mov cx, 40
    %%loop_clear:
        cmp cx, 20
        jz %%end_loop
        dec cx
        print_new_line
        jmp %%loop_clear
    %%end_loop:
        print_new_line
%endmacro

%macro comp_char 1
    xor ax, ax 
    mov ax, "a"
    xor bx, bx
    mov bx, [%1]
    cmp ax, bx
    jz %%correctKey
    clear_screen
    
    incorrecKey: db"tecla incorrecta",0
    mov si, incorrecKey
    print incorrecKey
    
    %%correctKey:
    keyCorrect: db "Ha presionado la letra correcta",0
    mov si, keyCorrect
    print keyCorrect
%endmacro


start:
    jmp main
    init_message:   db "  tutormek ", 10,0X0D\,
                    db "     l      a", 10,0X0D\,
                    db " _   _    _    _   _   ", 10,0X0D\,
                    db "| | | |  | |  | | | |  ", 10,0X0D\,
                    db "| | | |  | |  | | | |  ", 10,0X0D\,
                    db "Utilice su dedo meñique ", 0

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