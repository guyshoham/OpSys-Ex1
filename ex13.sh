#!/bin/bash
# Name: Guy Shoham, ID: 302288444

cd $1

for i in $(ls)
	do
		if [ -d $i ]; then # if i is a directory
			cd $i
			if test -f "$2"; then
				cat $2 #print file content
			fi
			cd ..
		elif [ $i == $2 ]; then # check if current file name is equal to target file name
			cat $2 # print file content
		fi
	done
