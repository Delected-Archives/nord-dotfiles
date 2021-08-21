# .bashrc

# colours
BLUE=$(tput setaf 4)
LIGHTBLUE=$(tput setaf 6)
RESET=$(tput sgr0)


# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias scrot='scrot -s'

# DEFAULT:
# PS1='[\u@\h \W]\$ '

# [user@host dir]$ 
PS1='\[$BLUE\][\[$RESET\]\u@\h \[$LIGHTBLUE\]\W\[$BLUE\]]\[$RESET\]\$ '

export PF_COL3=4
export PF_INFO='title os host kernel wm pkgs palette'
pfetch
