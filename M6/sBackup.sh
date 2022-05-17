#!/bin/bash
if [ -z "S?"] ; then
	echo 'Enter parameters'
	exit 2
fi

echo "last change was on"
	stat -c %y $2
isempty=$(diff <(find $1 -type f -exec md5sum {} + | sort -k 2 | sed 's/ .*\// /') <(find $2 -type f -exec md5sum {} + | sort -k 2 | sed 's/ .*\// /'))
if [[ $? != 0 ]]; then
	echo "there is a difference"
	rm -r $2/
	cp -a $1/. $2
	HISTFILE=~/.bash_history
	HISTTIMEFORMAT="%d/%m/%y %T "
	echo 'export HISTTIMEFORMAT="%d/%m/%y %T "' >> ~/.bash_profile
	. ~/.bash_profile
	set -o history
	history | grep $1 > ./log.txt
else
	echo "no difference"
fi
