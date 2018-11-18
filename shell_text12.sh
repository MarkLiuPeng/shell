#!/bin/bash
	
function ChanSuoFcuntion(){
	echo "The Cureent ChanSuo length is $#"
	echo  "The Cureent ChanSuo  Sum  is $@"
	echo "The Cureent ChanSuo name is $0"
				#参数的位置
}
#ChanSuoFcuntion a b c d   #赋予参数,计算个数
ChanSuoFcuntion "Shell Script"

function MoveFunction(){
	       while((  $# > 0))
	       do
	       		echo "$1"			
	       		shift		#把参数向前移动一个单位长度
	       done

}
MoveFunction


function TestFucntion(){
while   getopts "a:b:c" arg			#接受参数保存在$OPTAGR中
do 
	case   "$arg" in 
		a)
			echo "a'$OPTARG";;
		b)
			echo "b'$OPTARG";;
		c)
			echo "c";;
		?) 
			echo "Unkown"
			exit 1;;
			esac


done
}
TestFucntion -a "shell" -b "script"


function TestTowFucntion(){
	echo "$1"
}
name=shell
type=name
TestTowFucntion $type		#调用变量
TestTowFucntion ${!name}		#间接调用变量


file=/bin/ls
function HaveFunction(){
	if [[  -e $file ]]; then
		echo "The file have"
	else
		echo "The file not have"
		#statements
	fi
}
HaveFunction
file=/bin/a   				#修改函数条件测试值
HaveFunction

function ArrayFunction(){
	echo "The number is $#"
	while [[ $# -gt 0 ]]
	do
		echo "$1"
		shift
	done
}
a=(a,b,"cd",e)
ArrayFunction "${a[@]}"		#获取数组参数值


. lib.sh 			#载入库文件
mesg="This is a file"
Erro "$mesg"				#调用库文件函数


function DiGuiFunction(){
	read y
	DiGuiFunction "$y"		#递归函数
	echo "$y"
}
DiGuiFunction


function Factor(){
	local  n=$1;			#定义一个本地变量
	if [  $n -eq  0  ]
	then				#计算n等于1时的阶乘
		result=1
	else				#不等于1的1阶乘
		let "m=n-1"
		fact "$m"
		let "result=$n*$?"
	fi
	return "$result"

}
Factor $1
echo "$1  DiGui is $?"





