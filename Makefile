# Makefile

SHELL := /bin/bash

apt:
	sudo apt install build-essential libyaml-dev ruby-dev bundler rake git binutils
	source _bash-config
	gem install rake
	rake -T
	cp -f _bash-config $$HOME/
	echo 'source $$HOME/_bash-config' >> $$HOME/.bashrc

clean:
	echo "cleaned up"


