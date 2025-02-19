date= date +"%b%d-%a %H:%M"
percent= upower -i $(upower -e | grep 'BAT') | grep "percentage" | awk -F':' '{print $2}' | tr -d ' '
echo "$date$percent"
