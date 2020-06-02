#!/bin/bash

#MESSAGE=$(cat .git/COMMIT_EDITMSG)
MESSAGE=$1
if [[ "$MESSAGE" =~ ^(chg|fix|new)(: )((dev|usr|pkg|test|doc)(: ))?.*(\!|\@)?.*$ ]];
then
  exit 0
else
  echo -e "Error Message" >&2
  exit 1
fi
