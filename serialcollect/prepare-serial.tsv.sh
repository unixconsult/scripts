#!/bin/bash

#sleep 3
sed -i '1s/^.*$/date\tpower/' /dev/shm/serial.tsv
