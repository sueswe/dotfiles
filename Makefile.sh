#!/bin/bash
sudo apt install ruby-dev git rake
./bin/bashrc-config-add gem
source ~/.bashrc
exec bash
gem install bundle bundler rake || {
  echo "Ups ..."
  exit 2
}
bundle || {
  echo "Ups."
  exit 2
}
rake -T
