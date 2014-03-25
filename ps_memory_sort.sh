#! /bin/bash

# 用于查看进程内存排序

ps axu | awk '$6 > 0 {printf("%s\t%s\t%s\t%s\t%s %s\n", $2, $3, $4, $6, $11, $12)}' | sort -k3nr

# ps axu：查看全部进程信息
# awk：过滤显示 PID %CPU %MEM RSS(>0) COMMAND
# sort：排序 
#   -k3：按照 RSS 进行排序
#   -n：按照数字进行排序
#   -r：表示反转排序结果（到序）
