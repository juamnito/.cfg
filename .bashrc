#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# Default text editor
export EDITOR='vim'

setxkbmap -layout latam

alias config='/usr/bin/git --git-dir=/home/juamnito/.cfg/ --work-tree=/home/juamnito'

PATH=$PATH:$HOME/.scripts

export PATH=/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/juamnito/.scripts:/home/juamnito/.scripts:/home/juamnito/.scripts:/home/juamnito/Latex-Configuracion-Manual/Scripts:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/juamnito/.scripts:/home/juamnito/.scripts:/home/juamnito/.scripts
export PATH=/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/juamnito/.scripts:/home/juamnito/.scripts:/home/juamnito/.scripts:/home/juamnito/Latex-Configuracion-Manual/Scripts:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/juamnito/.scripts:/home/juamnito/.scripts:/home/juamnito/.scripts:/home/juamnito/Latex-Configuracion-Manual/Scripts:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/juamnito/.scripts:/home/juamnito/.scripts:/home/juamnito/.scripts:/home/juamnito/Latex-Configuracion-Manual/Scripts:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/juamnito/.scripts:/home/juamnito/.scripts:/home/juamnito/.scripts

if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
    exec startx
fi

neofetch
