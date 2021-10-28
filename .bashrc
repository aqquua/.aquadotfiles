#
# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# alias ls='ls --color=auto'
# PS1='[\u@\h \W]\$ '

# EXPORTS
export EDITOR=nvim
export VISUAL=nvim
export TERM=xterm-256color
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export QT_QPA_PLATFORMTHEME=
# EXPORT PATHS
export WINEDLLPATH=$WINEDLLPATH:/opt/discord-rpc/bin64:/opt/discord-rpc/bin32
export PATH="$PATH:/home/aqua/.emacs.d/bin"

# I use Artix Btw
neofetch | lolcat

# mmm cozy aliases
# less pacman types
alias p="doas pacman"
# tar unpacking (duh)
alias untar="tar -zxvf"
# Checks for active ports
alias checkports="netstat -tulanp"
alias sha="shasum -a 256"
# lm means "Last Modified"
# I'll fix this later. Thanks Exa
#alias lm="ls -t -1"
# I NEED TO SHOW MY NEOFETCH
alias clear="clear ; neofetch | lolcat"
alias cl="clear ; neofetch | lolcat"
# Overwiting commands so i dont accidentally overwite shit
alias cp="cp -iv"
alias mv="mv -iv"
alias rm="rm -iv"
# REQUIRES opendoas TO BE INSTALLED
# Why choose doas why not use sudo?
# simply, sudo is bloated and doas is not
# sudo has a huge attack vector.
# Make sure to install the opendoas-sudo
# package for the symbolic link (removes sudo)
alias sudo="doas"
alias ..="cd .."
# Curls will be here
# Mostly Just QOL
# i hate going to sites
alias myweather="curl wttr.in"
# Shows Your PUBLIC IP not internal
alias myip="curl ipinfo.io/ip"
# requires exa to be installed
# it just looks nicer than ls
# looking nicer >>> wtf bloat is
alias ls="exa -al --color=always --group-directories-first"
# Spotify Adblocker
alias spotify="LD_PRELOAD=/usr/local/lib/spotify-adblock.so spotify"
# [X]Monad [R]ecompile [R]estart
# Yes, i know Super+Q exists
# But im not a big fan of using that
alias xrr="xmonad --recompile; xmonad --restart"
# xmobar is annoying
alias xmbr="killall xmobar; xmonad --restart" 

# Starship Prompt
eval "$(starship init bash)"
