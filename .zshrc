#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
export PATH="/home/novo/anaconda2/bin:$PATH"

# aliases
alias bos='sh ~/tmux/bos'
alias hfn='sh ~/tmux/hfn'
alias main='sh ~/tmux/main'
alias psy='sh ~/tmux/psy'
alias vse='sh ~/tmux/vse'
alias b='bundle'
alias be='bundle exec'
alias bes='be rails s'
alias bec='be rails c'
alias bek='be sidekiq'
alias ls="ls --color=auto"
alias balsamiq="env WINEPREFIX=/home/diego/.wine wine C:\\\\Program\\ Files\\\\Balsamiq\\ Mockups\\\\Balsamiq\\ Mockups.exe"
alias r='rails'
alias babel-node='./node_modules/babel-cli/bin/babel-node.js'
alias babel='./node_modules/babel-cli/bin/babel.js'

export NVM_DIR="/home/novo/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
export JAVA_HOME="/opt/jdk1.8.0_91"
export PATH="$PATH:/opt/android-studio/bin/"
export ANDROID_HOME='/opt/android-sdk-linux'
export PATH=${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:/opt/jdk1.8.0_92/bin/
eval `ssh-agent -s`
ssh-add

export PATH="$HOME/.rvm/bin:$PATH" # Add RVM to PATH for scripting

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
