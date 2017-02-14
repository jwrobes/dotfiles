#!/bin/sh

set -e

command_exists() {
  echo "$1"
  command "$1" &> /dev/null ;
}

is_osx(){
  [ "$(uname -s)" = Darwin ]
}

is_linux(){
  [ "$(uname -s)" = Linux ]
}

if is_osx; then
  echo "Installing Homebrew packages..."
  brew update
  brew tap homebrew/bundle
  brew bundle
#  for brewfile in */Brewfile; do
#   echo "install $brewfile"
#    brew bundle --file="$brewfile"
#  done
fi

#echo "Check if rbenv or rvm exists"
#if command_exists rbenv
#then
#  echo "rbenv found, no action needed"
#elif command_exists rvm
#then
#  echo "rvm installed will not install rbenv"
#else
#  echo "Did not find rbenv or rvm!"
#  echo "installing rbenv"
#  brew update
#  brew install rbenv ruby-build
#  exit 1
#fi

  brew update
  brew install rbenv ruby-build

echo "Linking dotfiles into ~..."
# Before `rcup` runs, there is no ~/.rcrc, so we must tell `rcup` where to look.
# We need the rcrc because it tells `rcup` to ignore thousands of useless Vim
# backup files that slow it down significantly.
RCRC=rcrc rcup -v -d .

echo "Installing Vim packages..."
vim +PlugInstall +qa

