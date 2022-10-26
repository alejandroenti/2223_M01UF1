#!/bin/bash

clear

NUMERO_RANDOM=$(( $RANDOM % 100 + 1 ))

# NUM=0
# while [ $NUM -ne $NUMERO_RANDOM ]

#while [ "$NUM" != "$NUMERO_RANDOM" ]

# Las 2 [[ son el mismo comando, pero bash lo interpreta como doble evaluacion
# Significa que primero evaluda la primera llave, si existen las dos operadores unitarios,
# en caso de que alguno no exista, pone un tipo neutro del otro operador unitario,
# y de esta manera evitar que pete la segunda evaluacion
while [[ $NUM -ne $NUMERO_RANDOM ]]
do
	echo "Adivina el numero del 1 al 100"
	read NUM

	if [[ $NUM -gt $NUMERO_RANDOM ]] 
	then
		echo "El numero a acertar es menor"
	elif [[ $NUM -lt $NUMERO_RANDOM ]]
	then
		echo "El numero a acertar es mayor"
	else
		echo "Los numeros son iguales"
	fi
done
