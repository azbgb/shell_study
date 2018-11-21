#替换 s/pattern/replacement/flags 默认只替换每行中出现的第一处
echo "This is a test test" | sed 's/test/big test/'
flags有4种可用的替换标记：
数字，表明新文本将替换第几处模式匹配的地方
g，表明新文本将会替换所有匹配的文本
p，表明原先行的内容要打印出来
w file，将替换的结果写到文件中

#使用多个命令 用;分隔
echo "This is a test" | sed 's/test/big test/; s/a/an/'
或者
echo "This is a test" | sed -e '
> s/test/big test/
> s/a/an/'

#从文件中读取命令
sed -f 脚本文件 输入数据文件

#指定行号过滤
sed '2s/dog/cat/' data.txt   #指定第2行
sed '2,3s/dog/cat/' data.txt #指定第2到第3行
sed '2,$s/dog/cat/' data.txt #指定第2行到最后一行

#通过文本匹配过滤
sed '/mail/s/bash/csh' /etc/passwd  #把还有mail行的bash改成csh

#删除行 d
sed '3d' data.txt  #删除第3行
sed '3,$d' data.txt #删除第3行到最后一行
sed 'd' data.txt    #删除所有行
sed '/mail/d' data.txt #删除含有mail的行
sed '/^$/d' data.txt   #删除空行

#插入和附加文本  i  a
sed '[address]command\new line'
echo "Test Line 2" | sed 'i\Test Line 1'  #在前面插入
echo "Test Line 2" | sed 'a\Test Line 1'  #在后面附加

#修改行  c
sed '3c\This is a change line.' data.txt  #修改第3行
sed '/mail/c\this is  a change line.' data.txt  #修改含有mail的行

#转换命令  y
sed '[address]y/inchars/outchars/'
echo "test transform abc" | sed 'y/abcd/1234/'  #把abcd分别替换成1234  如果个数不对会报错

#打印
p命令用来打印文本行
等号（=）命令用来打印行号
l（小写的L）命令用来列出行
sed -n '2,3p' data.txt  #只输出2、3行
sed '=' data.txt    #打印行号

#写入文件 w
sed -n '2,3w data2.txt' data.txt  #把文件的2、3行写入到data2.txt

#从文件读取数据 r
读取（read）命令（r）允许你将一个独立文件中的数据插入到数据流中
sed '3r data2.txt' data.txt #把data2.txt数据插入到data.txt的第3行之后
sed '/mail/r data2.txt' data.txt #把data2.txt数据插入到data.txt含mail行之后
sed '$r data2.txt' data.txt   #把data2.txt数据插入到data.txt末尾

