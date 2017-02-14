source ~/.zplug/init.zsh

zplug 'mafredri/zsh-async'
zplug 'zsh-users/zsh-syntax-highlighting', defer:3
zplug 'zsh-users/zsh-completions', defer:3

zplug load

#for zsh_source in $HOME/.zsh/configs/*.zsh; do
#  source $zsh_source
#done
BASE="$HOME/.zsh"

load_all_files_in() {
  if [ -d "$BASE/$1" ]; then
    for file in "$BASE$1"/configs/*.zsh; do
      source "$file"
    done
  fi
}

load_all_files_in before
load_all_files_in ""

