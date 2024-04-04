# Una coleccion de comandos utiles

## Comandos utiles

* Delete duplicate lines in files
We can delete all consecutive duplicate lines in a file, for example ostechnix.txt, using command:
$ sed '$!N; /^\(.*\)\n\1$/!P; D' ostechnix.txt
This command will delete all consecutive duplicate lines from the ostechnix.txt file.
* To quickly copy or backup a file, use this command:
$ cp ostechnix.txt{,.bak}
This command will copy the file named "ostechnix.txt" to a file named "ostechnix.txt.bak". This can be useful for making backups of configuration files before editing them.
 * Display disk usage in human readable format:
$ du -ah


## Clases de Caracteres
Las clases de caracteres son una herramienta utilizada para especificar una lista de caracteres o un rango de caracteres que pueden aparecer como parte del criterio de búsqueda. Cuando especificamos por ejemplo [aeiou] significa que el character buscado sea una vocal.  Si especificamos un rango [r-z] significa que sera una letra desde la r a la z en el alfabeto.

Una clase de caracteres puede incluir caracteres especiales pero estos no pueden formar parte de un rango.
Otras expresiones que pueden utilizarse son las que se incluyen dentro de los caracteres  “[:” y “:]” . Estas expresiones pertenecen a clases predefinidas de caracteres
•	[[:alnum:]] – Alphanumeric characters.
•	[[:alpha:]] – Alphabetic characters
•	[[:blank:]] – Blank characters: space and tab.
•	[[:digit:]] – Digits: ‘0 1 2 3 4 5 6 7 8 9’.
•	[[:lower:]] – Lower-case letters: ‘a b c d e f g h i j k l m n o p q r s t u v w x y z’.
•	[[:space:]] – Space characters: tab, newline, vertical tab, form feed, carriage return, and space.
•	[[:upper:]] – Upper-case letters: ‘A B C D E F G H I J K L M N O P Q R S T U V W X Y Z’.
Cada clase de caracteres solo representa un character dentro del rango definido. Si se quiere especificar mas de uno, el regex utilizado sera [a-z]{11}. Para utilizarlo debemos agregar la opcion -E
