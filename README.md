# werner's dotfile-chaos 

## Installation:

```sh
apt-get install git ruby ruby-bundler vim-nox
export GEM_HOME=${HOME}/.gem
export GEM_PATH=${GEM_HOME}
export PATH=$PATH:$HOME/.gem/bin
gem install rake bundle colorize logger socket
git clone https://github.com/sueswe/dotfiles.git dotfiles.git
cd dotfiles.git
rake
```
