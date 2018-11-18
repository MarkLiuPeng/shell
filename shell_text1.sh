#!/bin/bash
#source,sh,./shell_name :shell脚本执行方法 
#

#变量
						#declare :修饰
x=10/2
echo "$x"
#将变量修饰为只读
declare  -r x
x="a"			#再次为变量赋值检验修饰
echo "$x"
|
#将变量修饰为只为整数
declare -i  x
x=10
echo "$x"
							#typeset <=> declare
y=8/2
echo "$y"
typeset	-i y
y="b"
echo "$y"










 #x=1;
 #w=9;
 #let "x+1"
 #echo "$x"
 #y="$(x+w)";
 #z="a";
 #echo "$x $y $z";



:<<cat
Alias   rm="rm -i"

#./home/user_name,/etc/profile,/etc/bashrc		用户shell的配置文件
more shells			#shell的种类
echo "$SHELL    '当前shell的版本是'  $BASH_VERSION" #打印当前使用shell类型
echo "hello world"
echo "$?"				#shell退出状态码<0-255>
abc
echo "$?"
#exit 120
#echo  "$?"
cat

:<<ftp  				#多行注释
echo  "$#"     #返回传入参数的个数      #单行注释
echo  "$@"
echo  "$0"   #返回当前脚本的名称
echo  "$_"
echo  "$*"    #分别列出参数


echo "$x"
wile getopt ":pq:"y:
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
#for i in `ls .`
#do
#	if echo "$i" | grep "a"
#	then
#		echo "$i"
#	fi
#done
ftp