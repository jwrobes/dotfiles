DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )" # [1]

for dotfile in `ls $DIR/dotfiles.d/*.sh`; do
  source $dotfile
done

# for dotfile in `ls $DIR/dotfiles.d/*/*.sh`; do
#   source $dotfile
# done

# github.com/jqr/dotfiles
# github.com/sephonicus/dotfiles

# [1] stackoverflow.com/questions/59895/can-a-bash-script-tell-what-directory-its-stored-in
