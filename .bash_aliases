#vars
ALIASES_PATH='~/.bash_aliases'

#emotes
alias lenny='echo "( ͡° ͜ʖ ͡°)"'
alias sadLenny='echo "( ͡° ʖ̯ ͡°)"'

#matrix
alias matrix='echo -e "1"; while $t; do for i in `seq 1 30`;do r="$[($RANDOM % 2)]";h="$[($RANDOM % 4)]";if [ $h -eq 1 ]; then v="0 $r";else v="1 $r";fi;v2="$v2 $v";done;echo -e $v2;v2="";done;'

alias update='sudo apt-get update'
alias upgrade='sudo apt-get upgrade'
alias up='sudo apt-get update && sudo apt-get -y upgrade' 
alias dist='sudo apt-get dist-upgrade'

#cd
alias c='cd'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias l='ls --color -F'
alias ls='ls --color -F'
alias la='ls -lA --color -F'
alias lat='ls -lAt --color -F'
alias latr='ls -lAtr --color -F'
#fast cd - dependent on files position!
alias cg='cd ~/code/github-okmanek/'
alias web='cd ~/code/webdev/'

#vim
alias v='vim'
alias V=' sudo vim'
alias ve='vim ~/.bash_aliases'

#git
alias g='clear; g2; gs'
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
alias gc='git checkout'

alias f='free -m'
alias p='ping wp.pl'
alias t='tmux'
alias distro='cat /etc/*-release'
alias distro2='cat /proc/version'
alias distro3='cat /etc/issue'
alias distro4='cat /etc/os-release'

alias sql='mysql -u root -p -t'

alias hist='history'
alias reload='source ~/.bashrc'

alias grep='grep -i --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias week='date +%V'

alias reboot='sudo reboot'
#alias quit='sudo shutdown -h $1 --no-wall' #warning: no args validation #'quit -c' cancels schedules quit

alias tmp='cd ~/code/github-okmanek/myGit'

alias src='source $ALIASES_PATH'
