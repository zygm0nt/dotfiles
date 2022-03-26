# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory nomatch
setopt BRACE_CCL    # expand braces {a-e}
#To save every command before it is executed (this is different from bash's history -a solution):
setopt inc_append_history

#To retrieve the history file everytime history is called upon.
setopt share_history

bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/mcl/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

autoload edit-command-line
zle -N edit-command-line
bindkey '^Xe' edit-command-line

source ~/.zsh/git-prompt/zshrc.sh

# an example prompt
PROMPT='%B%m%~%b$(git_super_status) %# '

alias ls='ls -F -G'

fpath=(/home/mcl/.zsh/zsh-completions/src $fpath)

LESS=-FRX ; export LESS
[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm

case $TERM in
        xterm*)
             precmd () {print -Pn "\e]0;%n@%m: %~\a"}
             ;;
esac

export PATH=$PATH:~/tools/apache-maven-3.1.0/bin:~/tools/gradle-1.6/bin:~/tools

echo "" ; echo ""
fortune -s | cowsay -n

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" 

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/home/mcl/.gvm/bin/gvm-init.sh" ]] && source "/home/mcl/.gvm/bin/gvm-init.sh"

if which jenv > /dev/null; then eval "$(jenv init -)"; fi

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/marcin.cylke/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/marcin.cylke/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/marcin.cylke/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/marcin.cylke/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
