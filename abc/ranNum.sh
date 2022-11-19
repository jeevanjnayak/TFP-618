#!/bin/bash -x

for ((i=0; i<10; i++))
do
	ranNum=$(($((RANDOM%900))+100))
	arrayNum[i]=$ranNum
done
echo ${arrayNum[@]}
echo ${arrayNum[5]}
echo ${arrayNum[2]}
