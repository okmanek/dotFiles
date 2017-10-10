alias lenny='echo "( ͡° ͜ʖ ͡°)"'
alias sadLenny='echo "( ͡° ʖ̯ ͡°)"'

# mint-fortune
/usr/bin/mint-fortune
alias matrix='echo -e "1"; while $t; do for i in `seq 1 30`;do r="$[($RANDOM % 2)]";h="$[($RANDOM % 4)]";if [ $h -eq 1 ]; then v="0 $r";else v="1 $r";fi;v2="$v2 $v";done;echo -e $v2;v2="";done;'

#zalezne od polozenia plikow na dysku
alias cg='cd ~/code/github-okmanek/'

alias reboot='sudo reboot'
alias update='sudo apt-get update'
alias upgrade='sudo apt-get upgrade'
alias up='sudo apt-get update && sudo apt-get -y upgrade' 

alias c='cd'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias l='ls --color'
alias ls='ls --color'
alias la='ls -lA --color'
alias lt='ls -ltr --color' 
#alias l\. 'ls -d .* --color=auto'#shows *only* hidden files#dot in alias can only be used in csh :(

alias v='vim'
alias ve='vim ~/.bash_aliases'

alias g='git'
alias ga='git add'
alias gc='git commit -m'
alias gp='git push origin master'
alias gs='git status'
alias gl='git log'
alias gdf='git diff HEAD'
alias gdff='git diff HEAD^'

alias f='free -m'
alias p='ping wp.pl'
alias t='tmux'

alias sql='mysql -u root -p -t'

alias hist='history'
alias reload='source ~/.bashrc'
alias grep='grep -i --color'
alias week='date +%V'

#temporary, propably to be deleted sooner or later
alias key="/etc/init.d/keyboard.sh" #light my keyboard - CMStorm Devastator
