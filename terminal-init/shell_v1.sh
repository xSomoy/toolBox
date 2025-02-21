percent=$(upower -i $(upower -e | grep 'BAT') | grep "percentage" | awk -F':' '{print $2}' | tr -d ' ')
dateTime=$(date +"%d-%b: %a ‡ %H:%M")
echo $dateTime ⚡ $percent 
