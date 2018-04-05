#!/bin/bash

#/usr/bin/picocom -b 9600 /dev/ttyS1 | /usr/bin/awk '{ print strftime("%Y%m%d:%H:%M:%S\t")$0; fflush(); }'  > /dev/shm/serial.tsv 
/usr/bin/picocom -b 9600 /dev/ttyS1
