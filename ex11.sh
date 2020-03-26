#!/bin/bash
declare -i count=0
cat file.txt | while read line
do
	echo $line | grep text | wc -w > tmp
	read var < tmp
	count=$((count+1))
	if test $var -ne "0"
	then
		echo -ne $[count]" " 
		echo $line | wc -w		
	fi
done
rm tmp
