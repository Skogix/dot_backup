#!/bin/bash
currentTime=$(date)
cd ~/data
~/dot/lazygit.sh "UPDATEALL:$currentTime: $1"
cd ~/dot
~/dot/lazygit.sh "UPDATEALL:$currentTime: $1"
cd ~/dev
~/dot/lazygit.sh "UPDATEALL:$currentTime: $1"
cd ~/org
~/dot/lazygit.sh "UPDATEALL:$currentTime: $1"
cd ~/skogix.github.io
~/dot/lazygit.sh "UPDATEALL:$currentTime: $1"
