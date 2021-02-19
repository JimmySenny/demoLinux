#!/bin/bash

ls 1>output.txt   #把标准输出重定向到一个文件
ls 2>output.txt   #把标准错误重定向到一个文件
ls xxx 1> output.txt 2> error.txt
cat input.txt > output.txt 2>&1 #把把标准输出和标准错误一起重定向到一个文件中
cat < input.txt   #命令以文件作为标准输入
cat < input.txt > output.txt  #命令以文件1作为标准输入，以文件2作为标准输出
command <<delimiter #从标准输入中读入，直至遇到delimiter分界符 cat >> output.txt
<<EOF
cat <&m     #把文件描述符m作为标准输入
ls >&m      #把文件描述符m作为标准输出
command <&- #关闭标准输入
>output.txt #创建一个长度为0的空文件
