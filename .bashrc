# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

alias rm='rm -i '
alias cp='cp -i '
alias mv='mv -i '

alias vi='vim '
alias view='vim -R '
alias sudo='sudo -E '
alias ls='ls -a --color=auto '
export GREP_OPTIONS='--color=auto'
export PS1='[\t \u@\h:\w]\$ '
export HISTSIZE=10000
export HISTFILESIZE=10000
export HISTTIMEFORMAT='%Y/%m/%d %T '
export EDITOR="/usr/bin/vim"

if [[ -f "/usr/local/bin/aws_completer" ]] ; then
	complete -C '/usr/local/bin/aws_completer' aws
fi
complete -cf sudo

eval "$(dircolors "$HOME/.dotfiles/dircolors/dircolors.molokai")"

export PROMPT_COMMAND="history -a"
