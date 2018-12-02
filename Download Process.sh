#!/bin/bash
#author MarkLiuepeng
#time 2018.11
#Download Process

#声明一个关联数组存储进度值
#下载函数


DownloadFunction(){
declare -A DownloadProcess
DownloadProcess=([a]=0 [b]=30 [c]=100)
sleep 1
echo "start Download"
i=0
while  [ $i -le   ${DownloadProcess[a]} ]
do
echo "The Cureent Download Process Is======${i}"
        sleep 0.1
        let i++
done

while  [    $i -gt   ${DownloadProcess[a]} ]   &&    [ $i -lt  ${DownloadProcess[b]}  ]; do
        #statement
echo  "The Cureent Download Process Is======================${i}"
        sleep 0.5
        let i++
done


while [   $i -ge  ${DownloadProcess[b]}  ]    &&  [ $i -le ${DownloadProcess[c]} ]; do
        echo "The Cureent Download Process Is============================================================================================${i}"
        sleep 0.1
        let i++
done
echo "Your Download Finsed!!!!!!"
}

#更新函数
UpdateFunction(){
local Version=1
echo "Please select Your Soft Ware Update  Version:"
#select
U_version=(1  2  3)
#do
if [  $Version  -le  2 ]
then
        echo "your softwar must update:"
        echo "Input Your softwar Version"
        read U_N
        for h in `seq 10`
        do
        if [ $U_N -ge 3  ]
        then
                echo "no have the version"
                read U_N
               read U_N
        fi
                let h++
        done
        Version=${U_version[U_N]}
        echo "The Cureent softwar version is ${Version}"

#done
fi
}

DownloadFunction                       #调用
UpdateFunction
                 