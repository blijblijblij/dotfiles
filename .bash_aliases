# You may uncomment the following lines if you want `ls' to be colorized:

alias ls='ls -ls'
alias ll='ls -lA'

alias df='df -h'
#
# Some more alias to avoid making mistakes:
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# docker aliases
alias dk='docker'
alias dm='docker-machine'
alias dc='docker-compose'
alias dm-dev='docker-machine env dev'
alias marathonctl='docker run --rm --net=host -v /data/marathon/:/marathon/ shoenig/marathonctl:latest'

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

#start different docker instances
alias dk-dev='cd ~/git/rm-docker/rwessel/ && docker-compose up -d && docker-compose logs'
alias dk-dev-stats='docker stats rwessel_carte_1 rwessel_logspout_1 rwessel_logstash_1 rwessel_nginx_1 rwessel_rails_1 rwessel_kibana_1 rwessel_elasticsearch_1 rwessel_biserver_1 rwessel_infobright_1 rwessel_infobrightdata_1 rwessel_postgres_1 rwessel_postgresdata_1 rwessel_pentahodata_1 rwessel_cartedata_1
'
alias dk-registry='cd ~/git/docker/registry/ && fig up'
alias dk-shipyard="docker run -i -t -v /var/run/docker.sock:/docker.sock shipyard/deploy setup"
alias dk-jenkins="docker run --hostname=jenkins -p 8001:8080 -v ~/Docker/jenkins jenkins"

# apt-get
alias apt='sudo apt-get update && sudo apt-get -y upgrade && sudo apt-get -y dist-upgrade && sudo apt-get -y autoremove && sudo apt-get clean'

alias put='curl -X POST -H "Content-Type: application/json" dev:8080/v2/apps --data @'

# open crypted docs
alias unlock='unlock-app && unlock-bin && unlock-conf && unlock-git && unlock-software && source ~/.bashrc'
alias lock-archive='fusermount -u ~/Crypt-archive'
alias unlock-archive='encfs -i=5 ~/Dropbox/Crypt-archive ~/Crypt-archive'
alias lock-app='fusermount -u ~/App'
alias unlock-app='encfs -i=5 ~/Dropbox/Crypt-app ~/App'
alias lock-bin='fusermount -u ~/Bin'
alias unlock-bin='encfs -i=5 ~/Dropbox/Crypt-bin ~/Bin'
alias lock-conf='fusermount -u ~/Conf'
alias unlock-conf='encfs -i=5 ~/Dropbox/Crypt-conf ~/Conf'
alias lock-docker='fusermount -u ~/Crypt-docker'
alias unlock-docker='encfs -i=5 ~/Dropbox/Crypt-docker ~/Crypt-docker'
alias lock-git='fusermount -u ~/git'
alias unlock-git='encfs -i=5 ~/Dropbox/Crypt-git ~/git -o volname="git"'
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

alias slrn='slrn -h news.xs4all.nl'

alias ripcd='abcde -1 -c /home/rogier/.abcde.conf'

alias tmuxa='tmux attach-session '
alias tmuxd='tmux detach'
alias tmuxls='tmux list-sessions '

# apps
alias navicat='sh ~/App/navicat/navicat110_premium_en/start_navicat'
alias ecl='~/App/eclipse/eclipse-java-mars-R-linux-gtk-x86_64/eclipse -Djava.library.path=/usr/lib/x86_64-linux-gnu/jni'
#alias ecl='eclipse -Djava.library.path=/usr/lib/x86_64-linux-gnu/jni -noSplash'
alias apachedirectorystudio='~/App/ApacheDirectoryStudio-linux-x86_64-2.0.0.v20130628/ApacheDirectoryStudio'
alias anypointstudio='~/App/AnypointStudio/AnypointStudio'
alias dbvis='~/App/DbVisualizer-8.0.12/dbvis'
alias rapidminer='~/App/rapidminer-studio/RapidMiner-Studio.sh'
alias smartgit='~/App/smartgit/bin/smartgit.sh'

alias pdi='clear && export KETTLE_HOME=~/Conf/kettle && export PENTAHO_JAVA_HOME=/usr/lib/jvm/java-7-oracle && cd $HOME/App/pentaho/data-integration && sh spoon.sh'
alias pdi-ce-6='clear && export KETTLE_HOME=~/Conf/kettle && export PENTAHO_JAVA_HOME=/usr/lib/jvm/java-8-oracle && cd $HOME/App/pentaho/6.0/data-integration && sh spoon.sh'

alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'
alias go='git checkout '
alias gk='gitk --all&'
alias gx='gitx --all'

alias screenwork='xrandr -s 1920x1080'
alias screenmac='xrandr -s 1280x800'

alias kssh='killall ssh && exit'
alias fixdropbox='dropbox stop && sleep 10 && echo fs.inotify.max_user_watches=10000000 | sudo tee -a /etc/sysctl.conf; sudo sysctl -p && dropbox start'

alias vncviewer='vncviewer -Fullscreen localhost:1'
alias vncserver='~/Bin/vnc.sh'

alias nmapplet='sudo nm-applet'

alias muttrm='mutt -F ~/.muttrcrm'

alias vm-dev-start="VBoxManage startvm dev --type headless"
alias vm-dev-stop="VBoxManage controlvm dev poweroff"
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

alias rm-vpn-np='sudo openvpn --config ~/.vpn/client-openvpnas-nonprod.rm.ovpn'
alias rm-vpn-p='sudo openvpn --config ~/.vpn/client-openvpnas-prod.rm.ovpn'
alias vpn='sudo openvpn --config ~/.vpn/client-batou.ovpn'
alias serv='python -m SimpleHTTPServer 8088'

alias weather="curl -4 http://wttr.in/Amersfoort"

alias clearvpn="sudo kextunload -b net.sf.tuntaposx.tun ;sudo kextunload -b net.sf.tuntaposx.tap"
