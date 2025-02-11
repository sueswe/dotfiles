#!/bin/bash

login='sueswe'
server=$1
if [ -z "$server" ]; then
  echo "missing servername"
  exit 1
fi

putty -l "$login" -ssh "${server}" &

exit 0
