# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# Source global definitions
if [ -f /etc/bash.bashrc ]; then
        . /etc/bash.bashrc
fi

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"


# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

PATH=$PATH:/usr/local/bin:/home/i/code/android-studio/bin/
export PATH

alias lenny='echo "( ͡° ͜ʖ ͡°)"'
# mint-fortune
/usr/bin/mint-fortune
alias matrix='echo -e "1"; while $t; do for i in `seq 1 30`;do r="$[($RANDOM % 2)]";h="$[($RANDOM % 4)]";if [ $h -eq 1 ]; then v="0 $r";else v="1 $r";fi;v2="$v2 $v";done;echo -e $v2;v2="";done;'

alias song='~/code/github-okmanek/myNotes/note.py song'
alias book='~/code/github-okmanek/myNotes/note.py book'
alias film='~/code/github-okmanek/myNotes/note.py film'
alias notee='vim ~/.myNotes/note.txt'
alias songg='vim ~/.myNotes/song.txt'
alias bookk='vim ~/.myNotes/book.txt'
alias filmm='vim ~/.myNotes/film.txt'

alias reboot='sudo reboot'
alias update='sudo apt-get update'
alias upgrade='sudo apt-get upgrade'
alias up='sudo apt-get update && sudo apt-get -y upgrade' 

alias ..='cd ..'
alias v='vim'
alias c='cd'
