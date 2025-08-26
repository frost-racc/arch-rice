#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# nvm sourcing
source /usr/share/nvm/init-nvm.sh

# enable bash completion
if [ -f /usr/share/bash-completion/bash-completion ]; then
	source /usr/share/bash-completion/bash-completion 
fi

# prettier prompt via powerline
# powerline-daemon -q
# POWERLINE_BASH_CONTINUATION=1
# POWERLINE_BASH_SELECT=1
# . /usr/share/powerline/bindings/bash/powerline.sh


# custom ps1 with rgb colors
#PROMPT_COMMAND='PS1_CMD1=$(git branch --show-current 2>/dev/null)'; PS1='[\[\e[38;5;196m\]@\[\e[38;5;208m\]\u\[\e[0m\] \[\e[2m\]\A\[\e[0m\]] \[\e[1m\]\w\[\e[0m\] \[\e[97;2;3m\]&${PS1_CMD1}\[\e[0m\] 󰞘 '


# custom ps1 with ansi colors
#PROMPT_COMMAND='PS1_CMD1=$(git branch --show-current 2>/dev/null)';
#PS1='[\[\e[91m\]@\[\e[93m\]\u\[\e[0m\] \[\e[2m\]\A\[\e[0m\]] \[\e[1m\]\w\[\e[0m\] \[\e[97;2;3m\]&\[\e[97m\]${PS1_CMD1}\[\e[0m\] 󰞘 '

# custom ps1 new ver
PROMPT_COMMAND='PS1_CMD1=$(git branch --show-current 2>/dev/null)'; 
PS1='\[\e[37;40m\][\[\e[95m\]@\[\e[96m\]\u\[\e[30m\] \[\e[37;3m\]\A\[\e[23m\]]\[\e[0m\] \[\e[1m\]\w\[\e[0m\] \[\e[97;2;3m\]&\[\e[97m\]${PS1_CMD1}\[\e[0m\] 󰞘 '

# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
# Not supported in the "fish" shell.
(cat ~/.cache/wal/sequences &)

sleep 0.1 
fastfetch

# Created by `pipx` on 2025-08-22 13:48:09
export PATH="$PATH:/home/frost/.local/bin"
