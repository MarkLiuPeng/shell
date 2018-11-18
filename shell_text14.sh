#!/bin/bash

			#将该文件封装成子shell
#find / -name "*.txt" exec  rm -rf {}\;
	#父子shell
function TestFunction(){
echo "SubShell Start ExeCute"
(
count=1
while [ $count -le 100 ]; do
	echo  "Im AI"  #"$count"
	sleep 1
	((count++))
	#statements
done
)&
echo "Finesed"
}