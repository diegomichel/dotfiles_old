# Aliases
alias b='bundle'
alias be='bundle exec'
alias bes='be rails s'
alias bec='be rails c'
alias bek='be sidekiq'
# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !

# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi

#source ~/.bash-powerline.sh
PS1="\[\033[01;37m\]\$? \$(if [[ \$? == 0 ]]; then echo \"\[\033[01;32m\]\342\234\223\"; else echo \"\[\033[01;31m\]\342\234\227\"; fi) $(if [[ ${EUID} == 0 ]]; then echo '\[\033[01;31m\]\h'; else echo '\[\033[01;32m\]\u@\h'; fi)\[\033[01;34m\] \w \$\[\033[00m\] "

export PATH="$PATH:$HOME/.rvm/bin;/home/diego/.rvm/rubies/ruby-2.2.1/lib/:/opt/jdk1.8.0_91/bin:/opt/android-studio/bin;/opt/jdk1.8.0_91/lib:/usr/local/bin/" # Add RVM to PATH for scripting
export JAVA_HOME="/opt/jdk1.8.0_91" # Add RVM to PATH for scripting
export NVM_DIR="/home/novo/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

eval `ssh-agent -s`
ssh-add

export EDITOR=vim
eval `dircolors ~/.config/dircolors.256dark`
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
alias ls="ls --color=auto"
alias balsamiq="env WINEPREFIX=/home/diego/.wine wine C:\\\\Program\\ Files\\\\Balsamiq\\ Mockups\\\\Balsamiq\\ Mockups.exe"
z(){
  file=$(fzf) && vim ${file}
}
# enable bash completion in interactive shells
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
      . /etc/bash_completion
fi
export GITAWAREPROMPT=~/.bash/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"
export PS1="\${debian_chroot:+(\$debian_chroot)}\[\033[01;35m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\] \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\n ➟ "
alias r='rails'
alias babel-node='./node_modules/babel-cli/bin/babel-node.js'
alias babel='./node_modules/babel-cli/bin/babel.js'
export ANDROID_HOME='/opt/android-sdk-linux'
export PATH=${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:/opt/phantomjs-1.9.8-linux-x86_64/bin

# added by Anaconda2 4.1.0 installer
export PATH="/home/novo/anaconda2/bin:$PATH"
export HISTSIZE=""

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
