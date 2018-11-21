awk options program file
选项： 
-F fs 指定行中划分数据字段的字段分隔符
-f file 从指定的文件中读取程序
-v var=value 定义gawk程序中的一个变量及其默认值

awk程序脚本用一对花括号来定义
$0代表整个文本行
$n代表文本行中的第n个数据字段

#打印每行按默认空格分隔符划分的第一个字段
echo 'One line of test text.
> Two lines of test text.
> Three lines of test text.' | awk '{print $1}'

#以:做分隔符
gawk -F: '{print $1}' /etc/passwd

#在程序脚本中使用多个命令 用;分隔
echo "My name is Rich" | gawk '{$4="Christine"; print $0}'
或
echo "My name is Rich" | gawk '{
> $4="Christine"
> print $0}'

#从文件中读取程序
awk -f 脚本文件  输入数据文件

#在处理数据前后运行脚本
awk 'BEGIN {FS=":"; print "begin awk:"}
> {print $1}
> END {print "end awk."}' /etc/passwd
