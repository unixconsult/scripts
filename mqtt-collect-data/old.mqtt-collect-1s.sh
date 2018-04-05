#!/bin/bash
#mosquitto_sub -h localhost -t /tg1 | xargs -I ID echo "$(date +%d\ %m\ %Y\ %H:%M:%S),ID" >>  /mount/tmpfs/mqtt-1s.csv 

#mosquitto_sub -h localhost  -t /tg1 | xargs -d$'\n' -L1 sh -c 'date "+%D %T.%3N,$0"'
#mosquitto_sub -h localhost  -t /tg1 | xargs -d$'\n' -L1 sh -c 'date "+%d %m %Y %H:%M:%S,$0"'
#mosquitto_sub -h localhost  -t /tg1 | xargs -d$'\n' -L1 sh -c 'date "+%d %m %Y %H:%M:%S.%3N,$0"'
#mosquitto_sub -h localhost  -t /tg1 | xargs -d$'\n' -L1 sh -c 'date "+%d %m %Y %H:%M:%S,$0"'>> /mount/tmpfs/mosqtg1.txt

#2 topics 1 line
#tab is tab!

mosquitto_sub -h localhost  -t /sensors/sens1/+ | xargs -d$'\n' -L2 sh -c 'date "+%d%m%Y%H:%M:%S.%3N	$0	$1"'>> /var/www/html/data2.tsv

#3topics-working
#mosquitto_sub -h localhost  -t /sensors/# | xargs -d$'\n' -L3 sh -c 'date "+%d%m%Y%H:%M:%S.%3N   $0      $1	$2"'

