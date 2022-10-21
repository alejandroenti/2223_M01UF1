#!/bin/bash

echo -n "Hasta donde quieres que cuente: "
read NUMERO

for NUM in `seq $NUMERO`
do
	echo -n "."
done

echo " FIN"
