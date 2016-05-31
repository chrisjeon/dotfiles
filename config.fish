# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish

# Theme
set fish_theme robbyrussell

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-fish/plugins/*)
# Custom plugins may be added to ~/.oh-my-fish/custom/plugins/
# Example format: set fish_plugins autojump bundler

# Path to your custom folder (default path is $FISH/custom)
#set fish_custom $HOME/dotfiles/oh-my-fish

# Load oh-my-fish configuration.
. $fish_path/oh-my-fish.fish

set --export PATH /usr/local/bin /usr/local/sbin /Users/chrisjeon/.composer/vendor/bin $PATH
set EDITOR subl -w

set -x NVM_DIR ~/.nvm
source ~/.config/fish/nvm-wrapper/nvm.fish

alias ls='gls -U --color'

eval sh $HOME/.config/base16-shell/base16-eighties.dark.sh

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish
