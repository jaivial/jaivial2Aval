#!/bin/bash

clear

read -p "Escribe una ciudad: " ciudad
ciudadupper=$(echo $ciudad | tr '[:lower:]' '[:upper:]')
ciudadconsumotxt=$(awk ' (NR>1) { print $1 = toupper($1), $4 }' <consumos.txt)
##ciudadlowerfirstpart=`echo $ciudadlower|cut -c1|tr [a-z] [A-Z]`
##ciudadlowersecondpart=`echo $ciudadlower|cut -c2-`
##ciudadlowerfin=$ciudadlowerfirstpart$ciudadlowersecondpart
##ciudadconsumotxt=$(awk ' (NR>1) { print $1 = toupper($1), $4 }' <consumos.txt)
##ciudadtxtupper=$(echo $ciudadtxt | tr '[:lower:]' '[:upper:]')
ciudadtxt=$(awk ' (NR>1) { print $1 = toupper($1) }' <consumos.txt)
if grep -qi "$ciudadtxt" <<< "$ciudad"; then
    echo "funciona"
else
    bash amenor.sh

fi

#echo "$ciudadconsumotxt"
ciudadbuscada=$(echo "$ciudadconsumotxt" | grep -i "$ciudad" | awk ' { print $2 }' | sort -n | awk ' (NR==1) ')

echo "El menor consumo de la ciudad $ciudad es $ciudadbuscada"










consumo=$(awk ' (NR>1) { print $4 }' <consumos.txt)
ciudadconsumotxt=$(awk ' (NR>1) { print $1 = toupper($1), $4 }' <consumos.txt)

#echo "$ciudadconsumotxt"



