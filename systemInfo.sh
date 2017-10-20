#!/bin/bash

##### Variables
title="System info for";

##### Constants
RIGHT_NOW=$(date +"%x %R %Z")
TIMESTAMP="File updated at $RIGHT_NOW by $USER"

##### Functions
systemInfo()
{
  echo "<h2>System release info</h2>"
  echo "<p>Function not yet implemented!!</p>"
}

uptimeInfo()
{
  echo "<h2>System uptime</h2>"
  echo "<pre>"
  uptime
  echo "</pre>"
}

driveSpace()
{
  echo "<h2>Drive space</h2>"
  echo "<pre>"
  df -H
  echo "</pre>"
}

homeSpace()
{
  # Only the super user can see this info
  if [ "$(id -u)" = "0" ]; then
    echo "<h2>Home directory space by user</h2>"
    echo "<pre>"
    echo "Bytes directory"
      du -s /home/* | sort -nr
    echo "</pre>"
  #else
  #  echo "You must be the superuser to run this script" >&2 #envia mensagem para standard error
  #  exit 1 # sai do script com status 1 indicando ao OS the existiu um erro
  fi
}

writePage() {
  cat <<- _EOF_
    <html>
      <head>
        <title>$title $HOSTNAME</title>
      </head>
      <body>
        <h1>$title $HOSTNAME</h1>
        <div class="container">
          <ul>
            <li><span style="font-weight: bold;">Java Home:&nbsp;</span>$JAVA_HOME</li>
            <li><span style="font-weight: bold;">Shell:&nbsp;</span>$SHELL</li>
          </ul>
          <p>$TIMESTAMP</p>
          $(systemInfo)
          $(uptimeInfo)
          $(driveSpace)
          $(homeSpace)
        </div>
      </body>
    </html>
  _EOF_
}

usage() {
  echo "usage: systeminfo [[[-f file ] [-i]] | [-h]]"
}

##### Main
interactive=
filename=~/systeminfo.html

while [ "$1" != "" ]; do
  case $1 in
    -f | --file )               shift
                                filename=$1
                                ;;
    -i | --interactive )        interactive=1
                                ;;
    -h | --help )               usage
                                exit
                                ;;
    * )                         usage
                                exit 1
  esac
  shift
done

##### Testing
if [ "$interactive" = "1" ]; then
  echo "interactive mode is on"
else
  echo "interactive mode is off"
fi
echo "Output file = $filename"

#Write page
#writePage > $filename
exit 0
