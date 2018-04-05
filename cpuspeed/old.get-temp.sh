#!/bin/bash

#cpu_freq | sed -n 2,2p | awk -F" governor" ' { print $1 }'| awk -F "temp=" ' { print $2 }'




temperature=$(cpu_freq | sed -n 2,2p | awk -F" governor" ' { print $1 }'| awk -F "temp=" ' { print $2 }')




#echo $(date +%d\ %m\ %Y\ %H:%M:%S),$temperature >> /mount/tmpfs/sp500-tg.csv
#write it to normal drive 
#echo $(date +%d\ %m\ %Y\ %H:%M:%S),$temperature >> /var/www/html/sp500-tg.csv
#mosquitto_pub -h localhost -t /sensors/cpu/nanopi -r -m "$temperature" 
#send to mqtt with 3tabs
#mosquitto_pub -h localhost  -t /sensors/cpu/nanopi  -m "$(date +%d%m%Y%H:%M:%S.%3N)			$temperature"
mosquitto_pub -h localhost  -t /sensors/cpu/nanopi  -m "$temperature"
#mosquitto_pub -h 192.168.1.100  -t /sensors/cpu/nanopi  -m "$temperature"
