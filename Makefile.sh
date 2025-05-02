#!/bin/bash


echo "Installing prerequisites ..."
sudo apt install ruby-dev git rake build-essential libyaml-dev


./bin/bashrc-config-add gem
source ~/.bashrc
echo ""

echo "running gem ..."
gem install bundle bundler rake || {
  echo "Ups ..."
  exit 2
}
echo "running bundle ..."
bundle || {
  echo "Ups."
  exit 2
}

echo ""
rake -T
