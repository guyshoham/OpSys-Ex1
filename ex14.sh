#!/bin/bash
# Name: Guy Shoham, ID: 302288444

sum=0

cat $2 | while read line
do
	echo $line | grep "$1" > tmp
	read var < tmp
	if [ -n "$var" ]
	then
		echo $line
		arr=($var)
		echo ${arr[2]} > tmp
		read value < tmp
		sum=$((sum+value))
		echo $sum > balance
	fi
done

read sum < balance
echo Total Balance: $[sum]

rm balance
rm tmp
