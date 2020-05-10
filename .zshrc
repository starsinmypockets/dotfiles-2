echo "Loading .zshrc"
# If you come from bash you might have to change your $PATH.

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
bindkey -v

# Add Yarn bin to path
export PATH="$PATH:$(yarn global bin)"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"
source ~/.zsh_profile
tmux -f ~/.tmux.conf

plugins=(docker git npm nvm pip python tmux tmuxinator vi-mode yarn z ripgrep)

eval "`pip completion --zsh`"
source $ZSH/oh-my-zsh.sh

# autocomplete with up arrow/down arrow
bindkey "^[OA" history-beginning-search-backward
bindkey "^[OB" history-beginning-search-forward

# start fuzzy finder frontend to greenclip
fzf-clipboard() { (greenclip print | /home/paul/.fzf/bin/fzf -e -i) | xclip -se c ; tmux send-keys  }

# greenclip configuration settings
cfg-greenclip() { killall greenclip ; $EDITOR ~/.config/greenclip.cfg && nohup greenclip daemon > /dev/null 2>&1 & }

# greenclip reload
rld-greenclip() { killall greenclip ; nohup greenclip daemon > /dev/null 2>&1 & }

# greenclip clear history
derez-greenclip() { killall greenclip ; rm ~/.cache/greenclip.history && nohup greenclip daemon > /dev/null 2>&1 & }

nohup greenclip daemon > /dev/null 2>&1 &

# zsh fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#Docker helper functions

alias makesolr = 'docker build . -t datagov/catalog-solr'

alias tor='/home/paul/tor/tor-browser_en-US/start-tor-browser.desktop'
