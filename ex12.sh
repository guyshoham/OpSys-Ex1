#!/bin/bash
# Name: Guy Shoham, ID: 302288444

cd $1
# for each file or directory in list
for i in $(ls)
	do	
		# check if the extension is .txt
		if [[ ${i: -4} == ".txt" ]]; then
			echo "$i is a file" >> tmp.txt
		fi
	done
# print content of fils sorted
cat tmp.txt | sort
rm tmp.txt

for j in $(ls)
	do
	# check if j is a directory
		if [ -d $j ]; then
			echo "$j is a directory" >> tmp.txt	
		fi
	done
cat tmp.txt | sort
rm tmp.txt
