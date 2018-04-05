#!/bin/bash
if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" >> /tmp/thomas
   exit 1
fi


stty -F /dev/ttyS1 9600 -parenb -parodd -cmspar cs8 -hupcl -cstopb cread clocal -crtscts -ignbrk brkint ignpar -parmrk -inpck -istrip -inlcr -igncr -icrnl ixon -ixoff -iuclc -ixany -imaxbel -iutf8 -opost -olcuc -ocrnl -onlcr -onocr -onlret -ofill -ofdel nl0 cr0 tab0 bs0 vt0 ff0 -isig -icanon iexten -echo echoe echok -echonl -noflsh -xcase -tostop -echoprt echoctl echoke



cat < /dev/ttyS1 | awk '{ print strftime("%Y%m%d:%H:%M:%S\t")$0; fflush(); }'  >> /dev/shm/legend2.tsv # & #>/dev/null #&disown 
#picocom -b 9600 /dev/ttyS1 | awk '{ print strftime("%Y%m%d:%H:%M:%S,")$0; fflush(); }' | tee /var/www/html/serial.$(date +%F_%R)
#picocom -b 9600 /dev/ttyS1 | awk '{ print strftime("%Y%m%d:%H:%M:%S	")$0; fflush(); }' | tee /dev/shm/serial.collect.$(date +%F_%R)
 
#/scripts/serialcollect/prepare-serial.tsv.sh &

#picocom -b 9600 /dev/ttyS1 | awk '{ print strftime("%Y%m%d:%H:%M:%S\t")$0; fflush(); }' | tee /dev/shm/serial.tsv 
##/usr/bin/picocom -b 9600 /dev/ttyS1 | awk '{ print strftime("%Y%m%d:%H:%M:%S\t")$0; fflush(); }'  > /dev/shm/serial.tsv 


#sed -i '1s/^.*$/date\tpower/' /dev/shm/serial.tsv

#remove 20 last lines from serial.collect

#head -n -20 /dev/shm/serial.collect >/var/www/html/serial.dat
#sed -i 1,4d  /var/www/html/serial.dat


##sed -i '1s/^.*$/date\tpower/' /dev/shm/serial.tsv
# start another scrip which waits and puts 
##head -n -20 /dev/shm/serial.tsv > /dev/shm/serial.dat
#cp /dev/shm/serial.dat /dev/shm/serial.tsv
#sed -i '1s/^.*$/date\tpower/' /dev/shm/serial.tsv

# head -n -20 /dev/shm/serial.collect > /dev/shm/serial.dat


#sed modifies the same file
#sed -i 1,4d /dev/shm/serial.dat
#cat /dev/shm/serial.dat  |tr ',' '\t' >> /dev/shm/serial.tsv


exit 0 
