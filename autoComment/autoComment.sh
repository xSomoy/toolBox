#! /bin/bash
sleep 4
count=1199
function counter () {
	add=1  
	count=$(($count+$add))
}
function commenter (){
	xdotool key type $count
	xdotool key type "b"
	xdotool key "Return" &
	sleep 36
	counter
	xdotool key type $count
        xdotool key type "a"
	xdotool key "Return" &
	sleep 36
	counter
	xdotool key type $count
	xdotool key type "a"
	xdotool key "Return" &
	sleep 36
	counter
	xdotool key type $count
	xdotool key type "l"
	xdotool key "Return" &
	sleep 36
	counter
	xdotool key type $count
	xdotool key type "e"
	xdotool key "Return" &
	sleep 36
	counter
	xdotool key type $count
	xdotool key type "r"
	xdotool key "Return" &
	sleep 36
	counter
	counter
	xdotool key type $count
	xdotool key type "f"
	xdotool key "Return" &
	sleep 36
	counter
	counter
	xdotool key type $count
	xdotool key type "a"
	xdotool key "Return" &
	sleep 36
	counter
	counter
	xdotool key type $count
	xdotool key type "c"
	xdotool key "Return" &
	sleep 36
	counter
	counter
	xdotool key type $count
	xdotool key type "e"
	xdotool key "Return" &
	sleep 36
	counter
	xdotool key type $count
	xdotool key type "b"
	xdotool key "Return" &
	sleep 36
	counter
	xdotool key type $count
	xdotool key type "o"
	xdotool key "Return" &
	sleep 36
	counter
	xdotool key type $count
	xdotool key type "o"
	xdotool key "Return" &
	sleep 36
	counter
	xdotool key type $count
	xdotool key type "k"
	xdotool key "Return" &
	sleep 36
	counter
	commenter
}
commenter
