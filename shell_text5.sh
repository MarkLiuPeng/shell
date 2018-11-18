#!/bin/bash
if [ -e "$1" ];then				#判断文件是否存在
	echo "$1 file have"
	exit 1					#文件不存在状态码
else	 
	touch "$1"
	echo "$1 file created"			#不存在创建
	exit 0					#文件存在状态码
fi
									#case..in循环分支语句
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
									#算数运算符
result=`expr  3 / 2`
echo "$result"								#expr:算数计算符
#result=`expr  \(1 * 2\)\ + 1`
#echo "$result"

result=$(( 10 + 90  / 2 ))					#$(()):算数运算符
echo  "$result"

											#$[]算数运算符
result=$[ 5*2 ]
echo "$result"

n=1											#let算数运算符
let n=n+1
echo "$n" 

result=`expr 4 +=  6`
echo "$result"
