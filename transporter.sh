#!/usr/bin/env bash
echo "Transporter"
echo "A script to transfer files while you are sleeping..."
echo ""
echo "Please Provide Nessesary Informations"
date=$(date)
touch ~/transporterReport
echo "$date" >> ~/transporterReport
task=0

function permission() {
    echo "Shutdown After Task(s) Completed? (y/n)" 
    read input;
    case $input in
            y)  echo "echo \"All Task Are Done!\" >> ~/transporterReport " >> ~/tasklist.sh
                echo "echo \"Initializing Computer ShutDown At \$(date) \" >> ~/transporterReport " >> ~/tasklist.sh
                echo "echo \"Shuting Down Computer In 5 Seconds\" " >> ~/tasklist.sh
                echo "sleep 1" >> ~/tasklist.sh
                echo "echo \"Shuting Down Computer In 4 Seconds\" " >> ~/tasklist.sh
                echo "sleep 1" >> ~/tasklist.sh
                echo "echo \"Shuting Down Computer In 3 Seconds\" " >> ~/tasklist.sh
                echo "sleep 1" >> ~/tasklist.sh
                echo "echo \"Shuting Down Computer In 2 Seconds\" " >> ~/tasklist.sh
                echo "sleep 1" >> ~/tasklist.sh
                echo "echo \"Shuting Down Computer In 1 Seconds\" " >> ~/tasklist.sh
                echo "sleep 1" >> ~/tasklist.sh
                echo "echo \"Shuting Down Computer At \$(date) \" >> ~/transporterReport " >> ~/tasklist.sh
                echo "sleep 1" >> ~/tasklist.sh
                echo "poweroff" >> ~/tasklist.sh
                runtasks;;
            n)  echo " echo \"All Task Are Done!\" >> ~/transporterReport " >> ~tasklist.sh
                runtasks ;;
            *) echo "Please Choose One Of Them"
                    taskManager;;
    esac
}

function runtasks() {
    cd ~
    chmod +x tasklist.sh
    ./tasklist.sh
     rm tasklist.sh
}

function taskManager()  {
    echo "Add Another Task? (y/n)"
    read input;
    case $input in
            y) taskCreator;;
            n)  echo "Total Task(s) = $task " >> ~/transporterReport
                permission;;
            *) echo "Please Choose One Of Them"
                    taskManager;;
    esac
    
}

function taskCreator() {
    echo "Transfer A File Or A Folder? "
    echo "1 - File"
    echo "2 - Folder"
    read input;
    case $input in
            1) type="rsync --progress" ;;
            2) type="rsync --progress -r" ;;
            *) echo "Please Choose One Of Them"
                    taskCreator;;
    esac
    echo "Full Path Of The Folder Or File is Nessesary"
    echo "Source:"
    read source;
    echo "Destination:"
    task=$(( $task+1 ))
    read destination;
    touch ~/tasklist.sh
    echo "echo \"Starting Task $task\" " >> ~/tasklist.sh
    echo "echo \"Starting Task $task\" >> ~/transporterReport " >> ~/tasklist.sh
    echo "$type $source $destination" >> ~/tasklist.sh
    echo "echo \"Task $task Is Done\" " >> ~/tasklist.sh
    echo "echo \"Task $task Is Done\" >> ~/transporterReport " >> ~/tasklist.sh
    taskManager
}
taskCreator
