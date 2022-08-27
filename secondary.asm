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
    print_new_line
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

%macro comp_char 1
    mov ah, "a"
    mov al, [%1]
    cmp al, ah
%endmacro

;Limpia registros
%macro clean_registers 0
    xor eax, eax
    xor ebx, ebx
    xor ecx, ecx
    xor edx, edx
    xor esi, esi
%endmacro