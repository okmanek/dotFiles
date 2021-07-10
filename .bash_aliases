### global vars ###
export BASHRC_PATH='~/.bashrc'
export ALIASES_PATH='~/.bash_aliases'

# package managers related aliases depending on which distro current distro is based on
# assuming that existance of file /etc/arch-release is a good criterion
if [ -f "/etc/arch-release" ]; then
	# DISTRO_BASE="arch"
	alias update='sudo pacman -Syu'
	alias up='update'
	alias light='xset led 3' #turn on keyboard light on Manjaro light
else
	# DISTRO_BASE="debian"
	alias update='sudo apt-get update'
	alias up='update'
	alias upgrade='sudo apt-get upgrade'
	alias UP='sudo apt-get update && sudo apt-get -y upgrade'
 	alias dist='sudo apt-get dist-upgrade'
fi

### typos xD ###
alias alais='alias' # xDDD
alias vmi='vim'
alias sl='ls' # no steam locomotive for you
alias shh='ssh'

### emotes ###
alias lenny='echo "( ͡° ͜ʖ ͡°)"'
alias sadLenny='echo "( ͡° ʖ̯ ͡°)"'
alias matrix='echo -e "1"; while $t; do for i in `seq 1 30`;do r="$[($RANDOM % 2)]";h="$[($RANDOM % 4)]";if [ $h -eq 1 ]; then v="0 $r";else v="1 $r";fi;v2="$v2 $v";done;echo -e $v2;v2="";done;'

### cd ###
alias c='cd'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
# fast cd - dependent on files position!
alias cg='cd ~/code/github/'
alias web='cd ~/code/webdev/'

### ls ###
alias l='ls --color -F'
alias ls='ls --color -F'
alias la='ls -lAh --color -F'
alias ll='ls -lAh --color -F'
alias lat='ls -lAht --color -F'
alias latr='ls -lAhtr --color -F'
alias lh='ls -ldh .?* -F' # show only hidden files

### vim ###
alias v='vim'
alias V=' sudo vim'
alias ve="vim $ALIASES_PATH"

### git ###
alias g1='git log -1'
alias g2='git log -2'
alias g3='git log -3'
alias ga='git add'
alias gb='git branch'
alias gp='git pull'
alias gs='git status'
alias gl='git log'
alias gsh='git show HEAD'
alias gdf='git diff HEAD'
alias gdff='git diff HEAD^'
alias gdfff='git diff HEAD^^'
alias gdffff='git diff HEAD^^^'
alias gdfno='git diff HEAD --name-only'
alias gc='git checkout'

### distro info ###
alias distro='neofetch'
alias distro2='cat /etc/*-release'
alias distro3='cat /proc/version'
alias distro4='cat /etc/issue'
alias distro5='cat /etc/os-release'
alias inxi='inxi -Fxz'

### grep ###
alias grep='grep -i --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias f='find . | grep $1' # killer feature
alias g='grep -r $1' # as above

### other ###
alias sql='mysql -u root -p -t'
alias free='free -m'
alias p='ping wp.pl'
alias t='tmux'
alias pdf='atril' # atril needs to be installed
alias tree='tree -CAF --dirsfirst'
alias differ='diff -y' # more diff in a diff (side by side view #feels_good)
alias watch='tail -n 1 -d' # change default 2Hz to 1Hz
alias hist='history'
#alias reload='source $BASHRC_PATH'
alias reload="source $BASHRC_PATH"
alias src="source $BASHRC_PATH"

alias week='date +%V'
alias path='readlink -f $1'

alias cp='cp -i' # fix cp which stopped asking for permission for overwriting

### quitting ###
# exit current terminal session, even if you think you are in vim
alias :q='exit'
alias :q\!='exit'
### quitting system ###
alias reboot='sudo reboot'
alias quit='sudo shutdown -h $1 --no-wall' #warning: no args validation #'quit -c' cancels schedules quit
alias QUIT='sudo shutdown -h now --no-wall' #warning: no args validation #'quit -c' cancels schedules quit
