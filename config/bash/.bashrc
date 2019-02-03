# Aliases
alias cp='cp -iv'                       # Preferred 'cp' implementation
alias mv='mv'				            # Preferred 'mv' implementation
alias mkdir='mkdir -pv'                 # Preferred 'mkdir' implementation
alias ll='ls -FGlAhp'                   # Preferred 'ls' implementation
alias less='less -FSRXc'                # Preferred 'less' implementation
cd() { builtin cd "$@"; ll; }           # Always list directory contents upon 'cd'
alias cd..='cd ../'                     # Go back 1 directory level (for fast typers)
alias ..='cd ../'                       # Go back 1 directory level
alias python='python3'			        # Always use Python 3.X instead of Python 2.X
alias nano='nvim'			            # Preferred text editor (breaking habits)
alias vi='nvim'                         # Preferred text editor (breaking habits)
alias vim='nvim'                        # Preferred text editor (breaking habits)

# Development Stuff
export GOPATH=$HOME/Code/Go

# Use installed Go programs as shell scripts
export PATH=$PATH:$GOPATH/bin

# Include XDG Defaults (if not set)
export XDG_DATA_HOME=$HOME/.local/share
export XDG_CONFIG_HOME=$HOME/.config
export XDG_DATA_DIRS=/usr/local/share/:/usr/share/
export XDG_CONFIG_DIRS=/etc/xdg
export XDG_CACHE_HOME=$HOME/.cache


