Dotfiles
========

My dotfiles is the start of my work to configure my machine to enhance my
workflow and also create a way to continue my workflow when pairing on other
developers' machines.  I forked the start of this off of Chris Toomey's dotfiles
and have adjusted them to fit my needs.  This means really just removing lots
of the things he uses that I don't use...yet.

Installation
-----------
there are several installation scripts that I created to use in different
situations.
- install_full.sh - this is to install all my dotfiles and the full congiuration
  on a machine
- install_light.sh - this is to install only some of my dotfiles, the minimum I
  would want ot have an easy development workflow on another person's machine
- uninstall_light.sh - this is to easily undo any of the changes I make with the
  light install for working on other people's machines
- download_and_configure_karabiner.sh - a way to download and install
  karabiner-elements to modify the keyboard to remap caps lock to ctrl and esc
- uninstall_karabiner.sh - a way to remove karabiner install easily (requires a
  restart of the machine after karabine is uninstalled)

Inspiration
-----------

- [chris toomey](https://github.com/christoomey/dotfiles/tree/master/zsh)
- [gabebw](https://github.com/gabebw/dotfiles/)
- [thoughtbot](https://github.com/thoughtbot/dotfiles)
- [Ryanb](https://github.com/ryanb/dotfiles)
