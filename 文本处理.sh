#!/bin/bash
#----------文本处理----------



#---------------echo----------------- 
#				"-n":处理光标在末尾
echo -n "Please Input Your Name"
read Name
echo -n "Please Input Your Sex"
read Sex

#				 "-e:转义"
echo -e "Name \t Sex \t"       #\t:制表;\a:响铃
echo -e "Alice \t Women \t"
echo  -e  "Shell Script\a"


echo `ps aux | grep  httpd`
#寄托shell命令

for((i=1;i<10;i++))
do
	for((j=1;j<=$i;j++))
	do
		echo -n -e "$i*$j\t"   #制表符
	done
done


#-------------flod-----------
str=`fold -s -w 5 1.txt` 
  #文本处理fold{-s:折行；-w:折断的列数}
echo $str

#----------------fmt---e------------

str=`fmt -c -w 3 1.txt`    
  #文本格式化fmt{-c:首行缩进;-w:保持字符完整性的折行}
echo $str


#-------------------rev--------
str=`rev 1.txt`
	#反转文本
echo $str


#-------------pr------------------
str=`pr -h "Server Script Language" -a -s 1.txt`
	#文本显示格式化pr{-h:标题}
echo $str
	

#-------------------sort-----------------

			#sort文本排序
str=`sort -k 2,3 1.txt ` 
#-k{start,end}    | 后面是列的参数
echo   -e  "$str\n"




if [ $1 -gt  6 ]  
#接受用户输入的第一个形参进行条件测试
then
		echo "Sorry,You Input Line Gather Than 6"
fi
	result=`sort -r -k  $1  1.txt`  
	#-r逆序第一个实参
	echo $result		


str=`sort -n -k 80.1,85.1 1.txt`  
#列的字符
echo $str
if  [ $1 -gt 5 ]
then
        echo "You Column Number Gather Than Five"
else
        str=`sort    -k   $1,$1 ./1.txt`
        #指定起始和结束的第一个接受的参数，为要执行排序的列数
        echo "$str"
fi


str=`sort -k   2,3r   ./1.txt`
echo  -e  "$str\n"
					#修饰分割符
#r:对指定列字符进行分割符降序修饰
#n:对指定列字符进行分割符按数值排序
str=`sort -t : ￥ -k3n,3 /etc/passwd`
echo $str

#-t:指定分割符的类型

str=`sort -u /etc/sysconfig/network-scripts/ifcfg-ens33`
	#排除重复列
echo  -e $str \n > /etc/sysconfig/network-scripts/ifcfg-ens33



str=`sort   -u -m 1.txt 2.txt    > total.txt`		
#将多个文本进行合并,并附加-u:排除重复列;-m:不进行排序
echo $str

#多条件排序,用-k同时指定多个列进行排序
str=`sort     -s -t :   -k 3n,3r  -k 4n,4 ./1.txt`
echo -e "$str"

#-s:采用稳定的排序算法,

#文本行号
#:采用行号标识每个配置文件，a表示对所有的行具有效果
str=`nl -b a 1.txt > 1.txts`
echo  $str

#--------------grep--------------------


echo  -n "Please Input Your Name"
read Name
while [  $Name != "e" ]; do  			
#当输入不为"e"继续统计输入的行数
	Quiaty=`grep -c "$Name"    1.txt`
	echo "$Name Line is $Quiaty"	
	echo  -n "Please  Agine Input Your Name "	  	
	read Name				#再次读取用户输入
	#statements
done




#---------------wc----------------------


#对文本或文件的个数,字节数,行数等进行统计
str=`find  /etc -name "*.conf"  | wc -l`
echo -e "$str\n"
#--------------------cut------------------
	
			#字符截取
str=`cut -d ":" -f 1,3 /etc/passwd` 		
#分割，匹配列	

#-d:将指定分割符,-f:指定要截取列目标范围{可以为特定值，或者是一个范围}

echo   -e "$str\n"

str=`cut -c 1-3  /etc/passwd`				
#:-c :可用来匹配特定的列，或是列里特定的字符 
#1-3行
echo -e "$str\n"

cut -s -d ":"  -f 2  /etc/passwd   >  1.txt		
#-s:筛选不重复,必须在有包含分割符的截取语句里使用
#more 1.txt

#---------------paste---------------


#!/bin/bash
:<<EOF
echo "a 12 a" > 1.txt
echo "b 53 B" > 2.txt
paste  -d: "￥" 1.txt 2.txt >  3.txt			#拼接1,2文本
cut   -f1,3 	3.txt > 3.txts      #截取3文本1-3列
EOF
result=`paste   -d "￥" 1.txt 2.txt  > 3.txt`
#拼接,"-d":分割符
echo  -e "$result\n\t"
#-----------------------------join-----------
		#需对paste和join做比较:
		#paste针对不同文件不同列，join针对不同文件相同列

