#!/bin/bash

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
source ~/.bashrc
nvm install --lts
nvm use --lts
nvm which current
node --version
npm install --global gulp-cli
