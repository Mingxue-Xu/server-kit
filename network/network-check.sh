#!/usr/bin/sh
LOG_PATH="logs/network_check.txt"
IP_ADDR=$1
INTERVAL=10
THED=0
while true
do
    sleep $INTERVAL
    is_working=$(ifconfig | grep $IP_ADDR)
    size=${#is_working}
    currentTime=`date "+%Y-%m-%d %H:%M:%S"`
    if [ $size -eq $THED ]
    then
        cards=$(lshw -class network | grep logical |  awk '{print $3}')
        for c in $cards
            do
                ifconfig "$c" down
                sleep $INTERVAL
                ifconfig "$c" up
                sleep $INTERVAL
                echo "$currentTime restart $c" >> $LOG_PATH
            done
    fi
done
