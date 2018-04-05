#!/bin/bash
#mosquitto_sub -h localhost  -t /sensors/cpu/nanopi | xargs -d$'\n' -L2 sh -c 'date "+%d%m%Y%H:%M:%S.%3N$0	4"'>> /var/www/html/data2.tsv

#mosquitto_sub -h localhost -t /sensors/cpu/nanopi | xargs -d$'\n' -L2 sh -c 'date "+%d%m%Y%H:%M:%S.%3N			$0	4"' >>/var/www/html/data2.tsv

mosquitto_sub -h localhost -t /sensors/cpu/nanopi | xargs -d$'\n' -L2 sh -c 'date "+%d%m%Y%H:%M:%S.%3N			$0	"' >>/dev/shm/data2.tsv &


#mosquitto_sub -h localhost -t /sensors/cpu/beere2 | xargs -d$'\n' -L2 sh -c 'date "+%d%m%Y%H:%M:%S.%3N				$0"' >>/var/www/html/data2.tsv &

