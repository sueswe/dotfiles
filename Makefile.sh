#!/bin/bash


echo "Installing prerequisites ..."
sudo apt install ruby-dev git rake build-essential libyaml-dev

cp -f _bash-config $HOME/
echo 'source $HOME/_bash-config' >> $HOME/.bashrc

echo ""
echo "Please reload your terminal."
