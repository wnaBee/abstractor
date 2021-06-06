#!/bin/bash

compchk=$(dpkg --list | grep g++)
DF=0

if [[ -z ${compchk} ]]
then
	echo "g++ has not been installed, please install it by running: sudo apt-get install g++"
else
	sudo g++ -I src/cppcode -I src/pythoncode -I src src/filereader.cpp -o /usr/local/bin/filereader
	cp src/formatter.sh /usr/local/bin/formatter.sh
	echo "alias abstract='/usr/local/bin/formatter.sh'" >> ~/.bash_aliases
	source ~/.bash_aliases
fi


