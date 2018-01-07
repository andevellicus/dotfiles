#
# ~/.bashrc
#


# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#[[ -z "$TMUX" ]] && exec tmux

[ -z "$TMUX"  ] && { tmux attach || tmux new-session;}

alias ls='ls --color=auto'
alias ll='ls -l --color=auto'
#PS1='[\u@\h \W]\$ '
#PS1='[\[\033[0;31m\]\u@\h\[\033[0m\]:\[\033[0;32m\]\t\[\033[0m\]]$(__git_ps1 "[%s]")\n[\[\033[0;36m\]\w\[\033[0m\]]> '
PS1='[\[\033[0;31m\]\u@\h\[\033[0m\]:\[\033[0;32m\]\t\[\033[0m\]]\n[\[\033[0;36m\]\w\[\033[0m\]]> '

#if [[ -z "$TMUX" ]] && [ "$SSH_CONNECTION" != "" ]; then
#    tmux attach-session -t ssh_tmux || tmux new-session -s ssh_tmux
#fi
