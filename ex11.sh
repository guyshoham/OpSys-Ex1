#!/bin/bash
# Name: Guy Shoham, ID: 302288444

declare -i count=0
grep "" $1 > nospaces
grep "" nospaces > $1
cat $1 | while read line
do
	#calculate the number of words of the line (if it contains 'text'), and write to a temp flle
	echo $line | grep -w $2 | wc -w > tmp
	#save the temp file content to a var
	read var < tmp
	count=$((count+1))
	#if words count is not 0, so the word 'text' is shown in that line
	if test $var -ne "0"
	then
		echo -ne $[count]" " 
		echo $line | wc -w		
	fi
done
rm tmp
rm nospaces
