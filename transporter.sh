#!/usr/bin/env bash
## Note If Your
echo "Starting Transfering Files"
touch ~/transporterLOG

#Task 01
echo "Starting Task 01" >> ~/transporterLOG
rsync --progress -r [Source Directory] [Destination]
echo "Task 01 Complere" >> ~/transporterLOG
#Task 02
echo "Starting Task 02" >> ~/transporterLOG
rsync --progress -r [Source Directory] [Destination]
echo "Task 02 Complere" >> ~/transporterLOG
#Task 03
echo "Starting Task 03" >> ~/transporterLOG
rsync --progress -r [Source Directory] [Destination]
echo "Task 03 Complere" >> ~/transporterLOG
#Task 04
echo "Starting Task 04" >> ~/transporterLOG
rsync --progress -r [Source Directory] [Destination]
echo "Task 04 Complere" >> ~/transporterLOG
#Task 05
echo "Starting Task 05" >> ~/transporterLOG
rsync --progress -r [Source Directory] [Destination]
echo "Task 05 Complere" >> ~/transporterLOG
#Task 06
echo "Starting Task 06" >> ~/transporterLOG
rsync --progress -r [Source Directory] [Destination]
echo "Task 06 Complere" >> ~/transporterLOG
#Task 07
echo "Starting Task 07" >> ~/transporterLOG
rsync --progress -r [Source Directory] [Destination]
echo "Task 07 Complere" >> ~/transporterLOG
#Task 08
echo "Starting Task 08" >> ~/transporterLOG
rsync --progress -r [Source Directory] [Destination]
echo "Task 08 Complere" >> ~/transporterLOG

echo "Transfaring Data Is Finished" >> ~/transporterLOG
clear
echo "Transfaring Data Is Finished" 
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
