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

| Fecha      | Hora de inicio | Hora final | Horas invertidas | Actividad realizada                                          |
| ---------- | -------------- | ---------- | ---------------- | ------------------------------------------------------------ |
| 09/08/2022 | 16:00          | 17:00      | 1:00             | Descarga y configuración del ambiente desarrollo             |
| 09/08/2022 | 17:00          | 21:00      | 4:00             | Investigación básica sobre el funcionamiento y estructura del lenguaje Rust y familiarización con el lenguaje |
| 09/08/2022 | 21:00          | 22:00      | 1:00             | Creación del repositorio de trabajo y comits iniciales       |
| 10/08/2022 | 19:00          | 21:30      | 2:30             | Desarrollo de la estructura de captura de entradas de texto y validaciones para la tarea |
| 10/08/2022 | 21:30          | 22:00      | 0:30             | Inicio de la investigación sobre como aplicar llamadas al sistema mediante la herramienta |
| 11/08/2022 | 19:00          | 22:00      | 3:00             | Continuación de la investigación sobre como aplicar llamadas al sistema mediante la herramienta |
| 12/08/2022 | 16:00          | 18:00      | 2:00             | Continuación de la investigación sobre como aplicar llamadas al sistema mediante la herramienta y experimentación sobre el uso de bibliotecas |
| 13/08/2022 | 9:00           | 11:00      | 2:00             | Actualización y redacción de los avances en la documentación |
| 13/08/2022 | 12:30          | 13:30      | 1:00             | Intentado habilitar la biblioteca Rust en mi computadora     |
| 13/08/2022 | 15:00          | 16:30      | 1:30             | Se agregaron las dependencias al sistema y experimentación   |
| 14/08/2022 | 9:00           | 11:00      | 2:00             | Etapa 1 desarrollo de código                                 |
| 15/08/2022 | 9:00           | 11:00      | 2:00             | Análisis de algoritmos para el desarrollo                    |
| 15/08/2022 | 13:00          | 16:00      | 3:00             | Etapa 2 desarrollo de código                                 |
| 16/08/2022 | 8:00           | 10:00      | 2:00             | Etapa 3 desarrollo de código(commit funcional sin la capacidad de contar las llamdas de un mismo tipo) |
| 13/08/2022 | 12:30          | 14:30      | 2:00             | Etapa 4 desarrollo de código, trabajo en el conteo de las llamadas |
| 13/08/2022 | 14:30          | 16:00      | 1:30             | Actualización parcial de la documentación                    |
| 13/08/2022 | 16:00          | 18:00      | 2:00             | Última etapa de desarrollo del código                        |
| 13/08/2022 | 18:00          | 19:00      | 1:00             | Conclusión documentación                                     |
| **Total**  |                |            | 34:00            |                                                              |

## Auto evaluación

### Estado final: 

​	El programa quedó funcionando de acuerdo a los requerimientos establecidos en la documentación aplicando todos los procedimientos y mostrando toda la información solicitada 

### Limitaciones adicionales: 

Fueron muchisimos los problemas que se presentaron durnate la ejecion y todos fueron solventados, algunos pueden ser:

1. Encontrar la bliblioteca caps de conectarse al SO y hacer el trace necesario.

2. Aprender a usar esa biblioteca.

3. Manipular ese volumen de datos en estructuras que permitieran su manipulación de forma sencilla.

4. Encontrar la forma de hacer que la opción `-V` fuera posible. En este caso quedó funcionando con la tecla `ENTER`

   

### Reporte de commits: 

Author: LuisAndresTEC <lrojasmurillo7@estudiantec.cr>
Date:   Tue Aug 16 18:02:10 2022 -0600

    codigo final 1.0

commit 42460fdd378ff2c7ab50f38b010e0268344a79b9
Author: LuisAndresTEC <lrojasmurillo7@estudiantec.cr>
Date:   Tue Aug 16 08:34:27 2022 -0600

    primer avance en el código

commit a1171966d45ebf46f3b85eb1ddbcdb07a8458c4b
Author: LuisAndresTEC <lrojasmurillo7@estudiantec.cr>
Date:   Sat Aug 13 16:38:58 2022 -0600

    use nix::unistd::{fork, ForkResult, Pid};

commit e01c03777f2a9bea6e5b61f0502dace33f62f2bc
Author: LuisAndresTEC <lrojasmurillo7@estudiantec.cr>
Date:   Fri Aug 12 16:46:21 2022 -0600

    commit1

### Calificación:

| Rubro                      | Calificación |
| -------------------------- | ------------ |
| Opción -v: 10 %            | 10           |
| Opción -V: 20 %            | 15           |
| Ejecución de Prog: 20 %    | 15           |
| Análisis de Syscalls: 30 % | 28           |
| Documentación: 20 %        | 18           |
| **Porcentaje final**       | 86           |

## Lecciones aprendidas: 

Una vez finalizada esta asignación solo creo que se puede resaltar que es importante encontrar la librería rápidamente y empezar a experimentar dedicar bastante tiempo a la investigación y lectura, sin dejar de lado estar muy consciente de la materia vista anteriormente ya que esto ayuda mucho a poder comprender la dinámica de trabajo 

## Bibliografía:

- "Implementing strace in Rust". Jakob Waibel. https://jakobwaibel.com/2022/06/06/ptrace (accedido el 16 de agosto de 2022).https://github.com/upenn-cis198/homework4
- "System programming in Rust, take 2". 128nops and counting. https://carstein.github.io/2022/05/29/rust-system-programming-2.html (accedido el 16 de agosto de 2022).
- "ptrace(2) - Linux manual page". Michael Kerrisk - man7.org. https://man7.org/linux/man-pages/man2/ptrace.2.html (accedido el 16 de agosto de 2022).
- "personality(2) - Linux manual page". Michael Kerrisk - man7.org. https://man7.org/linux/man-pages/man2/personality.2.html (accedido el 16 de agosto de 2022).
- "Enlaces a Variables | El Lenguaje de Programacion Rust". Page Not Found Â· GitBook (Legacy). https://goyox86.gitbooks.io/el-libro-de-rust/content/variable-bindings.html (accedido el 16 de agosto de 2022).
