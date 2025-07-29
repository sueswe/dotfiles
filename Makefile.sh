#!/bin/bash


echo "Installing prerequisites ..."
sudo apt install ruby-dev bundler git rake build-essential libyaml-dev


if grep '_bash-config' ${HOME}/.bashrc
	then
		echo "already set _bash-config"
	else
		cp -f _bash-config $HOME/
		echo 'source $HOME/_bash-config' >> $HOME/.bashrc
fi

source ~/.bashrc

echo "installing rake ..."
gem install rake

echo "DONE"
echo ""
rake -T