result=`join -1   1 -2  2  1.txt 2.txt > 3.txt`		
#不同文件的指定列拼接
echo  -e "$result\n"

result=`join -a 1  -a 2    -o 1.1 2.1 1.txt 2.txt > 3.txt`	
#左 -a 1:包含了第一个文件的所有元素以及第一个文件和第二个文件重复的元素
#右 -a 2:包含了第二个文件的所有元素以及第二个元素和第一个文件重复的元素
#全 -a 1 -a 2连接
#-o 文件自定义列：指定列的特定元素
echo -e "$result\n"


#-------------------------------tr--------

result=`cat 1.txt | tr -s ["\n"]` 
#tr -s "[a-z]" < 1.txt`#筛选|空格不重复的字符
echo -e "$result\n"

for file in `ls /home`			
do
	 echo $file | tr '[a-z]'  '[A-Z]'  
	  #大小写转换    
done


result=`tr -d '[0-9][:]'  < 1.txt`			
#-d :指定字符删除
echo $result

result=`tr -cd "[a-z][A-Z]" "[\n*]"  < 1.txt`		
#补集添加字符删除重复机特殊字符
echo $result

#！/bin/bash
#！/bin/sed
#------------------------流编辑---------------

								
								#条件显示文本
result=`sed -n '1,3p' 1.txt  > 2.txt`		
#筛选1-3行:-n可避免重复的筛选同后一个字段匹配的重复
echo -e  "$result\n"


									#替换文本
:<<FTP
result=`sed  's/\(This\)\(is\)\(string\)/\1\3\2\/'`		
#调整字符显示顺序   
# 's/a/A/g  &/' 1.txt`
#对网络配置文件进行sed过滤
str=`sed -n '{/^IPADD/  | 1~2  | 0~2  p}' /etc/sysconfig/network-scripts/ifcfg-ens33`
echo  -e "$str"

str=`sed    's/a/A  &/'   ./1.txt`

#'s;<[^>]*>;;g' 1.txt`     #";"替代"/"
#'s/<[^>]*>//g' 1.txt` 				#筛选伪标签
#'2,4 s/a/A/g' 1.txt ` #> 2.txt    #替换文本{g:全局;指定行号}
#'0~2 p' 1.txt > 2.txt`     #筛选偶数行
#'1~2 p' 1.txt  > 2.txt` 	#筛选奇数行     
#'$,p' 1.txt > 2.txt        #筛选首行
echo -e "$result\n"

							#删除文本



result=`sed -e   '0~2 d' 1.txt > 2.txt`		#偶数行
#-e:子运算
#'$ d' 1.txt   > 2.txt      #末行
#'1 d' 1.txt  > 2.txt` 			#首行			
echo -e "$result\n"


		
							#追加文本
result=`sed -e  '2  a  shell scripts' 1.txt > 2.txt`
echo -e "$result\n"


FTP

							#插入文本
expr=`sed '$ i end string insert'  1.txt > 2.txt`
echo -e "$expr\n" 



#=======================sed组合==================


																			
result=`sed    -n -e 's/a/A/g'  -e '1,2  p'  1.txt`	 #替换+截取
echo -e "$result\n"	

result_x=`sed -e 's/b/B/g;2 i Shell Script'   1.txt`	#替换+插入(;独立执行)
echo -e "$result_x\n"

#按照优先顺序，先前匹配的属性将不能被后来的属性生效


result_y=`sed -n 1,5'{
					#替换+截取+插入
		s/a/A/g
		s/b/B/g
		2 i Shell Script
		p
}' 1.txt`
echo 	-e "$result_y\n"


												#读取
result_z=`sed   -n 1,5'{
					 f /etc/sysconfig/selinux
					 p
			}' selinux_backup`
echo -e "$result_z\n"


#=============================awk=======================


				#输出

Test_Var=`awk '{ print }' 1.txt`			#基本输出{ print }
echo  "$Test_Var"

Test_Var_One= `awk -f test.awk 1.txt`		#文件读入输出
echo "$Test_Var_One"


#!/bin/awk -f   					#可执行文件输出
	{ print }
				#匹配
											#运算符匹配
Test_Var_Tow=`awk '$2>100 { print } '  1.txt`       #$列数变量匹配   
echo "$Test_Var_Tow"

								#正则匹配
Test_Var_There=`awk  '/^(a|b)/  { print }'  1.txt`    #匹配多个字母开头
#'/^a/ { print }' 1.txt`			#匹配开头
echo "$Test_Var_There"

							#混合匹配和区间匹配
