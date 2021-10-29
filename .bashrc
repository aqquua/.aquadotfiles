#    _
#   / \
#  / _ \    https://github.com/aqquua/.aquadotfiles
# / ___ \
#/_/   \_\
#
# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# EXPORTS
export EDITOR=emacs
export VISUAL=emacs
export TERM=xterm-256color
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export PATH="$PATH:/home/aqua/.emacs.d/bin"

# I use Artix Btw
neofetch | lolcat

# mmm cozy aliases
# less pacman types
alias p="doas pacman"
alias untar="tar -zxvf"
# Checks for active ports
alias checkports="netstat -tulanp"
alias sha="shasum -a 256"
alias clear="clear ; neofetch | lolcat"
alias cl="clear ; neofetch | lolcat"
# Overwiting commands so i dont accidentally overwite shit
alias cp="cp -iv"
alias mv="mv -iv"
alias rm="rm -iv"
# REQUIRES opendoas TO BE INSTALLED
# lmao sudo is bloated
alias sudo="doas"
alias ..="cd .."
# Shows Your PUBLIC IP not internal
alias myip="curl ipinfo.io/ip"
# requires exa to be installed
# it just looks nicer than ls
# looking nicer >>> wtf bloat is
alias ls="exa -al --color=always --group-directories-first"
# [X]Monad [R]ecompile [R]estart
# Yes, i know Super+Q exists
# But im not a big fan of using that
alias xrr="xmonad --recompile; xmonad --restart"

# Starship Prompt
eval "$(starship init bash)"
