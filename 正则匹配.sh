#!/bin/bash
#----------------RE基础正则表达式------
:<<FTP
str=`ls /bin | grep "^t"`	#匹配开头
echo $str

end=`ls /bin | grep "g$"`  #匹配结尾
echo $end

cd /home
touch a
touch a1
touch b2
single=`ls /home | grep "a."` #匹配任意一个指定字符
echo $single

str=`ls /bin | grep "^aaa*"`	#匹配重复出现的字符
echo $str

str=`ls /bin | grep "^[^a-b]"` #"^[a-b]"`  #匹配范围和范围之外
echo $str
cd /home
rm -rf *
touch a
touch aaa
str=`ls /bin | grep "a\{2,\3}"`
echo $str

echo "Shell Script" > test.sh
str=`cat ./test.sh | grep   "/<S" #"t\>"`     #匹配含有字符开头|结尾的字符串
echo $str

FTP
#-------------------ERE扩展正则表达式---
:<<cat
str=`ls /etc/ | egrep "^ss?"` #+" #匹配出现至少至多一次的字符 
echo $str

str=`ls /bin/ | egrep "(ls | w | p$)"`  #(),|匹配元素子集或
echo $str


touch a
touch b
touch c
str=`ls ./ | egrep "(a | c )"`
echo $str


#----------------Perl正则表达式------
str=`ls /etc/ | grep -P   "rc/D"`  #"rc\d"`  
#匹配非|0-9数字
#-P：指定用Perl语言进行字符匹配

echo $str


					#字符集


#[[:digit]] :匹配含有数字[0-9]的字符
#[[:lower:]] :匹配[a-z]的字符
#[[:upper:]] :匹配[A-Z]的字符
#[[:alnum:]] :匹配[A-Z|[a-z]|[0-9]]的字符
#[[:alpha:]]:匹配 [A-Z|[a-z]的字符


str=`ls /bin | grep "[:dight:]"`
echo $str


#--------正则表达式应用--------

str=`cat /etc/aliases | grep  "^a"`
echo $str


str=`grep "\." 1.txt`   #匹配转义
echo $str 
cat

				#字符集匹配


str=`egrep "800-[[:digit:]]${4}-[[:digit"]]${3} 1.txt"`
echo $str


str=`egrep "[[:digit:]]{4}$" 1.txt`    
#^[[:digit:]]{3}" 1.txt`
echo $str
#筛选四个数字结尾|三个数字结尾的字符

str=`egrep "^([[:digit:]]{1,3}\.){3}[[:digit:]]{1,3}$" 1.txt`
echo $str
				#正则运算优先级和




			#子运算符

str=`ls /bin/[a-b]*` 
 #通配符:匹配单个字符并附加范围
echo $str		 

str=`cat 1.txt |  egrep  '(&nbsp;){2}'`
#匹配指定次数的标记

