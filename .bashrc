# This is in ~/.profile; why is it needed here?
export PATH="${PATH}${PATH+:}~/bin"

# If not running interactively, don't do anything
# http://dotfiles.org/~zanko/.bashrc
[ -z "$PS1" ] && exit 0

# echo Activating extended globs
# http://mywiki.wooledge.org/glob
shopt -s extglob
