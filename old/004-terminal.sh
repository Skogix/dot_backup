#!/bin/bash
sudo pacman -S exa zsh zsh-completions zsh-syntax-highlighting arcolinux-zsh-git oh-my-zsh-git tmux
# change shell to zsh
sudo chsh $USER -s /bin/zsh
# tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
