# Comando GREP

Busqueda dentro de archivos (Comando GREP)

## Sintaxis:

grep [options] [regexp] [filename]

## Flags Opcionales

Flag	Ejemplo	Descripcion
* -r	grep -r text filepattern	Busqueda Recursiva , busca en el directorio indicado y en subdirectorios
* -n	grep -n text filepattern	Imprime la linea donde se encontro ademas del resultado
* -H	grep -H text filepattern	Imprime el archivo donde se encontro el resultado. Si la busqueda trae mas de un resultado el  rez hace esto por default
* -c	grep –c text filepattern	Imprime la cantidad de resultados que traeria.
* -l	grep –l text filepattern	Lista los archivos que incluyen el termino buscado

* -L	grep –L text filepattern	Lista los archivos que no incluyen el termino buscado

* -i	grep –i text filepattern	La busqueda es insensible (case insensitive)
* -v 	grep –v text filepattern	Me trae las lineas que NO contengan ese texto
* -A y -B	grep -A NUM "word" file 
grep -B NUM "word" file	A trae las NUM cantidad de filas despues de la linea que tiene la palabra buscada, B trae las anteriores NUM filas a la busqueda.

* -w	grep –w text filepattern	La busqueda solo trae cuando encuentra exactamente el texto ( si busco “tres”, no va a traer cuando encuentre “estres”)
* -o	grep –w text filepattern	La muestra solo trae la palabra encontrada, no la linea.
* --color	grep –color  text filepattern	Imprime la linea entera donde encuentra el resultado y  el resultado en color.
* -E	grep –E  text filepattern 
egrep text filepattern	Utilización de Expresiones regulares extendidas.

## Hacer un grep con OR
Use the following syntax:
* grep -E 'word1|word2' filename
O bien
* egrep 'word1|word2' filename
O tambien
* grep 'word1\|word2' filename
## Hacer un grep con AND
* grep 'word1' filename | grep 'word2'
O bien
* grep 'foo.*bar\|word3.*word4' filename


## Combinar grep y find
El siguiente commando buscara el pattern  legacy.xml en el contenido de todos los archivos que terminen con .java.


find . -name "*.java" -print0 | xargs -0 grep -i ".*Legacy.*xml"

## Expresiones regulares en grep (traducir del ingles)

 * .	Matches any single character.	grep '.' file
grep 'foo.' input
* ?	The preceding item is optional and will be matched, at most, once.	grep 'vivek?' /etc/passwd
* *	The preceding item will be matched zero or more times.	grep 'vivek*' /etc/passwd
* +	The preceding item will be matched one or more times.	ls /var/log/ | grep -E "^[a-z]+\.log."
* {N}	The preceding item is matched exactly N times.	egrep '[0-9]{2} input
* {N,}	The preceding item is matched N or more times.	egrep '[0-9]{2,} input
* {N,M}	The preceding item is matched at least N times, but not more than M times.	egrep '[0-9]{2,4} input
* -	Represents the range if it’s not first or last in a list or the ending point of a range in a list.	grep ':/bin/[a-z]*' /etc/passwd
* ^	Matches the empty string at the beginning of a line; also represents the characters not in the range of a list.	grep '^vivek' /etc/passwd
grep '[^0-9]*' /etc/passwd
* $	Matches the empty string at the end of a line.	grep '^$' /etc/passwd
* \b	Matches the empty string at the edge of a word.	vivek '\bvivek' /etc/passwd
* \B	Matches the empty string provided it’s not at the edge of a word.	grep '\B/bin/bash /etc/passwd
* \<	Match the empty string at the beginning of word.	grep '\<="" kbd="" style="box-sizing: inherit;">
* \>	Match the empty string at the end of word.	grep 'bash\>' /etc/passwd
grep '\' /etc/passwd
* |	(pipe symbol) - the logical OR operation.	
* () 	allows us to group several characters to behave as one.	
* []	the character is one of those included within the square brackets. [^abc] niega
* [a-d] = abcd	


