#!/bin/bash -x

i=5
while [ $i -gt 1 ]
do
	echo "Hello"
	i=$(($i-1))
done
