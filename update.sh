#!/bin/bash
currentTime=$(date)
~/dot/lazygit.sh "UPDATEALL:$currentTime: $1"
cd ~/data
~/dot/lazygit.sh "UPDATEALL:$currentTime: $1"
