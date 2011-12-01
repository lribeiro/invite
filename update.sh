#!/bin/bash
MY_DIR=`dirname $0`
update=`git pull`

#check the git pull has pulled new files, if so compile a new AI version
if [ "$update" != "Already up-to-date." ];  
then
  echo "reloading site"
  $MY_DIR/shutdown.sh
  source rvm use 1.9.2
  $MY_DIR/startup.sh
else
  #Exit 1 now means that the update has no new  files
  exit 1
fi
