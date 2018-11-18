#！/bin/bash
for (( i = 0; i < 10; i++ ));do
	if [[ "$i%2" -eq 0  ]];then
		continue				#跳出这个输出
		#statements
	fi
	echo "$i"				#输出所有奇数
	#statements
done

for i in   a b c d 
do
	echo -n "$i"		
	for j in `seq 10` 
	do
		if [ $j -eq 5 ]; then
			#break 2				#退出状态码
			continue   2 				#跳出状态码
			#statements
		fi
		echo -n "$j"
	done
	echo 
	#statements
done