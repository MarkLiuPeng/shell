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

















