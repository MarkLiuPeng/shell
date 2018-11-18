#!/bin/bash								
for((i=0;i<10;i++));do  					#嵌套循环
	for (( j=0;j<i;j++ )); do
		let "product=i*j"
		printf "$i*$j=$product"
		if [[ $product -gt 10 ]]; then
			
			echo "   "
		else
			echo "    "
			#statements
		fi
		if [[ $product -ge 5 ]]; then		#内层循环条件中断
					
					break 2 
					#statements
				fi		
		#statements
	done
	echo 
done

	:<<EOF
	if [[ $product -gt 5 ]]				#外层循环条件中断
	then	
		break					#中断这部分的输出
	fi
	EOF