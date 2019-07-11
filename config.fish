# Theme
set fish_theme robbyrussell

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-fish/plugins/*)
# Custom plugins may be added to ~/.oh-my-fish/custom/plugins/
# Example format: set fish_plugins autojump bundler

# Path to your custom folder (default path is $FISH/custom)
#set fish_custom $HOME/dotfiles/oh-my-fish

if not functions -q fisher
    set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher
end

set EDITOR subl -w

set -x NVM_DIR ~/.nvm
# source ~/.config/fish/nvm-wrapper/nvm.fish

alias ls='gls -U --color'

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

set --export PATH (brew --prefix qt@5.5)/bin $PATH

set --export PATH /opt/local/bin /opt/local/sbin $PATH

# Base16 Shell
# if status --is-interactive
#   eval sh $HOME/.config/base16-shell/scripts/base16-material-darker.sh
# end

