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

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# suffix aliases
alias -s log="less -MN"

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
alias tm='tmux attach -t hack || tmux new -s hack; exit'
alias rm-api='tmux attach -t rm-api || cd ~/git/rm-api && tmux new -s rm-api; exit'
alias rm-public-pages='tmux attach -t rm-public-pages || cd ~/git/rm-public-pages && tmux new -s rm-public-pages; exit'
alias rm-rails='tmux attach -t rm-rails || cd ~/git/rm-rails && tmux new -s rm-rails; exit'
alias rm-dashboard-assets='tmux attach -t rm-dashboard-assets || cd ~/git/rm-dashboard-assets && tmux new -s rm-dashboard-assets; exit'
alias rm-docker='tmux attach -t rm-docker || cd ~/git/rm-docker && tmux new -s rm-docker; exit'
alias rm-mesos='tmux attach -t rm-mesos || cd ~/git/rm-mesos && tmux new -s rm-mesos; exit'
alias rm-data-admin='tmux attach -t rm-data-admin || cd ~/git/rm-data-admin && tmux new -s rm-data-admin; exit'
alias rm-oidc-engine='tmux attach -t rm-oidc-engine || cd ~/git/rm-oidc-engine && tmux new -s rm-oidc-engine; exit'
alias rm-masterdata-engine='tmux attach -t rm-masterdata-engine || cd ~/git/rm-masterdata-engine && tmux new -s rm-masterdata-engine; exit'
alias rm-scripts='tmux attach -t rm-scripts || cd ~/git/rm-scripts && tmux new -s rm-scripts; exit'
alias rm-system='tmux attach -t rm-system || cd ~/git/rm-system && tmux new -s rm-system; exit'
alias rm-documentation='tmux attach -t rm-documentation || cd ~/git/rm-documentation && tmux new -s rm-documentation; exit'

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
alias dcs='dc kill && dc rm -f && dc up -d && dc logs'
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

alias dcu='dc kill && dc rm -f && dc build && dc up -d && dc logs -f'

#alias pdi='clear export KETTLE_HOME=$HOME/Conf/work/rm/kettle && export PENTAHO_JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_112.jdk/Contents/Home && cd $HOME/Applications/pdi-ce-6.0.1.0-386 && sh spoon.sh'
# alias pdi='clear && export PENTAHO_JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_112.jdk/Contents/Home && cd $HOME/Applications/pdi-ce-6.0.1.0-386 && sh spoon.sh'
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

# minikube aliases
alias mk="minikube"
# if type nvim > /dev/null 2>&1; then
#   alias vim='nvim'
# fi

alias ctags="`brew --prefix`/bin/ctags"
alias ctags-here="ctags -R --languages=ruby --exclude=.git --exclude=log . $(bundle list --paths)"

# Load up ssh keys
ssh-add -A &> /dev/null

# Always work in a tmux session if tmux is installed
#if which tmux 2>&1 >/dev/null; then
#  if [ $TERM != "screen-256color" ] && [  $TERM != "screen" ]; then
#    tmux attach -t hack || tmux new -s hack; exit
#  fi
#fi

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="/usr/local/opt/v8@3.15/bin:$PATH"
export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/opt/icu4c/sbin:$PATH"
export GPG_TTY=$(tty)

# Usage: compresspdf [input file] [output file] [screen*|ebook|printer|prepress]
compresspdf() {
    gs -sDEVICE=pdfwrite -dNOPAUSE -dQUIET -dBATCH -dPDFSETTINGS=/${3:-"screen"} -dCompatibilityLevel=1.4 -sOutputFile="$2" "$1"
}

# added by travis gem
[ -f /Users/rogier/.travis/travis.sh ] && source /Users/rogier/.travis/travis.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# adb 
if [ -d "$HOME/Applications/platform-tools" ] ; then
     export PATH="$HOME/Applications/platform-tools:$PATH"
fi

# disable command corrections
unsetopt correct_all
export PATH=$HOME/Bin:$PATH

export PATH=~/.local/bin:$PATH
export PATH="/usr/local/opt/postgresql@9.6/bin:$PATH"
