#!/bin/bash
cd ..
git add .
read -p "Please enter commit message: " commitMsg
if [ -z $commitMsg ];then
  commitMsg="Note update $(date +'%F %a %T')"
fi
git commit -m "$commitMsg"
git push
