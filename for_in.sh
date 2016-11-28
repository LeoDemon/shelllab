###############################
#测试shell编程中的for_in循环    
#add by leodemon
#2013-02-05 16:13:55 

#format like this:
#for 无$变量 in 字符串
#do
#	$变量
#done
###############################

#!/bin/sh
#step1:读取程序变量
varnums="0 1 2 3  a b c"
for i in $varnums
do
	echo "i=="$i
	echo "0"$i>./log/for_in_0$i.log
done

#step2:读取当前路径下到日志文件
cd ./log
#for j in *.log
for j in $(ls *.log)
do
	echo "j=="$j
	cat $j
	cp "$j" ../log_bak/"$j.bak"
done
cd ..

#step3:读取shell的入参，例如：ksh ./for_in.sh love china 2013
for k in $*
do
	echo "k=="$k
done
