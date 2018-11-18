#!/bin/bash

result=$((4 += 6))						#复合算数运算符
echo "$result"

:<<FTP							#位运算符
x=let "2 >>  1 "				#2的二进制向右移一位
echo "$x"
y=$[ "$x" ~= 1 ]				#变量x与1异或
echo "y"
z=`expr 1 ^ 0`					#1和0取反
echo $z 
FTP
result=$[ 2 << 1 ]
echo "$result"
x=1
result=$[ x |= 2 ]					#位复合运算符
echo "$result"


y=5									#自增自减运算符
result=$[ y+(++y) ]
echo "$result"
result=$((result++))
echo "$result"
result=$[ --result ]
echo "$result"

#法一:
((x=201))							#二，八，十六进制
echo "$x"
((y=021))
echo "$y"
((z=0x21))
echo "$z"
#法二
((x=2#201))
echo "$x"
((y=8#201))
echo "$y"
((z=16#201))
echo "$z"



















