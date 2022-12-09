#!/bin/bash
sudo pacman -S firefox neovim exa task go cargo luarocks 
yay -S dotgit

sudo pacman -S fd python-pip nodejs npm perl ruby
yay -S ruby-neovim nodejs-neovim python-pynvim python2-pynvim nerds-fonts-complete

# python
/usr/bin/python3 -m pip install pynvim
# ruby
export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
export PATH="$PATH:$GEM_HOME/bin"
gem install neovim
# nodejs
sudo npm install -g neovim
sudo npm install -g yarn

# git
sudo pacman -S github-cli

# terminal
sudo pacman -S exa zsh zsh-completions zsh-syntax-highlighting arcolinux-zsh-git oh-my-zsh-git tmux
# change shell to zsh
sudo chsh $USER -s /bin/zsh
# tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# dirs
cd ~
rm -rf Desktop Documents Downloads Music Pictures Public Templates Videos
mkdir data .desktop data/docs data/pics/wallpapers data/pics/favoriteWallpapers tmp .music data/pics .public .templates data/vids

# dotnet
sudo pacman -S dotnet-runtime dotnet-targeting-pack dotnet-sdk aspnet-runtime 

# rice
sudo pacman -S python-pywal bat cmatrix-git ranger w3m 
yay -S cava-git spotify-tui

# config
hblock
gh auth login
spt

# dump

sudo pacman -S --noconfirm --needed mpd mpc gnome-epub-thumbnailer ffmpegthumbnailer ueberzug bat cmatrix
yay pacman -S --noconfirm --needed yarn glow fontpreview nerd-fonts-complete cava-git
