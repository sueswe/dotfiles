#!/bin/bash
server=$1
rdesktop -u 'a-opc-admin' -f $server -x l -r clipboard:CLIPBOARD -r disk:linux=$HOME/Download/ -g 1600x900 -k de &
