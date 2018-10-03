# Path to your oh-my-zsh installation.

#env
export LANG="en_US.UTF-8"
export LC_COLLATE="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export LC_MESSAGES="en_US.UTF-8"
export LC_MONETARY="en_US.UTF-8"
export LC_NUMERIC="en_US.UTF-8"
export LC_TIME="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export LANGUAGE=en_US.utf8

# tmuxinator
source ~/.bin/tmuxinator.zsh

# zsh
export ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="agnoster"
#ZSH_THEME="juanghurtado"
ZSH_THEME="wedisagree"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(kubectl docker git git-flow tmux bundler rake ruby rbenv)

# User configuration
export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/home/rogier/Bin"
#export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

# some generics
alias ls='ls -ls'
alias ll='ls -lA'
alias df='df -h'

# Some more alias to avoid making mistakes:
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# git
alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'
alias go='git checkout '
alias gk='gitk --all&'
alias gx='gitx --all'

# ssh
alias xs='ssh xs8'
alias blij='ssh blij'
alias aramaki='ssh -XC aramaki'
alias x2x='ssh -XC ishikawa x2x -east -to :0'

# tmux
alias tm='tmuxinator'
alias rm-api='tmuxinator start rm-api'
alias rm-public-pages='tmuxinator start rm-public-pages'
alias rm-rails='tmuxinator start rm-rails'
alias rm-dashboard-assets='tmuxinator start rm-dashboard-assets'
alias rm-docker='tmuxinator start rm-docker'
alias rm-mesos='tmuxinator start rm-mesos'
alias rm-data-admin='tmuxinator start rm-data-admin'
alias rm-oidc-engine='tmux start rm-oidc-engine'
alias rm-masterdata-engine='tmux start rm-masterdata-engine'
alias rm-scripts='tmuxinator rm-scripts'
alias rm-system='tmuxinator start rm-system'
alias meia-ontwerp.nl='tmuxinator start meia-ontwerp.nl'
alias funtime4kids.nl='tmuxinator start funtime4kids.nl'

# some ugly fixes
alias apt='sudo apt-get update && sudo apt-get -y upgrade && \
  sudo apt-get -y dist-upgrade && sudo apt-get -y autoremove && \
  sudo apt-get clean'
alias screenwork='xrandr -s 1920x1080'
alias screenmac='xrandr -s 1280x800'
alias kssh='killall ssh && exit'
alias fixdropbox='dropbox stop && sleep 10 && \
  echo fs.inotify.max_user_watches=10000000 | sudo tee -a /etc/sysctl.conf; \
  sudo sysctl -p && dropbox start'
alias vncviewer='vncviewer -Fullscreen localhost:1'
alias vncserver='~/Bin/vnc.sh'
alias muttrm='mutt -F ~/.muttrcrm'
alias nb='rm -f ~/.newsbeuter/cache.db && newsbeuter'
alias serv='python -m SimpleHTTPServer 8088'

# docker aliases
alias dk='docker'
alias dm='docker-machine'
alias dc='docker-compose'
# Kill all running containers.
alias dk-kill='docker kill $(docker ps -a -q)'
# Remove all images
alias dk-rm='docker rmi -f $(docker images -q)'
# Delete all stopped containers.
alias dk-clean-containers='printf "\n>>> Deleting stopped containers\n\n" && docker rm -f $(docker ps -a -q)'
# Delete all untagged images.
alias dk-clean-images='printf "\n>>> Deleting untagged images\n\n" && docker rmi -f $(docker images -q -f dangling=true)'
# Deleta all dangling volumes
alias dk-clean-volumes='printf "\n>>> Deleting stopped volumes \n\n" && docker volume rm -f $(docker volume ls --filter dangling=true -q)'
# Delete all stopped containers and untagged images.
alias dk-clean='dk-clean-containers || true && dk-clean-images || true && dk-clean-volumes'

alias pdi='clear && export KETTLE_HOME=$HOME/Conf/work/rm/kettle && cd $HOME/Applications/pdi80/data-integration && sh spoon.sh'

alias update-prod='dsh -c -g prod -M -w "sudo apt-get update && sudo apt-get -y upgrade && sudo apt-get -y dist-upgrade && sudo apt-get -y autoremove && sudo apt-get clean"'
alias update-nonprod='dsh -c -g nonprod -M -w "sudo apt-get update && sudo apt-get -y upgrade && sudo apt-get -y dist-upgrade && sudo apt-get -y autoremove && sudo apt-get clean"'

# open crypted docs
alias unlock='unlock-bin && unlock-conf && unlock-wip && unlock-personal && unlock-rm'
alias lock-archive='fusermount -u ~/Crypt-archive'
alias unlock-archive='encfs -i=5 ~/Dropbox/Crypt-archive ~/Crypt-archive'
alias lock-bin='fusermount -u ~/Bin'
alias unlock-bin='encfs -i=5 ~/Dropbox/Crypt-bin ~/Bin'
alias lock-conf='fusermount -u ~/Conf'
alias unlock-conf='encfs -i=5 ~/Dropbox/Crypt-conf ~/Conf'
alias lock-git='fusermount -u ~/git'
alias unlock-git='encfs -i=5 ~/Dropbox/Crypt-git ~/git -o volname="git"'
alias lock-personal='fusermount -u ~/Documents'
alias unlock-personal='encfs -i=5 ~/Dropbox/Crypt-personal ~/Documents'
alias lock-rm='fusermount -u ~/Documents-rm'
alias unlock-rm='encfs -i=5 ~/Dropbox/Crypt-rm ~/Documents-rm'
alias lock-wip='fusermount -u ~/Wip'
alias unlock-wip='encfs -i=5 ~/Dropbox/Crypt-wip ~/Wip'

alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en0"
alias lsrails="lsof -wni tcp:3000"

alias tf="terraform"

alias ctags="`brew --prefix`/bin/ctags"
alias ctags-here="ctags -R --languages=ruby --exclude=.git --exclude=log . $(bundle list --paths)"

# Load up ssh keys
ssh-add -A &> /dev/null

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="/usr/local/opt/v8@3.15/bin:$PATH"
export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/opt/icu4c/sbin:$PATH"
export GPG_TTY=$(tty)

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# disable command corrections
unsetopt correct_all
export PATH=$HOME/Bin:$PATH

export PATH=~/.local/bin:$PATH
export PATH="/usr/local/opt/postgresql@9.6/bin:$PATH"

#heroku autocomplete setup 
HEROKU_AC_ZSH_SETUP_PATH=/Users/rogier/Library/Caches/heroku/autocomplete/zsh_setup && test -f $HEROKU_AC_ZSH_SETUP_PATH && source $HEROKU_AC_ZSH_SETUP_PATH;
