#!/usr/bin/env bash
#
# rules.sh
#
PATH=/sbin:/usr/sbin:/usr/bin:/bin

action=$PT_action
file=$PT_file

if ! echo $file | grep '/'; then
  if ! [ -d ~/.iptables ]; then
    mkdir ~/.iptables
  fi
  file=~/.iptables/$file
fi

if [ "save" == $action ]; then
  iptables-save > $file
  count=$(grep -c . $file)
  echo $file is $count lines.
fi

if [ "save" == $action ]; then
  if iptables-restore < $file; then
    echo $file has been restored
  fi
fi
