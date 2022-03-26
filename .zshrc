source ~/.zsh/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme robbyrussell

# Tell Antigen that you're done.
antigen apply


function activate-venv() {
  local selected_env
  selected_env=$(ls ~/VirtualEnvs/ | fzf)

  if [ -n "$selected_env" ]; then
    source "$HOME/VirtualEnvs/$selected_env/bin/activate"
  fi
}

function delete-branches() {
  local branches_to_delete
  branches_to_delete=$(git branch | fzf --multi)

  if [ -n "$branches_to_delete" ]; then
    git branch --delete --force $branches_to_delete
  fi
}



export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/shims:$PATH"

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

[ -f ~/git-commit-message-prefix-hook/hook/init.sh ] && . ~/git-commit-message-prefix-hook/hook/init.sh

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/marcin.cylke/.sdkman"
[[ -s "/Users/marcin.cylke/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/marcin.cylke/.sdkman/bin/sdkman-init.sh"



# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/marcin.cylke/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/marcin.cylke/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/marcin.cylke/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/marcin.cylke/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

#export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

function ver {
    pip show $1 | grep Version | awk -F: '{ print $2 }'
}

function pq-sample {
    python -c "import pandas as pd; print(pd.read_parquet(\"$1\").head())"
}


