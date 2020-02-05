#!/bin/bash
#auto remote exec command
############################

IP_FILES="/root/ip_list.txt"
COMMAND="$*"

for IP in `cat $IP_FILES`
do
	echo -e "\033[32mThe $IP remote command follow results:\033[0m"
	ssh -l root $IP "$COMMAND"
	echo 
done
