#!/bin/bash
#关于引号 "" ,'',``

test [ 1 -eq 2]


echo "$$"		#进程pid
echo "$0"		#脚本名称
echo "$1\=$1$2\=$2$4\=$4"
				#环境变量	
echo "$pwd"
echo "$LOGINAME"
set | more			#显示可建立的全部环境变量

x=123
unset $x			#清除变量
echo $x


cd /bin
ls t*			#通配开头

x=`pwd`
echo "cureent directory is $x"
echo 'cureent directory is $x'

#echo ${x}abc			#"{}变量分界符"
:<<FTP
echo "开始你的程序"
read  "$z"
echo "当前所在的目录是 `pwd` and 你主机的地址是 `ifconfig`"
echo "程序结束"


#全局和局部变量

	#定义一个函数
func(){
	echo "$x"				#输出这个全局变量
}
x="hello world"   #定义一个全局变量
func


func(){
	y=1					#在函数内部定义变量
}
func
echo "$y"

					#调用定义的函数
FTP
