# Comandos y Sintaxis de la linea de comando

## Promt

El promt se vera asi:

usuario@maquina:directorio$

En caso de ser un administrador el promt terminara en #

## Caracteres especiales

- Comando
\ cuando se utiliza antes de un caracter especial, le quita su condicion de caracter especial.
* Reemplaza uno o mas caracterer
[] o ? Reemplazan un caracter
El uso de '' y "" evitan que su contenido ejecute caracteres especiales
< y > Redireccionan la salida
; Separa Comandos - ejecuta 1 y luego otro
& Ejecuta el comando en segundo plano
&& Ejecuta 2 comandos en segundo plano (se usa entre comandos)
| La salida del comando 1 va al comando 2
|| Ejecuta el comando 2 solo si el comando 1 fallo
~ hace mencion al directorio del usuario
$ Variables o ejecutar comando
! Accede al historial por ejemplo !5 ejecuta el 5to comando , o !! ejecuta el ultimo comando


## Diferencia entre '' y "" 
El primero muestra el valor de las variables cuando se referencian con $ . 
La doble comilla muestra literal el contenido que se cierra con las comillas.
