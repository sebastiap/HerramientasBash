# Procesos en Linux

## Primer y Segundo plano
* Un proceso que esta en primer plano toma el control de la sesion actual y la devuelve cuando finaliza.
* Un proceso en segundo plano es un proceso que corre en paralelo a nuestra sesion y lo que ejecutemos en la linea de comando.
Si añadimos un ampersand (&) al final de un comando o de un script que queramos ejecutar, este se ejecutará en segundo plano.


## Comandos Relacionados

### Comando PS
El comando "ps" muestra informacion de los procesos activoa.
Por defecto muestra:
 * Pid
 * Terminal
 * Tiempo que uso procesador
 * Comando

Lo mas comun es ejecutarlo con -a que muestra todos los procesos asociados o -l/-A que muestra todos los procesos

Otras opciones que tiene son:
-f Formato largo
-u Informacion orientada al usuario

### Comando Kill
Manda una señal de finalizacion al proceso.


