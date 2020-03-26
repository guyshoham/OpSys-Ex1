#!/bin/bash

cd $1
for i in $(ls)
	do	
		if [[ ${i: -4} == ".txt" ]]; then
			echo "$i is a file" >> tmp.txt
		fi
	done
cat tmp.txt | sort
rm tmp.txt

for j in $(ls)
	do
		if [ -d $j ]; then
			echo "$j is a directory" >> tmp.txt	
		fi
	done
cat tmp.txt | sort
rm tmp.txt
