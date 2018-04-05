#!/bin/bash
# Basic if statement
#
TG=$(df -h | awk '/dev\/shm/{print substr($5, 1, length($5)-1)}')

if [ "$TG" -gt 50 ]
then
echo Hey that\'s less than 50%
rm -rf /dev/shm/* 
else


echo  something 
fi
