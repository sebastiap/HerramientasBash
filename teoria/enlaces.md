# Enlaces en Linux

## Tipos de Enlaces
Existen 2 tipos de enlaces Simbolicos y Duros. Ambos se crearan a partir del comando ln.

### Enlace Simbolico
Son similares a los de Windows. Hace referencia a un fichero o directorio, pero si cambia de nombre o ubicacion se pierde el vinculo.
ln -s ruta/directorio/fichero enlace

### Enlace Duro
Hace referencia al inodo (la parte del disco donde se aloja), no al fichero. Solo se puede aplicar a ficheros que esten dentro de la misma particion.
ln ruta/fichero enlace
