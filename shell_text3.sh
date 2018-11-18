#!/bin/bash
:<<FTP


				#条件测试
#字符相等判断

"[   ]",test:两种测试方法
#test [ 1 -eq 2]				
x="abc"   #测试的两端必须有空格
y="abc"

[ "$x" != "$y" ]					
echo   $?				#返回布尔测试值,0为真，1为假

#test 
test "$x" ="$y" 
echo   $?


test  -n -z  $x			#判断字符是为空|不为空
echo $?







			
x=1.5				#整数条件测试
y=8

-ne:不等于
-eq:等于
-ge:大于等于
-le:小于等于
-gt:大于
-lt:小于
						#1:测试值必须为整数，不可为小数或不同的数据类型
						#2:测试符必须为英文缩写,不可为数学符号
						#数值判断符
[ "$x" -eq  "$y" ]				#<=		
echo $?				#执行判断的必须为相同的数据类型


test "$x"  -gt  "$y" 			#>=
echo $?


test	1 -eq  1				#=
echo $?


								#文件测试

FTP

			#1:-a,-e:判读文件是否存在
			#2:-x,-r,-w:是否执行，可读，可写
			#3:-u:是否具有SGID和SUID权限
			#4:-L,-d,-b:是否是连接，目录，块等文件类型

echo "对/home下的document文件测试"

test -a "/home/document"			#判断文件是否存在
echo $?							#返回状态布尔值
mkdir -p /home/document
test -a "/home/document"			#再次判断文件是否存在
echo $?

cd /home/
touch 1
test -x 1					#测试文件是否可执行
echo $?
echo "sorry you document can't execute"
chmod  777 1
test -x 1					#再次测试文件是否可执行
[ -x 1 ]
echo $?


cd /home
chmod   333 1 #去除1的x "r",保留x 的 "w" 权限
[ -r 1   -o -w 1  ] #-a -w 1 ]		#逻辑运算符-a(和),-o(或),!(非)
echo $?				#判断1是否可读并且可写




					#条件判断



if [ -a  /etc/sysconfig/selinux  ];then					#if...then单分支
	echo "你的linux系统加固了selinux安全子层"
fi



#echo "shell脚本" > ./test
if:;then echo "active";fi

							#&&代替if测试
test "$(w)"="root" && (you login user not is superadmin;exit 1)

									
echo "please input your number:"		#if..then..else双分支
read number				#接受用户输入
if [ "$number"  -gt 10 ];then
	echo "your numbe gater than ten"
else
	echo "your number letter than ten"
fi
					
	