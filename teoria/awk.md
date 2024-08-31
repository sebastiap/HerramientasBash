# Comando AWK


## Introduccion
Para ejecutar un programa escrito en AWK es necesario llamar al programa intérprete del lenguaje (awk) utilizando como parámetros un programa, escrito entre
comillas simples, y uno o varios ficheros para procesar de acuerdo con ese programa.
AWK asume que va a tener que procesar un flujo de datos (entrada estandar, fichero de texto, tubería) y que este flujo está medianamente estructurado en registros (lineas) y campos (columnas).
Por tanto sabe que tiene que leer cada una de sus lineas como si fuese un registro, separar ese registro en campos, hacer lo que se le ordene con esos campos
y finalmente producir un flujo de salida. Así que el programador apenas tiene que
introducir ningún tipo de instrucción al respecto en el código.

## Sintaxis
 * awk '[programa]' [filename]
 * awk '[programa]' [flujo de entrada]

### Variables predeterminadas
Una de las peculiaridades que permite al intérprete de AWK trabajar como lo hace,es que al leer cada linea da valores a una serie de variables predefinidas:
• NR es el número de la linea que ha leido
• NF es el número de campos en la linea que ha leido
• $0 contiene toda la linea leida
• $1, $2, ... $NF cada uno de los campos leidos

### BEGIN y END
Se puede utilizar BEGIN para ejecutar algo antes del programa y END para corrar algo despues del programa.

### Estructuras dee control
* Se puede utilizar bucles y condicionales como en cualquier lenguaje de control.
* Ademas, se puede redireccionar la salida como en la linea de comando.

## Ejemplos de uso
ps |  awk '{print $1}'
Imprime la primer columna del flujo de datos de ps.

awk ’{print $NR,$0 }’ fichero.txt
muestra en pantalla las lineas del fichero numeradas.

df | awk '/\D:/ {print $1"\t"$2"\t"$3}'
Mostrarme los campos del disco D: tabulados

ps -ef |  awk '{if ($NF == "/usr/bin/bash") print $0}'
Imprime todos los comandos /usr/bin/bash 

awk ’
BEGIN{print "Provincia V1 V2 V3 V4"}
$3>4{print $0}
END{print "ADIOS."}
’ fichero.txt


## Bibliografia
https://www.um.es/innova/OCW/informatica-para-universitarios/ipu_docs/la_shell/awk.pdf
