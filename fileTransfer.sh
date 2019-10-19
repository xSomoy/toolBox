#!/usr/bin/env bash
echo "Starting Transfering Files"
touch ~/transferStatus

echo "Changing Directory For Task 01-03" >> ~/transferStatus
cd /media/root/Data/Work/Photography/2019/Narayanganj\ -\ 2019/
#Task 01
echo "Starting Task 01" >> ~/transferStatus
rsync --progress -r Merin\ \&\ Resort/  /root/Documents/Work/Photography/2019/Narayanganj\ -\ 2019/Merin\ \&\ Resort/
echo "Task 01 Complere" >> ~/transferStatus
#Task 02
echo "Starting Task 02" >> ~/transferStatus
rsync --progress -r Shabdi/  /root/Documents/Work/Photography/2019/Narayanganj\ -\ 2019/Shabdi/
echo "Task 02 Complere" >> ~/transferStatus
#Task 03
echo "Starting Task 03" >> ~/transferStatus
rsync --progress -r Street/  /root/Documents/Work/Photography/2019/Narayanganj\ -\ 2019/Street/
echo "Task 03 Complere" >> ~/transferStatus

cd /media/root/Data/Work/
#Task 04
echo "Starting Task 04" >> ~/transferStatus
rsync --progress -r ZIP/  /root/Documents/Work/ZIP/
echo "Task 04 Complere" >> ~/transferStatus

echo "Changing Directory For Task 05-08" >> ~/transferStatus
cd /media/root/Data/Work/zDeactivated/
#Task 05
echo "Starting Task 05" >> ~/transferStatus
rsync --progress -r Cyber\ Security/  /root/Documents/Work/zDeactivated/Cyber\ Security/
echo "Task 05 Complere" >> ~/transferStatus
#Task 06
echo "Starting Task 06" >> ~/transferStatus
rsync --progress -r Development/  /root/Documents/Work/zDeactivated/Development/
echo "Task 06 Complere" >> ~/transferStatus
#Task 07
echo "Starting Task 07" >> ~/transferStatus
rsync --progress -r Mayan/  /root/Documents/Work/zDeactivated/Mayan/
echo "Task 07 Complere" >> ~/transferStatus
#Task 08
echo "Starting Task 08" >> ~/transferStatus
rsync --progress -r Writing/  /root/Documents/Work/zDeactivated/Writing/
echo "Task 08 Complere" >> ~/transferStatus

echo "Transtaring Data Is Finished" >> ~/transferStatus
clear
echo "Transtaring Data Is Finished" 
echo "Shuting Down Computer In 5 Seconds"
echo "5"
sleep 1
echo "4"
sleep 1
echo "3"
sleep 1
echo "2"
sleep 1
echo "1"
sleep 1
echo "Shutting Down..."
sleep 2
poweroff
