#!/bin/bash
sudo pacman -S neovim fd python-pip nodejs npm perl ruby
yay -S ruby-neovim nodejs-neovim python-pynvim python2-pynvim
# download plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
# python
/usr/bin/python3 -m pip install pynvim
# ruby
export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
export PATH="$PATH:$GEM_HOME/bin"
gem install neovim
# nodejs
sudo npm install -g neovim
sudo npm install -g yarn
nvim +PlugInstall +qall
nvim +UpdateRemotePlugins +qall
