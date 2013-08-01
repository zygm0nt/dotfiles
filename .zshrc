# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory nomatch
setopt BRACE_CCL    # expand braces {a-e}

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

alias ls='ls -F --color=auto'
alias jpsx='sh ~/bin/jpsx.sh'

LESS=-FRX ; export LESS
[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm

case $TERM in
        xterm*)
             precmd () {print -Pn "\e]0;%n@%m: %~\a"}
             ;;
esac

export PATH=$PATH:~/tools/apache-maven-3.1.0/bin:~/tools/gradle-1.6/bin

echo "" ; echo ""
fortune -s | cowsay -n

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" 

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/home/mcl/.gvm/bin/gvm-init.sh" ]] && source "/home/mcl/.gvm/bin/gvm-init.sh"
