#!/bin/bash

#read x
#read y
#x=1
#declare  -r x
#echo $x
#x=2
len=$#
if [ $len -gt 6 ]
then
	#/local/mongo/
	 cd D:\mongodb\bin
	 mongod 	#start mongo nosql server
elif  [ $len -lt 6 ]
then
	#ps aux | grep  mongod > /home/root/db.log#sure the computer  mongo server
	cd D:\redis
	redis-server   redis.windows.conf

else
	exit 0

fi
#echo $x
#let  z=x+y

#echo  $z 
#y=2
#z=`expr x + y`
#echo $z
 
