
						#条件语句
#---------------------------if------------------------------------

#!/bin/bash										#嵌套双分支 
echo "input your socre:"
read socre
if [ -z "$score" ]; then
	echo "your score is null,please input aegin"
	else
		if  [ "$score" -lt  100  -a "$score"  -gt 0];then
		echo "your score is right,you can continue excute"
		else
		if 	[ "$score" = 90 ];then
				echo "Your score level is A"
			else
			if  [ "$score"=70];then
			echo "Your score level is B"
			if [ "$score"=60];
				echo "Your score level is C"
			else
				echo "Your score level is D"

			fi
			fi
		fi
		#statements
fi
							
echo "please input your score"				#多分支
read  score
if [ -z "$score" ];then			#判断分数是否为空值
	echo "your score is null,please input aegin"
	else
		if [ "$z" -ge 100  -a    "$z" -le  0 ];then	#判断分数是否在[0,100]之间
			echo "your score not between 0 and 100,please agin"
			read score   #重新读取用户输入
		else
		if[ "$z" -le 60 ]; then
			echo "your score is D"
		elif[ "$z" -le 70 ];then
			echo  "your score is C"
		elif[ "$z" -le 80 ];then
			echo "your score is B"
		else
			echo "your score is A"
		fi

	fi
fi
if [ -e "$1" ];then				#判断文件是否存在
	echo "$1 file have"
	exit 1					#文件不存在状态码
else	 
	touch "$1"
	echo "$1 file created"			#不存在创建
	exit 0					#文件存在状态码
fi


#----------------------------------for---------------------

#！/bin/bash
for (( i = 0; i < 10; i++ ));do
	if [[ "$i%2" -eq 0  ]];then
		continue				#跳出这个输出
		#statements
	fi
	echo "$i"				#输出所有奇数
	#statements
done

for i in   a b c d 
do
	echo -n "$i"		
	for j in `seq 10` 
	do
		if [ $j -eq 5 ]; then
			#break 2				#退出状态码
			continue   2 				#跳出状态码
			#statements
		fi
		echo -n "$j"
	done
	echo 
	#statements
done


#!/bin/bash								
for((i=0;i<10;i++));do  					#嵌套循环
	for (( j=0;j<i;j++ )); do
		let "product=i*j"
		printf "$i*$j=$product"
		if [[ $product -gt 10 ]]; then
			
			echo "   "
		else
			echo "    "
			#statements
		fi
		if [[ $product -ge 5 ]]; then		#内层循环条件中断
					
					break 2 
					#statements
				fi		
		#statements
	done
	echo 
done

	
	if [[ $product -gt 5 ]]				#外层循环条件中断
	then	
		break					#中断这部分的输出
	fi
	



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


#---------------------------while--------------------------


wile getopt ":pq:"y:					#while循环				
	do
		case $y in
			"p")
			echo "$y";;
			"q")
			echo "$x $y";;
			"::")
			echo "$x";;
			"?")
			echo "$x
			"*")
			echo "z";;";;
		esac
		echo "w"
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

while [[ "$i" -lt 10 ]]; do  		#while循环
	let "square=i*i"			#let条件计算
	echo "$i*$i=$square"
	let  "i++"			#自增计数器
	#statements
done

#------------------------util-----------------------

i=1
until [[ "$i"  -gt 10 ]]; do  		
#开始until循环,条件测试i>10时退出until循环
	let "square=i*i"			#let条件计算
	echo "$i*$i=$square"
	let  "i++"			#自增计数器
	#statements
done			#中断


i=1
until [[ "$i" -ge 21 ]];do
	userdel user$i			#代入计数器i,执行创建用户
	#echo "123"  |  passwd --stdin user$i >> /dev/null   #设置密码
	let "i++"			#自增
	#statements
done


i=1
until [[ "$i"  -gt 10 ]]; do  		#开始until循环,当i>10时退出until循环
	let "square=i*i"			#条件
	echo "$i*$i=$square"
	let  "i++"			#自增计数器
	#statements
done


#-------------------------case----------------------------- 


				echo "please input your char"
read char                    
case $char in      #接受变量	
	[[:upper:]])		#判断条件1
			echo "your char is letter";;		#结束
	[[:lower:]])
			echo "your char is lower";;
	[0-9])
			echo "your char is number";;
	*)									#默认
			echo "your char is other";;
	esac					#终止循环$


