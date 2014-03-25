#! /bin/bash

# 彻底干掉 wine-QQ 2013

sudo kill -9 `ps -ef | awk '/C:\\\\/ {print $2}'`

# awk：使用正则匹配 C:\ 的进程 pid，然后 kill -9 干掉
