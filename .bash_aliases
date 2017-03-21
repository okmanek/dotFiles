alias lenny='echo "( ͡° ͜ʖ ͡°)"'
alias sadLenny='echo "( ͡° ʖ̯ ͡°)"'

# mint-fortune
/usr/bin/mint-fortune
alias matrix='echo -e "1"; while $t; do for i in `seq 1 30`;do r="$[($RANDOM % 2)]";h="$[($RANDOM % 4)]";if [ $h -eq 1 ]; then v="0 $r";else v="1 $r";fi;v2="$v2 $v";done;echo -e $v2;v2="";done;'

#zalezne od polozenia plikow na dysku
alias notee='vim ~/.myNotes/note.txt'
alias songg='vim ~/.myNotes/song.txt'
alias bookk='vim ~/.myNotes/book.txt'
alias filmm='vim ~/.myNotes/film.txt'
alias cg='cd ~/code/github-okmanek/'

alias reboot='sudo reboot'
alias update='sudo apt-get update'
alias upgrade='sudo apt-get upgrade'
alias up='sudo apt-get update && sudo apt-get -y upgrade' 

alias c='cd'
alias ..='cd ..'
alias ...='cd ../..'
alias l='ls --color'
alias ls='ls --color'
alias la='ls -lA --color'
alias lt='ls -ltr --color' 
alias v='vim'

alias g='git'
alias ga='git add'
alias gc='git commit -m'
alias gp='git push origin master'
alias gs='git status'
alias gl='git log'

alias f='free -m'
alias p='ping wp.pl'
alias t='tmux'

alias sql='mysql -u root -p -t'

run() {
  g++ $1;
  ./a.out
}

hello() {
  STR=$'#include <iostream>\n\nint main()\n{\n}'
  echo "$STR" > $1
}
