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


