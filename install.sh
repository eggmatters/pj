#!/bin/bash
VERSION="V0_1"
PWD=$(pwd);
PROFILE=$HOME/.profile_pj
#BASHRC=$PWD/bashrcbak
BASHRC=$HOME/.bashrc

function check_install(){
  echo "Checking for previous installation:"
  if [ -f $PROFILE ]; then
    echo "previous installation exists. Overwrite?"
    dialog
    if [[ $ANSWER == 0 ]]; then
      echo "stopping installation"
      exit 0
    fi
  fi
}

function install_pj(){
  echo "Installing pj"
  cp $PWD/profile_pj $PROFILE
  if ! grep -e "\. ~\/\.profile_pj" $BASHRC 1> /dev/null; then
    cat $PWD/bashrc >> $BASHRC
  fi
  sudo cp $PWD/etc/bash_completion.d/pj /etc/bash_completion.d/  
}

function dialog() {
  echo "Enter Y/N, y/n, Yes/No or yes/no:"
  read entry
  case "$entry" in
    y*)
      ANSWER=1
      ;;
    Y*)
      ANSWER=1
      ;;
    n*)
      ANSWER=0
      ;;
    N*)
      ANSWER=0
      ;;
  esac
}
check_install
install_pj

cat <<donedoc
Installation is now complete. 
In order to activate either close your terminal and restart or run:

$ source ~/.bashrc

You only need to do this once if you want to use pj during this bash session

Use pj by:

Setting current directory to an alias:
sp <alias>

Navigating to alias
pj <alias>
donedoc
