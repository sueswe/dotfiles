#!/bin/bash

echo "Looking up Tapping ..."
hit=0
for d in $(seq 1 15)
do
    echo "Looking at Device $d ..."
    xinput list-props $d | grep Tapp &>/dev/null
    if [[ $? -eq 0 ]]; then
        echo "got a hit: $d"
        hit=$d
    fi
    sleep 1
done

val=$( xinput list-props $hit | grep 'libinput Tapping Enabled (' | awk -F'(' '{print $2}' | awk -F')' '{print $1}'   )

xinput set-prop $hit $val 1 || {
    echo "Sorry, that did not work"
    exit 3
}

#xinput list-props 9 | grep Tapp
#xinput set-prop 11 306 1
echo "Done."
