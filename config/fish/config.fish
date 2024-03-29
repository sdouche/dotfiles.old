
# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish

# Theme
set fish_theme bobthefish

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-fish/plugins/*)
# Custom plugins may be added to ~/.oh-my-fish/custom/plugins/
# Example format: set fish_plugins autojump bundler
set fish_plugins jump pyenv tmux peco better-alias 

# Path to your custom folder (default path is $FISH/custom)
#set fish_custom $HOME/dotfiles/oh-my-fish

# Load oh-my-fish configuration.
. $fish_path/oh-my-fish.fish

# Set paths
set -x GOPATH "$HOME/src/gocode"
set -x PATH $PATH "$HOME/$GOPATH/bin" "$HOME/bin/go_appengine/"

# Alias
alias tiga='tig --all'
alias gitk='gitk --all'
