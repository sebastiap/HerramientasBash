# El comando xargs
El comando xargs aceptará una entrada entubada. También puede aceptar la entrada de un archivo. 
Xargs usa esa entrada como parámetros para los comandos con los que le hemos dicho que trabaje. 
Si no le decimos xargsque trabaje con un comando específico, se usará por defecto echo.

## Uso
Una de las grandes características de los sistemas operativos Linux y tipo Unix es la capacidad de canalizar la salida stdout de un comando a la entrada stdin de un segundo comando. Al primer comando no le importa que su salida no vaya a una ventana de terminal, y al segundo comando no le importa que su entrada no provenga de un teclado.


### Usar xargs con wc
Podemos utilizar xargspara contar fácilmente wclas palabras, caracteres y líneas en varios archivos.

ls * .page | xargs wc
ls * .page |  xargs wc en una ventana de terminal

Esto es lo que pasa:

* ls enumera los archivos * .page y pasa la lista a xargs.
* xargs pasa los nombres de archivo a wc.
* wc trata los nombres de archivo como si los hubiera recibido como parámetros de línea de comando.

## Fuente:
https://respontodo.com/como-usar-el-comando-xargs-en-linux/
