###############################
#����shell����е�for_inѭ��    
#add by leodemon
#2013-02-05 16:13:55 

#format like this:
#for ��$���� in �ַ���
#do
#	$����
#done
###############################

#!/bin/sh
#step1:��ȡ�������
varnums="0 1 2 3  a b c"
for i in $varnums
do
	echo "i=="$i
	echo "0"$i>./log/for_in_0$i.log
done

#step2:��ȡ��ǰ·���µ���־�ļ�
cd ./log/
#for j in *.log
for j in $(ls *.log)
do
	echo "j=="$j
	cat $j
	cp "$j" ../log_bak/"$j.bak"
done
cd ..

#step3:��ȡshell����Σ����磺ksh ./for_in.sh love china 2013
for k in $*
do
	echo "k=="$k
done

