#!/bin/bash
if [ $# -gt 0 ]
then
	if [ $1 = "clean" ]
	then
		echo "rm -rf file"
		rm -rf file		
	else
		echo "g++ file1.cpp file2.cpp -o file"
		g++ file1.cpp file2.cpp -o file
	fi
else
	echo "g++ file1.cpp file2.cpp -o file"
	g++ file1.cpp file2.cpp -o file
fi
