# This is in ~/.profile; why is it needed here?
export PATH="${PATH}${PATH+:}~/bin"

# If not running interactively, don't do anything
# http://dotfiles.org/~zanko/.bashrc
[ -z "$PS1" ] && exit 0

# echo Activating extended globs
# http://mywiki.wooledge.org/glob
shopt -s extglob

echo
echo 'Remember to start these things up after boot.'
echo ' - Wetlands project notices scraper'
echo ' - Irc It'
echo
echo 'And also just make a service that starts them properly.'
echo
