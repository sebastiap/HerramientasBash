# Comandos

## Comandos de la linea de comandos
* ls -lista los ficheros de un directorio.
-a muestra los archivos ocultos
-l lista en formato largo
-h muestra el size en formato humano
-1 muestra un fichero por linea
-r Recursivo (ve subdirectorios)
head - Muestra las primeras 10 lineas de un archivo.
* tail - Muestra las primeras 10 lineas de un archivo.
* wc - cuanta la cantidad de lineas , palabras y caracteres. 
-l lineas
-w palabras 
-m caracteres
* rm - Elimina ficheros o directorios.
* mv - mueve un fichero de un directorio a otro.
* rmdir Borra directorios vacios
* touch - Cambia de un fichero - Crea un nuevo si no existe ninguno con ese nombre.
* chmod - cambia los permisos de usuario , grupo y owner.
* chwon - cambia el owner de un fichero.

* sort - ordena alfabeticamente
* uniq - no muestra lineas repetidas
* ip addr show - Muestra nuestro ip

## comando grep
Permite buscar un patron dentro de un fichero. Listara todos los ficheros que cumplan con las expresiones regurales que le pasemos como parametro.


## comando find
Permite buscar ficheros y/o directorios a partir de un patron.

### Ejemplos
El siguiente commando buscara el pattern  legacy..xml en el contenido de todos los archivos que terminen con .java.
find . -name "*.java" -print0 | xargs -0 grep -i ".*Legacy.*xml"

* Para buscar errores severos y marcar con color
egrep -i -n -A 3  --color "error|severe" *.log

* Find para archivos mas grandes de X tamaño Por ejemplo 10 MB:
$ find . -size +10M -type f -print0 | xargs -0 ls -Ssh | sort -z
* Find broken symbolic links
$ find . -type l ! -exec test -e {} \; -print
* Find commandos mas usados
$ history | awk '{print $2}' | sort|uniq -c|sort -nr|head -15
* Find last sleep time
Find when was the last time your system went to sleep:
$ journalctl -u sleep.target


Bibliografia:
https://www.ochobitshacenunbyte.com/2014/04/02/busqueda-de-fichero-y-carpetas-en-gnu-linux/
