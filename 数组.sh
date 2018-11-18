			#----------数组--------
#!/bin/bash
array[0]="shell"		#数组标准定义
array[2]="script"
echo "${array[@]}"		#数组输出


declare -a x		#修饰数组
x[0]="shell"
x[3]="script"
echo "${x[@]}"

array=(1,2,3,4,5)			#集合定义数组
echo "The array firset  is ${#array[0]}"
echo "The array is ${array[@]}"
echo "The array is length ${#array[@]}"

array=([0]="a",[1]="b",[3]="c")		#键值对定义数组
echo "The array is ${array[@]}"

array="shell script"	 #数组和普通变量
echo "${array[*]}"
echo "${array[@]}"


Students=(Jark Tindy Marks Roses)
echo "Students have ${Students[*]}"

declare -A Grandes
Grandes=([jark]=50 [tindy]=90 [marks]=69 [roses]=30)
echo "Jark Grandes is ${Grandes[jark]}"
Students[jark]=90			
#通过索引修改关联数组元素值 :关联数组索引将扩充不仅是数字，还可以是字符
echo "Jark Grandes is ${Grandes[jark]}"


x=(a b c)
echo "${x[@]}"
x=(a b)					#数组值的覆盖
echo "${x[*]}"

array=( 1 2 )
echo "${array[@]}"
array[2]=3			#向数组末尾追加元素
echo "${array[@]}"

declare -A array    #管理数组追加元素
array=([a]=1 [b]=2)
echo "${array[@]}"
array[c]=3
echo "${array[@]}"

for i in {1..10}			#for为数组赋值
do
	array[$i]=$i
done
echo "${array[*]}"

array=(array[0]="Python" array[1]="Javascript" )
for i in {1..2}		#循环输出数组
do
	echo "${array[$i]}"
done
				

x=("a" "b" "c")
echo "${x}"		#访问数组默认下表0
echo "${x[1]}"	#逐个访问

array=("a" "b" "c" "d" "e" "f")
len="${#array[@]}"		#获取数组长度
for((i=0;i<=$len;i++)){
	echo "${array[$i]}"
}


array=("a" "b" "c")
for e in "${array[@]}"	#数组所有元素作为for条件
do
	echo "$e"
done

array=("A" "B"  "C")
echo "${array[*]:1:1}"	
#数组切片start::step
#对数组元素或数组元素的子元素都可以采取分片
array=("PHP"   "JAVASCRIPT"  "PYTHON"  )
echo "${array[1]:4:10}"



x=(1 2 3)
x=("${x[@]/2/20}")			#数组元素的替换
echo "$x"
echo "${x[*]/1/100}"


y=("a" "b" "c")
echo "Old Legth  is ${#y[@]}"
unset y[1]			#删除数组元素
echo "New Legth is ${#y[@]}"
y2=("${y[@]}")				#复制数组
echo "Copy is ${y2[*]}"
#unset y			#删除全部数组
#echo  "${y[@]}"


x=("Python" "Javascript" "Php" )
y=("Micrsoft" "Mac" "Linux")
z=("${x[@]}" "${y[@]}")		#连接数组
echo "${z[@]}"


echo "1 2 3" > ./1			#文本导入数组
content=(`cat 1`)
echo "${content[*]}"








