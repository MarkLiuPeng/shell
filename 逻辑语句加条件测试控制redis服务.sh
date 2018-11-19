#!/bin/bash
i=0
case $# in 
	[1-6])
		for  i in `seq 3`
		do 	
			ps aux | grep redis
			let i++
		done
		;;
	[6-9])
		while  [  $i   -le 3 ]
		do

			tail -n  3  ./redis.log
			let i++
			#i=`expr i+i`
		done
		;;
	0)
		sleep  2
		echo "you input number len is little,plese input agein"
		;;
	*)
		exit 0
		;;
	
	esac

