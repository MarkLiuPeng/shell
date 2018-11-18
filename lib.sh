
#---库文件--
function Error(){
	echo "Error:"  $@  1&>2		#错误输入输出
}

function Waring(){
	echo "Waring:" $@  1&>2		#警告输入输出
}