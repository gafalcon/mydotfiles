#!/bin/sh
# shell script to prepend i3status with more stuff
i3status | while :
do
	read line
	a=$(xtitle | cut -c1-70)
	echo "$a | $line" || exit 1
done
