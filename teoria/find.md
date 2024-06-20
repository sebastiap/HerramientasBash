# Find
El comando find es un comando común en sistemas Unix que se utiliza para encontrar archivos en un determinado directorio a partir de diversas reglas de búsqueda, tales como:
 * nombre exacto de archivo
 *  fecha de creación
 *  Tamaño, permisos
 *  etc
   
## Sintaxis
´´´
find {ruta} {nombre -del-archivo o dir-a-buscar} {acción a tomar}

´´´

Se pueden incluir expresiones regulares para mejorar la busqueda.

## Algunos comandos utiles

### Busqueda de solo archivos 
 * find ./ -type f -name "file*"

### Busqueda de solo directorios 
 * find ./ -type d -name "dir*"

### find case insensitive
 * find ./ -iname "qa*"

### Buscar en mas de un directorio
 * find ./test ./numeric -name fichero22.txt -type f

### Buscar archivos que contengan un texto determinado
 * find / -type f -exec grep -l -i "hiperconvergencia" {} ;

### Buscar archivos y directorios en función de su tamaño
 * find / -size 30M

### Buscar por fecha de modificación
 * find . -mtime -17 -type f 

### Buscar archivos modificados en los últimos n días
 * find /home -mtime -10

### Buscar y copiar archivos o directorios
 * find -iname archivo22.txt -exec cp {} ~/tmp/imágenes ;

### Encontrar archivos y cambiar permisos
 * find ver -name "*.php" -type f -exec chmod 755 {} ;

### Borrar cantidad masiva de archivos en un directorio
 * find . -type f -name "*" -exec rm -f {} ;

## fuentes
* https://geekflare.com/es/linux-find-commands/
