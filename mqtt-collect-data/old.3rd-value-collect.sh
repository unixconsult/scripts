mosquitto_sub -h localhost  -t /sensors/cpu/nanopi | xargs -d$'\n' -L2 sh -c 'date "+%d%m%Y%H:%M:%S.%3N$0"'>> /var/www/html/data2.tsv
