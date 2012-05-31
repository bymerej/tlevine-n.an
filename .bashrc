# This is in ~/.profile; why is it needed here?
export PATH="${PATH}${PATH+:}~/bin"

# If not running interactively, don't do anything
# http://dotfiles.org/~zanko/.bashrc
[ -z "$PS1" ] && exit 0

# echo Activating extended globs
# http://mywiki.wooledge.org/glob
shopt -s extglob

# One million commands of history per session
export HISTSIZE=1000000

# Ten gigabytes of maximum history size
export HISTFILESIZE=10000000000

# Save timestamps in the history.
export HISTTIMEFORMAT="[%F %T %Z]" 

# Append continuously
# http://ask.fedoraproject.org/question/18/how-to-keep-history-commands-in-sync-across
shopt -s histappend
PROMPT_COMMAND="$PROMPT_COMMAND; history -a; history -n"

echo
echo 'Remember to start these things up after boot.'
echo ' - Wetlands project notices scraper'
echo
echo 'And also just make a service that starts them properly.'
echo
