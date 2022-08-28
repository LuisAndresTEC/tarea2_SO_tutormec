;Macro basica, genera un loop que imprime lo que se pase por parametro en pantalla
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









;no sirve por el momento 
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


;Limpia registros
%macro clean_registers 0
    xor eax, eax
    xor ebx, ebx
    xor ecx, ecx
    xor edx, edx
    xor esi, esi
%endmacro