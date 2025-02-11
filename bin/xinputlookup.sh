#!/bin/bash

device_id=$(xinput list | grep -i touchpad | awkf -F= '{print $2}' | cat -b 1-3)
echo "DeviceID = $device_id"
number=$(xinput list-props 12 | grep 'Tapping Enabled' | head -n1 | awk -F'(' '{print $2}' | awk -F')' '{print $1}')
echo "DeviceNo = $number"
xinput set-prop ${device_id} ${number} 1
echo "Device Touchpad tapping enabled."
