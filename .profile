 export EDITOR=vim
 export GEM_HOME=$(ruby -e 'print Gem.user_dir')
 export PAGER=vimpager
 #export GREP_COLOR='1;33' #make results yellow
 #------------------------------
 # Alias stuff
 #------------------------------
 alias ls="ls --color -F"
 alias ll="ls --color -lh"
 alias grep="grep --color=always"
 alias less=/usr/share/vim/vim81/macros/less.sh
 alias ranger='ranger --choosedir=$HOME/rangerdir; LASTDIR=`cat $HOME/rangerdir`; cd "$LASTDIR"'
 
 # moving in dirs
 alias ..="cd ..;ls"
 alias ...="cd ../..;ls"
 alias ....="cd ../../..;ls"
 alias .....="cd ../../../..;ls"
 alias ......="cd ../../../../.."
