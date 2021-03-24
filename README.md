# Lab01- sumador 
Laboratorio 01 introducción a HDL
Estudiante Estefany Alejandra Bautista Franco

## Sumador de 1 bit

Para el sumador de 1 bit, se realizó la operación suma y se uso el comando *reg* para almacenar los valores. El código es el siguiente.



## Diferencias entre los archivos sum1bcc_primitive.v y sum1bcc.v
En el archivo sum1bcc_primitive el sumador de 1 bit se realiza usando compuertas lógicas básicas mientras que en el archivo sum1bcc el sumador de 1 bit se realiza mediante la operación suma y con ayuda del comando *reg* para almacenar dicho valor.


## Sumador de 4 bits

Para el sumador de 4 bits, lo que se hizo fue tomar 4 módulos del sumador de 1 bit y se conectaron. El código usado fue el siguiente.

Luego para probar este nuevo módulo, se realizo un testbench que genera estímulos en las entradas. El código y la simulación se muestran a continuación.

En la simulación se puede ver que para algunos valores el carry out (co) toma el valor de 1. En estos casos, el valor de la suma nos da más de 4 bits. Estos módulos pueden seguirse conectando en cascada para tener un sumador de mayor a 4 bits.

 