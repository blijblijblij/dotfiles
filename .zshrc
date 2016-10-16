# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
eval "$(rbenv init -)"

LANG="en_US.UTF-8"
LC_COLLATE="en_US.UTF-8"
LC_CTYPE="en_US.UTF-8"
LC_MESSAGES="en_US.UTF-8"
LC_MONETARY="en_US.UTF-8"
LC_NUMERIC="en_US.UTF-8"
LC_TIME="en_US.UTF-8"
LC_ALL="en_US.UTF-8"

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
ZSH_THEME="agnoster"

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
plugins=(aws docker git git-flow tmux web-search osx bundler rake ruby)

# User configuration

#export PATH="/usr/bin:/bin:/usr/sbin:/sbin"
#export PATH="/Users/rogier/usr/lib/go//bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/Users/rogier/bin"
export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/home/rogier/Bin"
export PATH=$PATH:/Users/rogier/.minimesos/bin
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8
export LC_ALL=en_US.utf8
export LANGUAGE=en_US.utf8

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='atom'
  #  export EDITOR='vim'
 fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# suffix aliases
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
alias x2x='ssh -XC ishikawa x2x -east -to :0'

# tmux
alias tm='tmux attach-session || tmux'
alias tmd='tmux detach'

# some ugly fixes
alias apt='sudo apt-get update && sudo apt-get -y upgrade && sudo apt-get -y dist-upgrade && sudo apt-get -y autoremove && sudo apt-get clean'
alias screenwork='xrandr -s 1920x1080'
alias screenmac='xrandr -s 1280x800'
alias kssh='killall ssh && exit'
alias fixdropbox='dropbox stop && sleep 10 && echo fs.inotify.max_user_watches=10000000 | sudo tee -a /etc/sysctl.conf; sudo sysctl -p && dropbox start'
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
alias dk-rm='docker rmi $(docker images -q)'
# Delete all stopped containers.
alias dk-clean-containers='printf "\n>>> Deleting stopped containers\n\n" && docker rm $(docker ps -a -q)'
# Delete all untagged images.
alias dk-clean-images='printf "\n>>> Deleting untagged images\n\n" && docker rmi $(docker images -q -f dangling=true)'
# Delete all stopped containers and untagged images.
alias dk-clean='dk-clean-containers || true && dk-clean-images'

alias marathonctl='docker run --rm --net=host -v /data/marathon/:/marathon/ shoenig/marathonctl:latest'

# open crypted docs
alias unlock='printf "\n unlocking \n" \
  unlock-app && \
  unlock-bin && \
  unlock-conf && \
  unlock-data && \
  unlock-software && \
  unlock-personal && \
  unlock-rm && \
  unlock-wip'

alias lock-archive='fusermount -u ~/Crypt-archive'
alias unlock-archive='encfs -i=5 ~/Dropbox/Crypt-archive ~/Crypt-archive'
alias lock-app='fusermount -u ~/App'
alias unlock-app='encfs -i=5 ~/Dropbox/Crypt-app ~/App'
alias lock-bin='fusermount -u ~/Bin'
alias unlock-bin='encfs -i=5 ~/Dropbox/Crypt-bin ~/Bin'
alias lock-conf='fusermount -u ~/Conf'
alias unlock-conf='encfs -i=5 ~/Dropbox/Crypt-conf ~/Conf'
alias lock-data='fusermount -u ~/Crypt-data'
alias unlock-data='encfs -i=5 ~/Dropbox/Crypt-data ~/Crypt-data'
alias lock-docker='fusermount -u ~/Crypt-docker'
alias unlock-docker='encfs -i=5 ~/Dropbox/Crypt-docker ~/Crypt-docker'
alias lock-git='fusermount -u ~/git-db'
alias unlock-git='encfs -i=5 ~/Dropbox/Crypt-git ~/git-db'
alias lock-music='fusermount -u ~/Crypt-music'
alias unlock-music='encfs -i=5 ~/Dropbox/Crypt-music ~/Crypt-music'
alias lock-personal='fusermount -u ~/Documents'
alias unlock-personal='encfs -i=5 ~/Dropbox/Crypt-personal ~/Documents'
alias lock-software='fusermount -u ~/Software'
alias unlock-software='encfs -i=5 ~/Dropbox/Crypt-software ~/Software'
alias lock-mysql='fusermount -u ~/Crypt-mysql'
alias unlock-mysql='encfs -i=5 ~/Dropbox/Crypt-mysql ~/mysql'
alias lock-rm='fusermount -u ~/Documents-rm'
alias unlock-rm='encfs -i=5 ~/Dropbox/Crypt-rm ~/Documents-rm'
alias lock-workspace='fusermount -u ~/workspace'
alias unlock-workspace='encfs -i=5 ~/Dropbox/Crypt-workspace ~/workspace'
alias lock-wip='fusermount -u ~/WIP'
alias unlock-wip='encfs -i=5 ~/Dropbox/Crypt-wip ~/WIP'

alias pdi='clear && export KETTLE_HOME=~/Conf/kettle && export PENTAHO_JAVA_HOME=/usr/lib/jvm/java-8-oracle/jre && cd $HOME/App/pdi-ce-6.1.0.1-196 && sh spoon.sh'