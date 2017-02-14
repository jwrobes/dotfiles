# vim: syntax=ruby filetype=ruby

# Lets us do `brew services restart postgres`, etc
tap 'homebrew/services'

# Old versions of some packages
tap 'homebrew/versions'

brew 'postgresql', restart_service: :changed
brew 'coreutils'

# Qt5.5 for capybara-webkit, because Qt 5.6 doesn't work except with the most
# recent version
tap 'homebrew/versions'
brew 'qt55'
# --overwrite: overwrite any Qt4 files that might be there
# --force: required because qt55 is keg-only
`brew link --overwrite --force qt55`

# grep for ps
brew 'pgrep'

# The recommended way to use Heroku
brew 'heroku'

# colorful diffs (alias diff='colordiff -u')
brew 'colordiff'

# a better ack/grep
brew 'the_silver_searcher'

# so :Rtags works
brew 'ctags'
# tap 'universal-ctags/universal-ctags/universal-ctags'
# brew 'universal-ctags/universal-ctags/universal-ctags', args: ['HEAD']

# It's vim
brew 'mercurial'
brew 'vim'

# Fast GitHub client
brew 'hub'

# Fuzzy finder
brew 'fzf'

# thoughtbot stuff like rcm
tap 'thoughtbot/formulae'
brew 'rcm'

# Install zsh 5.2+ (OS X ships with 5.0) to fix this issue:
# https://github.com/robbyrussell/oh-my-zsh/issues/4932
brew 'zsh'

if ENV.fetch("SHELL", "") != "/usr/local/bin/zsh"
  puts "To use the Homebrew-installed ZSH:"
  puts "  sudo echo /usr/local/bin/zsh >> /etc/shells"
  puts "  chsh -s /usr/local/bin/zsh"
end
