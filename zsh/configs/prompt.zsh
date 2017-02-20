# modify the prompt to contain git branch name if applicable
# vcs_info docs: http://zsh.sourceforge.net/Doc/Release/User-Contributions.html#Version-Control-Information

# makes color constants available
autoload -U colors
colors

# enable colored output from ls, etc. on FreeBSD-based systems
export CLICOLOR=1

git_prompt_info() {
  current_branch=$(git rev-parse --abbrev-ref HEAD 2> /dev/null)
  if [[ -n $current_branch ]]; then
    echo " %{$fg[green]%}$current_branch%{$reset_color%}"
  fi
}

setopt promptsubst
export PS1='${SSH_CONNECTION+"%{$fg[green]%}%n@%m:"}%{$fg[blue]%}%c%{$reset_color%}$(git_prompt_info) %# '
