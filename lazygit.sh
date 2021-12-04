#!/bin/bash
read commitMessage
git add .
git commit -a -m "$commitMessage"
git push
