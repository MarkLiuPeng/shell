#!/bin/bash
i=1
until [[ "$i"  -gt 10 ]]; do  		
#开始until循环,条件测试i>10时退出until循环
	let "square=i*i"			#let条件计算
	echo "$i*$i=$square"
	let  "i++"			#自增计数器
	#statements
done			#中断
i=1
while [[ "$i" -lt 10 ]]; do  		#while循环
	let "square=i*i"			#let条件计算
	echo "$i*$i=$square"
	let  "i++"			#自增计数器
	#statements
done




echo "please input your number,must between 1 and 10,and 0 exits"
read number
while [[ "$number" != 0 ]]; do   		#while判断计数
	#echo "you can input"
	#read number				#再次读取用户输入
	if [ "$number" -lt 5 ];then				#多分支判断准确输入
		echo "sorry,your number lt 5"
		read number
	elif [ "$number" -gt 5 ];then
		echo "sorry,your number gt 5"
		read number
	else
		echo "Configuration,You are right!"
		exit 0				#退出
	fi
		#statements
	
	#statements
done


i=1
until [[ "$i" -ge 21 ]];do
	userdel user$i			#代入计数器i,执行创建用户
	#echo "123"  |  passwd --stdin user$i >> /dev/null   #设置密码
	let "i++"			#自增
	#statements
done





while [[ i=0;i<9;i++ ]]; do
	while [[ j=0;j<i;i++ ]]; do
		if [[ j -gt 9 ]]; then
			let "product=i*j"
			printf "$i*$j=$product"
			#statements
		else
			echo "   "
			echo "    "
		fi
		#statements
	done
	echo
	#statements
done