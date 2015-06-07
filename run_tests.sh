#! /bin/bash

echo
echo -e "\x1b[36m Testing on NOT stripped bytecode \x1b[0m"
echo
for bc in test/not_stripped/*.luc; do
    echo $bc >> test/not_stripped/test.log
    if ./main.py $bc 1> /dev/null 2>> test/not_stripped/test.log
    then
	RES="\x1b[32m[OK]\x1b[0m"
    else
	RES="\x1b[31m[FAIL]\x1b[0m"
    fi
    echo -e "${RES} \t - $(basename ${bc})"
done

echo
echo -e "\x1b[36m Testing on Stripped bytecode \x1b[0m"
echo
for bc in test/stripped/*.luc; do
    echo $bc >> test/stripped/test.log
    if ./main.py $bc 1> /dev/null 2>> test/stripped/test.log
    then
	RES="\x1b[32m[OK]\x1b[0m"
    else
	RES="\x1b[31m[FAIL]\x1b[0m"
    fi
    echo -e "${RES} \t - $(basename ${bc})"
done
