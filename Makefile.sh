#!/bin/bash
#

sudo apt install ruby-dev git rake build-essential


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

rake -T
