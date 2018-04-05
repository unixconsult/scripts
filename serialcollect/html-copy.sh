#!/bin/bash
cp /var/www/html/legend2.html /dev/shm
cp /var/www/html/vorlage.txt /dev/shm/legend2.tsv
/scripts/serialcollect/serialcollect.sh