Test_Var_Four=`awk  '/^a/ && $2 > 100 { print }' 1.txt`
echo  "$Test_Var_Four"



#! /bin/awk -f

	#函数
BEGIN{
									#字符函数
	#x="shell sciprt"
	print index("shell script","script")  		#位置:匹配后一个字符串出现在前一个字符串的位置,	匹配不到返回"0"
	print length("shell script")		#长度:计算字符的长度
	match("shell script",/o/)		#正则匹配子字符出现父字符位置(RSTART)及长度(RLENGTH)
									#，“//”:正则匹配,
	print RSTART ,RLENGTH			
	string="5a123B4"
	split(string,arry,/[aB]/)			#分割数组
	print arry[0]
	print arry[1]
	print arry[2]
	array[0]="a"
	array[2]="b"
	array[1]="c"
	array[5]="r"
	for ( i in array){				#遍历数组
		print i   			#遍历索引
	}


}


#!/bin/awk -f
							#sub:#选取特定字符赋予标记

BEGIN {
        string=P12-P23   P43-p1
        while (match(string,/[0-9]+/)>0){
        print substr(string,RSTART,RLENGTH)
        sub(/[0-9]+/,"",string)
        }
}

	string="abc001dad0adadabc015"
	sub(/(abc)+[0-9]*/,"(&)",string)
	print string				
	rsub(/(abc)+[0-9]*/,"(&)",string)
	print string

#!/bin/awk -f

								#逻辑流程控制
#!/bin/awk -f
							#if...else分支控制
BEGIN {
        if ( $2 > 10 )
        {


                 print $2

        }else

        {


                $2="A"
                print $2

        }
}


#!/bin/awk -f
							#数学函数{sin:正弦；cos:余弦......}
BEGIN {
        x=90
        print cos(x)




}

{

        #Var_x=1
        #print "This is Report Heder"
        print  $1,$2+$3					#计算多个字段得出新的字段
 }





BEGIN {									#while循环匹配
        i=1
        while(++i <=9)
        {

        print i^2

        }


}


#!/bin/awk -f  						#do.while循环匹配

BEGIN {
        i=1
        do{

        print i^2

        }while(++i <=9)
}
~

#!/bin/awk -f
										#for循环选择
BEGIN {
        for(i=1;i<=9;i++){
                for(j=1;j<i;j++){
                        if(i*j<10){
                                 row=row" "j*j
                        }
                        else{
                                 row=row" "i*j
                        }

                }

                print row
                row=row""

        }




}
"1.sh" 23L, 180C  




#!/bin/awk -f 								#continue和break处理循环分支退出和中断awk关键字

BEGIN {
        while(getline < 1.txt > 0){
                if($1==a){
                #break
                continue

                }
                else{

                 print $1,$2

                }


        }

}



#!/bin/awk -f



        /^[\t]*$/ {
        next							#同continue用处理结果并跳出相应结果

        }




{
        print   $1,$2,$3

}



#!/bin/awk -f


 {

        printf("%s\t%d\t%d\n",$1,$2,$3)					#格式化输出:%S:匹配字符;%d：匹配数字;



}
~


 				#运算符:同shell相同

:<<EOF

{
	grade=($2>100? "A":"B")			#条件运算符
	print $grade
}

BEGIN{
        x=100/2
        print x
        str=($2>2?"A":"B")
        print str
        #print "This is Report Heder"
        #iVar_x=1
        #print  $1,$2+$3
}

#!/bin/awk -f


  $1  ~ /b/  { print }  1.txts 				#匹配运算符:
  									A ~ B 
  									A !~ B


 {						
	print
	print "==========="					#记录分割符
	#x="shell" "script"				#awk变量  :同shell变量不同没有 "$"符号
	#print x
}
BEGIN{
	RS=""				#记录分割符
	FS="\n"				#字段分割符
}
{
	print $1

}

EOF
:<<EOF
BEGIN {						#开始模式
 print "shell start" 
}
{ print }
END {						#结束模式
	print "shell over"
}
EOF




:<<EOF
Test_Var_Four=`awk  '/^a/ && $2 > 100 { print }' 1.txt`			#混合模式
echo  "$Test_Var_Four"

Test_Var_Five=`awk '/^a/    $2==21  { print } ' 1.txt`			#区间模式
echo "$Test_Var_Five"
EOF


#!/bin/awk -f

BEGIN{

         #system("ls /bin> files")
         #while(  getline  < "files"  >0)
        #{										#awk和shell的交换处理:system()

        #       print  $1

        #}
        while( "who" | getline ) n++
        printf("The Cureent Online User Number is %d\n",n)



}






