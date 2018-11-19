#!/bin/bash




	declare -A array
	echo "please input firset key vlaue"
	read value_1
	echo "please input second key vlaue"
	read value_2	
	echo "please input third key vlaue"
	read value_3
	array=([$1]=$value_1,[$2]=$value_2,[$3]=$value_3)
	echo "do you know array key sum?"
	echo "the array key len is $#{array[@]}"
	list=`expr $array[$1]+$array[$2]+$array[$3]`	
	echo "The array key list is $list"




