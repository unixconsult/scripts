#!/bin/bash -x
#PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/scripts/serialcollect
if /bin/pidof -x "serialcollect.sh" >/dev/null; then
    echo "Process is running">> /scripts/serialcollect/echofile.tg
	echo $(date +%F_%R) >> /scripts/serialcollect/echofile.tg

else
echo "Process  not running" >>/scripts/serialcollect/echofile.tg
 /scripts/serialcollect/serialcollect.sh  &>/dev/null
echo $? >>  /scripts/serialcollect/echofile.tg
echo $(date +%F_%R) >> /scripts/serialcollect/echofile.tg
fi

exit 0
