# Clear the terminal
alias cls='clear'

# Disk free in human terms
alias df='df -h'

# List paths
alias path='echo -e ${PATH//:/\\n}'

# For nano editor
alias nano='nano -w'

# Alter the ls command
alias ll='ls --color --time-style="+%b %d %Y %H:%M"'
#alias ls='ls -ac'
alias lls='ls -lac' 
alias la="ls --color -lAGbh --time-style='+%b %d %Y %H:%M'"

# CocoPi3 settings
alias dw4cli='java -jar $HOME/DriveWire4/DW4CLI.jar'

# Launch mess
alias mess='cd $HOME/.mess; mess -homepath $HOME/.mess'

# Resolve slow starting for Midnight Commander
alias mc="mc --nosubshell"
