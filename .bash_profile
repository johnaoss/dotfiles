# Aliases
alias cp='cp -iv'                       # Preferred 'cp' implementation
alias mv='mv'				# Preferred 'mv' implementation
alias mkdir='mkdir -pv'                 # Preferred 'mkdir' implementation
alias ll='ls -FGlAhp'                   # Preferred 'ls' implementation
alias less='less -FSRXc'                # Preferred 'less' implementation
cd() { builtin cd "$@"; ll; }           # Always list directory contents upon 'cd'
alias cd..='cd ../'                     # Go back 1 directory level (for fast typers)
alias ..='cd ../'                       # Go back 1 directory level
alias ...='cd ../../'                   # Go back 2 directory levels
alias .3='cd ../../../'                 # Go back 3 directory levels
alias .4='cd ../../../../'              # Go back 4 directory levels
alias .5='cd ../../../../../'           # Go back 5 directory levels
alias .6='cd ../../../../../../'        # Go back 6 directory levels
alias python='python3'			# Always use Python 3.X instead of Python 2.X
alias nano='nvim'			# Preferred text editor (breaking habits)

# Development Stuff
export GOPATH=$(pwd)

