# Busqueda de archivos conociendo alguna palabra de su contenido:
Algunas veces, necesitamos encontrar un archivo conociendo unicamente parte de su contenido.
Para esos casos, el comando grep,  se convierte en **una poderosa herramienta de busqueda**.
A continuacion algunos ejemplos de como buscar

```
> grep -rnw '/path/al/directorio/' -e 'patron'
```
+ **-r or -R** es busqueda recursiva,
- **-n** es para que muestre el numero de linea
* **-w** es para indicar que matchee el patron como una palabra completa.
* **-e** es para indicar el patron en el cual se va a buscar a continuacion

## otra opcion
```
grep -iRl "text-to-find-here" .
```
+ i es para que ignore el case (mayusculas y minusculas). Puede quitarle velocidad a la busqueda
+ **-l** (lower-case L) se puede agregar para que nos de el nombre de los archivos en lugar de las lineas encontradas.
- no ponemos w para que busque tambien nuestro texto como parte de palabras o conjunciones de texto

## Mas opciones

Along with these, --exclude, --include, --exclude-dir flags could be used for efficient searching:

+ This will only search through those files which have .py or .js extensions:
```
grep --include=\*.{py,js} -rnw '/path/to/somewhere/' -e "pattern"
```
- This will exclude searching all the files ending with .js extension:
```
grep --exclude=\*.js -rnw '/path/to/somewhere/' -e "pattern"
```
* For directories it's possible to exclude one or more directories using the --exclude-dir parameter. For example, this will exclude the dirs dir1/, dir2/ and all of them matching *.dst/:
```
grep --exclude-dir={dir1,dir2,*.dst} -rnw '/path/to/somewhere/' -e "pattern"
```
