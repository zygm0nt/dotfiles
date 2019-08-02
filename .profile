# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

#PATH="$HOME/sandbox/apache-maven-2.2.1/bin:$HOME/sandbox/gradle-0.9-rc-1/bin:$PATH"
PATH="$HOME/sandbox/apache-maven-3.0.3/bin:$HOME/sandbox/gradle-0.9-rc-1/bin:$PATH"
MAVEN_OPTS="-Xmx1024M -XX:MaxPermSize=512m"
export JAVA_HOME=/usr/lib/jvm/java-6-sun
export EDITOR=vim

alias mvn2=~/sandbox/apache-maven-2.2.1/bin/mvn
export LANGUAGE="en_GB:en"
export LC_MESSAGES="en_GB.UTF-8"
export LC_CTYPE="en_GB.UTF-8"
export LC_COLLATE="en_GB.UTF-8"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # This loads RVM into a shell session.  

#SSHAGENT=/usr/bin/ssh-agent
#SSHAGENTARGS="-s"
#if [ -z "$SSH_AUTH_SOCK" -a -x "$SSHAGENT" ]; then
#	eval `$SSHAGENT $SSHAGENTARGS`
#	trap "kill $SSH_AGENT_PID" 0
#fi


export PATH="$HOME/.cargo/bin:$PATH"
