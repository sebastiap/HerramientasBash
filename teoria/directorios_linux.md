# Directorios principales de Sistema Operativo Linux

## Root (/)

Es el directorio raiz de Linux, es el directorio que contiene todos los directorios monitoreados por el sistema operativo. Se accede a este directorio haciendo ***Change Directory*** a "/" (Es decir cd /) .
  
## Binaries (/bin)

Contiene los ejecutables esenciales para el usuario y el sistema operativo.

## System Binaries (/sbin)

Contiene los ejecutables esenciales para el super usuario root y el sistema operativo.

## Librerias (/lib)
Contiene los archivos de librerias que tulizan tanto bin como sbin

## Usuarios (/usr)

### User Binaries (/usr/bin)
Contiene los ejecutables no esenciales, es decir, programas a ser utilizados por el usuario pero que no son vitales para el SO.

## Carpetas de usuarios (/home)
El directorio home , contiene una carpeta para cada usuario donde este tiene su configuracion y archivos propios. Solo se puede acceder a esa carpeta siendo el dueño o bien un superusuario).
El atajo ~ , apunta a la carpeta del usuario conectado (cd ~)

##  Variable $PATH
Es una variable global utilizada para el sistema operativo para saber en que directorios buscar binarios cuando ejecuto un comando. 

### Comando witch
Nos informa donde esta ubicado el binario que pasamos como parametro (siempre que este en $PATH).

## ET CETERA(Editable text config /etc)
Archivos de configuracion 

## boot
Archivos necesarios para iniciar el sistema operativo

## Device Files (/dev)
Contiene drivers y configuraciones de los dispositivos.

## Opt
Se guardan archivos opcionales o add ons.

## Var
Log, cache y variables de aplicaciones.

## Temp (/tmp)
Archivos Temporales

## Process (/proc)
Es un directorio virtual que guarda informacion y archivos de los procesos. En realidad no se guarda nada aca.



