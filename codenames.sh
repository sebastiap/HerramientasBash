#text Colors
red='\e[0;31m'
yellow='\e[0;33m'
green='\e[0;32m'
NC='\e[0m'

#Para usar estas funciones utilizar source
echo "Dando de alta los comandos"
function buscar { find "$1" -iname "*$2*"; }

function grvacias { grep -c ^$ "$1"; }

function greper { grep -i -E --color '(error|severe)' "$1" ;}

function grepic { grep -i -E --color "$1" "$2" ;}

function bakant { cp "$1"{,.bak} ;}

function lst { ls -l | awk '{ print $9 ":" $5 }' ;}

function maspesados {find / -type f -printf "%s\t%p\n" | sort -n | tail -10}

function rand { echo $RANDOM ;}

#Comandos AWK
#Revisar
function random { echo random | awk '{print int(rand()*100)}' ; }
#Genera X numeros random
function xrandom { awk 'BEGIN { for (i = 1; i <= '$1'; i++) print int(101 * rand()) }' ;}

#function reemplazar { awk "{ gsub(/$1/,$2); print}" "$3";}

echo -e "${yellow}Se dieron de alta los comandos"
echo -e "${green}buscar${yellow} FILE ${NC}: busca por nombre un archivo o una expresion regular "
echo -e "${green}bakant${yellow} FILE ${NC}: crea un backup del archivo deseado con extension .bak"
echo -e "${green}greper${yellow} FILE ${NC}: busca errores en un log y los marca con un color"
echo -e "${green}grepic${yellow} WORD FILE ${NC}: busca en un log y los marca con un color"
echo -e "${green}grvacias${yellow} FILE ${NC}: cuenta lineas vacias en un archivo"
echo -e "${green}maspesados ${NC}: Muestra el top de los 10 archivos mas pesados en disco"
echo -e "${green}rand {NC}: Muestra por pantalla un numero aleatorio"
