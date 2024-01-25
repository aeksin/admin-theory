#!/bin/bash
if [[ $# == 0 ]]
then 
	echo "please select the file or run script with -h(--help) flag"
 	exit 1
elif [[ $1 == "-h" || $1 == "--help" ]]
then
	echo "this program output even lines of file to out_even.txt, odd to out_odd.txt, and copy of the file to out_orig.txt"
	echo "to run program, input path to file as argument"
	exit 0
else
	if [ -f $1 ] 
	then 
		#output even lines to out_even.txt
		sed -n 2~2p $1 > out_even.txt
		#output odd lines to out_even.txt
		sed -n 1~2p $1 > out_odd.txt
		#output copy of the file to out_orig.txt
		sed -n 1~1p $1 > out_orig.txt
		exit 0
	else
		echo "couldn't open the file"
		exit 1
	fi 
fi
