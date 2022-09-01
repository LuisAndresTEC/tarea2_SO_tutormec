# Documentación Tarea #2

#### Luis Andrés Rojas Murillo.

#### Carné: 2020124333

## Introducción:

​	En esta tarea se va a a desarrollar el tutor de mecanografía llamado Tutormec el cual se desenvolverá como un sistema operativo a nivel mas primitivo de la maquina, booteando desde una memoria usb

## Ambiente de desarrollo

- **Visual studio code**: como IDLE para la creación del código.
- **GitHub**: como repositorio de trabajo.
- **BIOS**: Como ambiente para correr el código 
- Y otras mas, que se detallarán al finalizar la tarea.

## Estructuras de datos y funciones

- Funciones o Macros:
  - `print`: Imprime las estructuras que se le pasen por parámetro.
  - `input_character`: Capta un caracter de la consola.
  - `input`: función que dirige el proceso de captar inputs.
  - `print_new_line`: función que imprimen o genera una linea vacía en la pantalla.
  - `print_char`: recibe un caracter como parámetro y lo imprime.
  - `clear_screen`: Macro que limpia la pantalla por completo.
  - `comp_char`: Macro que compara dos caracteres
  - `start`: función que configura datos de arranque 
  - `main`: función principal

- **Estructuras**
  - **Funciones**
  - **Macros**


## Instrucciones para ejecutar el programa

1. Compilar el proyecto.

   1. Para compilar se debe de ejecutar el siguiente comando 

       		`nasm -f bin NombreArchivo.asm -o NombreArchivo.bin`

2. Se copia el binario en la memoria USB.

   1. Para copiar se debe de ejecutar el siguiente comando.

   2. Desde la ubicación donde se encuentra el archivo binario.

      ​        `sudo dd if=NombreArchivo.bin of= Direccion del puerto de la memoria`
   
3.      Se pone a reiniciar la computadora

3.      Se pone en modo heredado 

3.      Se pone como prioridad de arranque la memoria usb en el puesto número 1 

3.      Y en teoría la pc deberia de bootear sobre la memoria y mostrar el proyecto 

      ​																																																																							

## Actividades realizadas por el estudiante

| Fecha      | Hora inicio | Hora final | Cantidad de horas | Descripción                                      |
| ---------- | ----------- | ---------- | ----------------- | ------------------------------------------------ |
| 23/08/2022 | 19:00       | 21:00      | 2:00              | Investigación sobre como hacer que la usb bootee |
| 24/08/2022 | 19:00       | 20:30      | 1:30              | Investigación y prueba del booteo                |
| 25/08/2022 | 17:00       | 18:30      | 1:30              | Establecimiento formal de booteo                 |
| 26/08/2022 | 18:30       | 22:00      | 3:30              | Investigación y experimentación                  |
| 27/08/2022 | 8:00        | 12:00      | 4:00              | desarrollo inicial del tutormec                  |
| 27/08/2022 | 13:30       | 18:00      | 1:30              | desarrollo de tutormec                           |
| 27/08/2022 | 21:00       | 22:00      | 1:00              | Corrección de errores y commit de validación     |
| 29/08/2022 | 18:00       | 21:00      | 3:00              | Conclusión d la documentación                    |



## Auto evaluación

### Estado final: 

​	El programa quedó funcionando de forma parcial su funcionamiento quedó limitado a lo que logré hacer investigando, sin embargo a la hora de presionar una letra como confirmación deja la letra si es la correcta y limpia la pantalla si es incorrecta y las letras no se mueven.

### Limitaciones adicionales: 

4. Las letras no se mueven

4. A la hora de verificar si la letra presionada es correcta el programa no imprime un mensaje directamente sino que en caso de respuesta incorrecta limpia la pantalla  y si es correcta solo sale la letra presionada

   

### Reporte de commits: 

commit 13bda6b15f4336831f3ffdca83c69c2512d3eb6a (HEAD -> main, origin/main)
Author: LuisAndresTEC <lrojasmurillo7@estudiantec.cr>
Date:   Mon Aug 29 20:14:19 2022 -0600

    Último commit antes de terminar la documentación

commit 7da675c07863faa05d292e983f7ac93a5e575495
Author: LuisAndresTEC <lrojasmurillo7@estudiantec.cr>
Date:   Sat Aug 27 21:26:00 2022 -0600

    reparación commit anterior

commit 627650baed241eb71e5147c09fa424ed12590660
Author: LuisAndresTEC <lrojasmurillo7@estudiantec.cr>
Date:   Sat Aug 27 21:14:23 2022 -0600

    condicional funcional pero el resultado no se miestre e inio de la documantacón

### Calificación:

| Rubro                    | Calificación |
| ------------------------ | ------------ |
| Sector de Arranque (30%) | 30           |
| Tutormec (50%)           | 35           |
| Documentación (20%)      | 20           |
| **Porcentaje final**     | 85           |

## Lecciones aprendidas: 

​	En este trabajo he aprendido que ensamblador es un lenguaje muy complejo y poderoso, no puedo decir que logré aprender como usarlo  a la perfección pero al menos logré desarrollar funciones y macros capaces de desarrollar funciones básicas

## Bibliografía:

- "Interchange Letters From String in Assembly Language 8086". Stack Overflow.
  https://stackoverflow.com/questions/57643126/interchange-letters-from-string-in-assembly-language-8086 (accedido el 24 de agosto de 2022).
- "How can I clear the screen without having to fill it". Stack Overflow. https://stackoverflow.com/questions/8239143/how-can-i-clear-the-screen-without-having-to-fill-it (accedido el 29 de agosto de 2022).
- "Assembly: Changing character in string". Stack Overflow. https://stackoverflow.com/questions/27141228/assembly-changing-character-in-string (accedido el 29 de agosto de 2022).
- "Replace string in Assembly code". Code Maven - for people who code. https://code-maven.com/slides/python/replace-string-in-assembly-code (accedido el 29 de agosto de 2022).
