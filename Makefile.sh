#!/bin/bash
sudo apt install ruby-dev git rake
./bin/bashrc-config-add gem
source ~/.bashrc
gem install bundle bundler rake
bundle
rake -T