# Created by newuser for 5.2
#------------------------------
# Alias stuff
#------------------------------
alias ls="ls --color -F"
alias ll="ls --color -lh"
alias grep="grep --color=always"
alias less="/usr/share/vim/vim80/macros/less.sh"

export GREP_COLOR='1;33' #make results yellow

# moving in dirs
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."

export EDITOR=vim

#-----------------------------
# Dircolors
#-----------------------------
LS_COLORS='rs=0:di=01;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:su=37;41:sg=30;43:tw=30;42:ow=34;42:st=37;44:ex=01;32:';
export LS_COLORS

# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' completions 1
zstyle ':completion:*' file-sort name
zstyle ':completion:*' glob 1
zstyle ':completion:*' group-name ''
zstyle ':completion:*' max-errors 3 numeric
zstyle ':completion:*' prompt 'did you mean: '
zstyle ':completion:*' substitute 1
zstyle ':completion:*' verbose true
#zstyle :compinstall filename '/home/pavel/testszhs'
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

fpath=(/usr/share/zsh/site-functions/ $fpath)

autoload -Uz compinit
compinit
# End of lines added by compinstall

zstyle ':completion:*' menu select
bindkey -e
bindkey    "^[[3~"          delete-char
bindkey    "^[3;5~"         delete-char
autoload -U colors
colors

#PROMPT="%{$fg[red]%}%n%{$reset_color%}@%{$fg[blue]%}%m %{$fg_no_bold[yellow]%}%1~ %{$reset_color%}%#"
PROMPT="%{$fg[red]%}%~%{$reset_color%}%#"
RPROMPT="[%{$fg_no_bold[yellow]%}%?%{$reset_color%}]"

# The following lines were added by compinstall
zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle :compinstall filename '/home/pavel/.zshrc'

# End of lines added by compinstall
# Lines configured by zsh-newuser-install
#------------------------------
# History
#------------------------------
setopt append_history
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_verify
setopt inc_append_history
setopt share_history
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000


setopt autocd extendedglob notify
bindkey -e
# End of lines configured by zsh-newuser-install
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


#------------------------------
# Window title
#------------------------------
case $TERM in
    *xterm*|rxvt|rxvt-unicode|rxvt-256color|(dt|k|E)term)
                precmd () { print -Pn "\e]0;$TERM - (%L) [%n@%M]%# [%~]\a" } 
		preexec () { print -Pn "\e]0;$TERM - (%L) [%n@%M]%# [%~] ($1)\a" }
        ;;
    screen)
        precmd () { 
		[[ $a = zsh ]] && print -Pn "\ek$2\e\\" # show the path if no program is running
                [[ $a != zsh ]] && print -Pn "\ek$a\e\\" # if a program is running show that

                # Terminal title
                if [[ -n $STY ]] ; then
                        [[ $a = zsh ]] && print -Pn "\e]2;$SHORTHOST:S\[$WINDOW\]:$2\a"
                        [[ $a != zsh ]] && print -Pn "\e]2;$SHORTHOST:S\[$WINDOW\]:${a//\%/\%\%}\a"
                elif [[ -n $TMUX ]] ; then
                        # We're running in tmux, not screen
                        [[ $a = zsh ]] && print -Pn "\e]2;$SHORTHOST:$2\a"
                        [[ $a != zsh ]] && print -Pn "\e]2;$SHORTHOST:${a//\%/\%\%}\a"
                fi
                }
                preexec () { 
                       # print -Pn "\e]83;title \"$1\"\a" 
                       # print -Pn "\e]0;$TERM - (%L) [%n@%M]%# [%~] ($1)\a" 
                }
        ;; 
esac

# Dir colors
#eval $(dircolors -b $HOME/.dircolors)
hist_dedup() {
  sort ~/.histfile > ~/.histfile.old
  uniq ~/.histfile.old > ~/.histfile
}
