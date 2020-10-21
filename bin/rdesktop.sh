#!/bin/bash
server=$1
rdesktop -u 'a-opc-admin' -f $server -x l -r clipboard:CLIPBOARD -r disk:linux=/home/itsv.org.sv-services.at/31300094/temp -g 1850x1000 -k de &
