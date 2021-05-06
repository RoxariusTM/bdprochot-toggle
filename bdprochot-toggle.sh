#!/usr/bin/bash

modprobe msr || exit 1

reg_value=$(rdmsr -d 0x1FC) || exit 1
#echo "$reg_value"

if [ $1 == "off" ]
then
	reg_value=$(($reg_value-1))
	#echo "$reg_value"
	wrmsr 0x1FC $reg_value
elif [ $1 == "on" ]
then
	reg_value=$(($reg_value+1))
	#echo "$reg_value"
	wrmsr 0x1FC $reg_value
else
	exit 1
fi
