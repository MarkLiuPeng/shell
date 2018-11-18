#!/bin/bash


#------------------------函数--------------------------------


function Test_Function(){			#定义函数法一
	echo "这是一个测试函数"
}
Test_Function				#调用函数

Test_Tow_Function(){
	echo "这是另一种测试函数"
}
Test_Tow_Function

function GetCureentTime(){
	Cureent_Time=`date`				#获取当前时间
	echo "$Cureent_Time"
}
							#必须在函数定义后的位置调用这个函数
GetCureentTime


function SonLinkOneFunction(){
	echo "这是第一个子链接函数"
}
function SonLinkTowFunction(){
	echo "这是第二个子链接函数"
}
function ParentLinkFunction(){
	SonLinkOneFunction					#在父函数内调用定义的子链接函数
	SonLinkTowFunction
}

Sum(){
	let "z=$1 + $2"
	return "$z"		#函数返回值
}
Sum 10 40				#调用sum函数
echo "$?"				#返回状态码

			#接受自定义字符
echo "请输入你希望计算的字符"
read x
str=$1
result=0
Length(){
					#计算这个字符的长度
	if [ "str" != "" ];then	#判断字符不为空，不算长度
		result=${#str}
		#statements
	fi
	echo "$result"
}
Char_Test=$(Length  $x)	#调用这个长度函数,代入自定义参数
echo "这个字符的长度是 $Char_Test"

function AliasFunction(){
Alias ls -Z='ls'		#别名
}
AliasFunction
unset	AliasFunction   	#删除函数




Out_Var="This is Function Out Var"
function VarFunction(){
	Out_Var="Change This Out_Var"
	echo "$Out_Var"		#在函数内调用经函数改变的变量
	local In_var="This is Function In Var"
	#定义局部变量，全局调用是将无输出结果
}
VarFunction
echo "$In_var"			#在函数外调用函数内的变量




function ChanSuoFcuntion(){
	echo "The Cureent ChanSuo length is $#"
	echo  "The Cureent ChanSuo  Sum  is $@"
	echo "The Cureent ChanSuo name is $0"
}
#ChanSuoFcuntion a b c d   #赋予参数,计算个数
ChanSuoFcuntion "Shell Script"



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





