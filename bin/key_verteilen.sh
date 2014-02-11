#!/bin/sh

umg=$1
if [ -z $umg ]
then
    echo "usage: $0 filename.umg"
    exit 1
fi

for name in $(cat $umg)
do
    user=$(echo $name | awk -F@ '{print $1}')
    echo "User: $user"
    machine=$(echo $name | awk -F@ '{print $2}')
    echo "Machine: $machine"
    echo "Uebertrage key ..."
    scp ~/.ssh/id_dsa.pub $user@$machine:~/.ssh/id_dsa.pub
    echo "Trage key ein und loesche uebertragenen key wieder ..."
    ssh $user@$machine 'cat ~/.ssh/id_dsa.pub >> ~/.ssh/authorized_keys2; rm -e ~/.ssh/id_dsa.pub'
    echo ""
    echo "done"
done
