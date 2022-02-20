#
# /etc/bash/bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ $DISPLAY ]] && shopt -s checkwinsize
# simple
# PS1='[\u@\h \W]\$ '
# colored
PS1="[\[$(tput sgr0)\]\[\033[38;5;4m\]\u\[$(tput sgr0)\]@\h \[$(tput sgr0)\]\[\033[38;5;6m\]\w\[$(tput sgr0)\]]\$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/') >\[$(tput sgr0)\]"

#case ${TERM} in
#  xterm*|rxvt*|Eterm|aterm|kterm|gnome*|xterm-256color)
#    PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033]0;%s@%s:%s\007" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"'
#
#    ;;
#  screen*)
#    PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033_%s@%s:%s\033\\" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"'
#    ;;
#esac

[ -r /usr/share/bash-completion/bash_completion   ] && . /usr/share/bash-completion/bash_completion
