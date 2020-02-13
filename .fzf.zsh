# Setup fzf
# ---------
if [[ ! "$PATH" == */home/paul/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/paul/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/paul/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/paul/.fzf/shell/key-bindings.zsh"
