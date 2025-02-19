#!/bin/bash
upower -i $(upower -e | grep 'BAT') | grep "percentage"
upower -i $(upower -e | grep 'BAT') | grep "percentage" | awk -F':' '{print $2}'
upower -i $(upower -e | grep 'BAT') | grep "percentage" | awk -F':' '{print $2}' | tr -d ' '
percent=upower -i $(upower -e | grep 'BAT') | grep "percentage" | awk -F':' '{print $2}' | tr -d ' '

echo BAT: $percent

testvar="actualvalue"
echo testing "${percent}", "testing", "testing" ;
