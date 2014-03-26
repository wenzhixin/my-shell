#!/bin/bash
# change mode
# dirs: chmod 775
# files: chmod 664
 
if [ $# -ne 1 ]; then
	echo "useage: $0 dirname"
	exit 0
fi
 
if [ -a $1 ]; then
	find $1 -type d -exec chmod 775 {} \;
	find $1 -type f -exec chmod 664 {} \;
	echo "change mode success!"
else
	echo "Error: $1 : is not exists!"
fi
