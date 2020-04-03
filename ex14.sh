#!/bin/bash
# Name: Guy Shoham, ID: 302288444

sum=0

# read file line by line
cat $2 | while read line
do
	echo $line | grep -w "$1" > tmp
	read var < tmp # var will contain a string only if line contains the correct name
	if [ -n "$var" ]
	then
		echo $line
		echo $line | egrep -o '[-]?[0-9]+' | head -1 > tmp # grep the first numeric value in line (consider negative values)
		read value < tmp # read value from tmp file
		sum=$((sum+value)) # add to sum
		echo $sum > balance # save sum into another temp file (balance)
	fi
done

read sum < balance
echo Total balance: $[sum]

rm balance
rm tmp
