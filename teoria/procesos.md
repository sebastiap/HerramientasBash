# Procesos en Linux
Los procesos en Linux tienen un nivel de prioridad que va desde -19 a 20(Siendo este el maximo). Por defecto la prioridad es 0.

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

kill [numero] proceso

### Comando nice
Da prioridad a un comando 
nice -n prioridad comando


