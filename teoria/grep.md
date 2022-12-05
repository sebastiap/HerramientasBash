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

## Expresiones regulares en grep

 * .	Matches any single character.	grep '.' file
grep 'foo.' input
* ?	El item precedente es opcional y sera matcheado como mucho una vez. EJ	grep 'vivek?' /etc/passwd
* \*	El item precedente sera matcheado como cero o mas veces. 	grep 'vivek*' /etc/passwd
* \+	El item precedente sera matcheado como una o mas veces.	ls /var/log/ | grep -E "^[a-z]+\.log."
* {N}	El item precedente sera matcheado exactamente N veces.	egrep '[0-9]{2} input
* {N,}	El item precedente sera matcheado exactamente N o mas veces.	egrep '[0-9]{2,} input
* {N,M}	El item precedente sera matcheado al menos N veces pero no mas de M veces.	egrep '[0-9]{2,4} input
* \-	Representa un rango de valores siempre y cuando no este como primer valor o ultimo en una lista	grep ':/bin/[a-z]*' /etc/passwd
* ^	Representa el inicio de la linea.Seria como un string vacio al inicio de la linea.	grep '^vivek' /etc/passwd
grep '[^0-9]*' /etc/passwd
* $	Representa el fin de la linea.Seria como un string vacio al final de la linea.	grep '^$' /etc/passwd
* \b	Identifica un caracter que debe estar dentro de una palabra.vivek '\bvivek' /etc/passwd
* \B	Identifica un caracter que debe estar dentro de una palabra pero no en el inicio o el fin.	grep '\B/bin/bash /etc/passwd
* \<	Representa el inicio de la palabra.	grep '\<="" kbd="" style="box-sizing: inherit;">
* \>	Representa el final de la palabra.	grep 'bash\>' /etc/passwd
grep '\' /etc/passwd
* |	(pipe symbol) - Operador logico.	
* () 	Nos permite agrupar una serie de expresiones como una.	
* []	El caracter es uno de los incluidos entre ellos. [^abc]  Ejemplo [a-d] = abcd	
el ^, aca adentro niega la expresion.


