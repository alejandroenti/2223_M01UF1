#!/bin/bash

echo -n "Conviertiendo "

for NUM in `seq 200`
do
	convert $NUM.png $NUM.jpg
	echo -n "."
done

echo " FIN"
