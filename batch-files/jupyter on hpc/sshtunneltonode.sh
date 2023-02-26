#!/bin/bash

#Different gobal variables
myport=8781 #choose between 8000 and 9999
iam=$(whoami) #your username to login into masternode/hpc

# grabbing the first free node
firstfreenode=$(pbsnodes -a | grep -i "free" -n | cut -d ":" -f 1 | sed -n '1p')

#finding node number
if [ $firstfreenode = 4 ]
then
    node=01
elif [ $firstfreenode = 26 ]
then
    node=02
elif [ $firstfreenode = 48 ]
then
    node=03
elif [ $firstfreenode = 70 ]
then
    node=04
elif [ $firstfreenode = 92 ]
then
    node=05
elif [ $firstfreenode = 114 ]
then
    node=06
elif [ $firstfreenode = 136 ]
then
    node=07
elif [ $firstfreenode = 158 ]
then
    node=08
elif [ $firstfreenode = 180 ]
then
    node=09
elif [ $firstfreenode = 202 ]
then
    node=10
elif [ $firstfreenode = 224 ]
then
    node=11
elif [ $firstfreenode = 245 ]
then
    node=12
elif [ $firstfreenode = 266 ]
then
    node=13
else
    node=14
fi

#assiging ip
nodeip=10.10.10.1$node #ip address of compute node
#echo $nodeip

# sshing into selected compute node
ssh -L $myport:localhost:$myport $iam@$nodeip "bash start-jupyter.sh"
