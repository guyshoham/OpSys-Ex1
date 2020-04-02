#!/bin/bash
# Name: Guy Shoham, ID: 302288444

declare -i count=0

cd $1
# for each file or directory in list
for i in $(ls -v)
	do	
		# check if the extension is .txt
		if [[ ${i: -4} == ".txt" ]]; then
			count=$((count+1))
			echo -ne $[count]" " 
			echo "$i is a file"
		fi
	done
# print content of fils sorted

for j in $(ls)
	do
	# check if j is a directory
		if [ -d $j ]; then
			count=$((count+1))
			echo -ne $[count]" " 
			echo "$j is a directory"
		fi
	done
