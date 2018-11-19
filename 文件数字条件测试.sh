#!/bin/bash

db=(`cat  ./db`)
echo "please input you print db record number"
read print_num
i=1


#function DbTestFunction(){
if [ $1  -gt $2 ]
then
	while [ $i  -le $print_num ]
	do
		echo ${db[@]}		#list database node infomation
		let i++
		#i=$(($i+$i))#`expr i+i`
	done
elif [ $1 -lt $2 ]
then
	len=${#db[*]}			#total db have number  
	#echo   $len
	echo "cureent db have ${len} record"

else
	exit 0 

fi

#DbTestFunction




:<<EOF	
#	i=1
	sum=0
	until [ $i  -le $len ]
	do
		
		sum=$[$sum+$i]
		let i++
	done
	echo "cureent db have ${sum} record"
else
	exit 0
fi

EOF
