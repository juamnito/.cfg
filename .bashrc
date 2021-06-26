#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

setxkbmap -layout latam

alias config='/usr/bin/git --git-dir=/home/juamnito/.cfg/ --work-tree=/home/juamnito'
