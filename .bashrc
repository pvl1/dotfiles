#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
[ -r /home/alarm/.byobu/prompt ] && . /home/alarm/.byobu/prompt   #byobu-prompt#


# User specific aliases and functions
function title {
    echo -en "\033]2;$@\007"
}


LS_COLORS='rs=0:di=01;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:su=37;41:sg=30;43:tw=30;42:ow=34;42:st=37;44:ex=01;32:'
#PS1="[\d \t \u@\h:\w ] $ "
#export PS1="\e[0;31m]\W-\e[92m]>"
#PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
PS1='\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]
\[\e[0;31m\]\W-\[\e[92m\]>'
#export PS1='\[\e[1;32m\]\u@\h:\w${text}$\[\e[m\] '
