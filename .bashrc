# .bashrc

# Source global definitions
if [[ -f /etc/bashrc ]] ; then
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
alias ll='ls -la --color=auto '
export GREP_OPTIONS='--color=auto'
export PS1='[\t \u@\h:\w]\$ '
export HISTSIZE=10000
export HISTFILESIZE=10000
export HISTTIMEFORMAT='%Y/%m/%d %T '
export EDITOR="/usr/bin/vim"

AWS_COMPLETER=$(which aws_completer)
if [[ -f "${AWS_COMPLETER}" ]] ; then
        complete -C "${AWS_COMPLETER}" aws
fi
complete -cf sudo

DIRCOLORS_PATH="${HOME}/dotfiles/dircolors"
eval "$(dircolors "${DIRCOLORS_PATH}/dircolors.molokai")"

export PROMPT_COMMAND="history -a"

RESPATH="$HOME/dotfiles/res"
cd ${RESPATH}
for RESFILE in .?*
do
  if [[ ${RESFILE} != '.' ]] && [[ ${RESFILE} != '..' ]] ; then
    . ${RESFILE}
  fi
done

cd
