#!/bin/bash

#Different gobal variables
myport=8781 #choose between 8000 and 9999
iam=$(whoami) #your username to login into masternode/hpc
masterpass= #your pass
loginip=172.27.1.152 #masternode ip address

# Connecting to masternode by using pass
sshpass -p $masterpass ssh -o StrictHostKeyChecking=no -L $myport:localhost:$myport $iam@$loginip

# Connecting to masternode by using keys
#ssh -L $myport:localhost:$myport $iam@$loginip "bash sshtunneltonode.sh"
