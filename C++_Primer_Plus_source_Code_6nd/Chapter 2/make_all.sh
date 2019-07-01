#!/bin/bash
for file in `ls *.cpp`
do
	#echo $file
	filename=`echo $file|sed 's/.cpp//g'`
	if [ $# -gt 0 ]
	then
		if [ $1 = "clean" ]
			then
				echo "rm -rf $filename"
				rm -rf $filename
			else 
				echo "g++ $file -o $filename"
				g++ $file -o $filename
		fi
	else
		echo "g++ $file -o $filename"
		g++ $file -o $filename
	fi
	#echo $filename
done
