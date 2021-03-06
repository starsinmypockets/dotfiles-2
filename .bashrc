echo "Loading .bashrc"

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /Users/paulwalker/.nvm/versions/node/v8.11.2/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash ] && . /Users/paulwalker/.nvm/versions/node/v8.11.2/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /Users/paulwalker/.nvm/versions/node/v8.11.2/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash ] && . /Users/paulwalker/.nvm/versions/node/v8.11.2/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
export FZF_DEFAULT_OPTS="--extended"
export FZF_DEFAULT_COMMAND="fd --type f"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# big history
export HISEFILESIZE=10000


# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[ -f /Users/paulwalker/.nvm/versions/node/v8.11.2/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.bash ] && . /Users/paulwalker/.nvm/versions/node/v8.11.2/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.bash

`which zsh`
source ~/.zsh_profile

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/paul/google-cloud-sdk/path.bash.inc' ]; then . '/home/paul/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/paul/google-cloud-sdk/completion.bash.inc' ]; then . '/home/paul/google-cloud-sdk/completion.bash.inc'; fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
