#!/bin/bash
echo "Commit message: "
read commitMessage
git add .
git commit -a -m "$commitMessage"
git push
