# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

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

# Color prompt
force_color_prompt=yes

# Load colors
eval $(dircolors -b ~/dotfiles/.dircolors)

# Color aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# PS1
PS1='\W$ '

# Scripts
alias bws='source ~/dotfiles/scripts/workspace.sh'
bws autocomplete

# Aliases
alias du='du --apparent-size -h'
alias reload='source ~/.bashrc'
alias sublime='sublime-text'
alias ed="vim . "
alias ged="sublime-text . &"
alias tweets='twidge lsrecent -su'
alias df='df -h'

# BWS CD. Changes project and gets to it's root
function bwscd() {
  bws cw $@ && bws cd
}
