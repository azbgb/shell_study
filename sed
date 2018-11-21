#替换
echo "This is a test" | sed 's/test/big test/'
#使用多个命令 用;分隔
echo "This is a test" | sed 's/test/big test/; s/a/an/'
或者
echo "This is a test" | sed -e '
> s/test/big test/
> s/a/an/'
