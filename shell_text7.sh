#!/bin/bash



	#for i in `ls .`					#for..in循环
#do
#	if echo "$i" | grep "a"
#	then
#		echo "$i"
#	fi
#done

for i in  [1..10]    #1 2 3 5 8
do
	echo "The Cureent number is $i"
done


total=0									#for循环
for i in  {1..100..2}    #1 2 3 5 8			#{start,end,步长}
do
	let "total=total+i"
	#echo "The Cureent number is $i"
done
echo "total is $total"

for  days in {M T S T F S S}			#列表值
do 
	echo "Today is $days"
done

for x in    $(ls)   #*  #"ls" #循环显示命令
do
	echo "$x"
done		

echo "$*"			#接受输入所有的参数
for arg in "$*"
do
	echo "${arg}"
done

for arg in					#不带列表的for
do 
	echo "${arg}"
done

x="a"	
for ((;;)) #类c的死循环  #((i=0;i<=5;i++))				#类c的for
do
	echo "$x"
done


array=(M,T,T,F,S,S)					#处理数组
for i in ${array[*]}
do
	echo "$i"
done

i=1
until [[ "$i"  -gt 10 ]]; do  		#开始until循环,当i>10时退出until循环
	let "square=i*i"			#条件
	echo "$i*$i=$square"
	let  "i++"			#自增计数器
	#statements
done
