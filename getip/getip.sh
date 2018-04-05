#!/bin/bash



rm /mnt/tmpfs/awk.txt
rm /mnt/tmpfs/ip.txt

 curl http://checkip.dyndns.org/ > /mnt/tmpfs/awk.txt 

 cat /mnt/tmpfs/awk.txt |awk -F":\ " ' { print $2 }'| awk -F"</body" ' { print $1 }' > /mnt/tmpfs/ip.txt

 myip=$(cat /mnt/tmpfs/ip.txt)
 oldip=$(cat /mnt/tmpfs/ip.txt.old)


if [ "$myip" != "$oldip" ]; then
 mosquitto_pub -h m21.cloudmqtt.com -p 13179 -u faqxwirt -P t0uUryHwCbgH -t /tg2 -m "$myip $(date)" -r
mv /mnt/tmpfs/ip.txt /mnt/tmpfs/ip.txt.old

else

#mosquitto_pub -h m21.cloudmqtt.com -p 13179 -u faqxwirt -P t0uUryHwCbgH -t /tg2 -m "ip not changed" -r
rm /mnt/tmpfs/ip.txt

fi
