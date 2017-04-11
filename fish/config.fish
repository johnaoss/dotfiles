# config.fish
set fish_greeting
set -x EDITOR nvim

# Aliases
alias cp='cp -iv'                       # Preferred 'cp' implementation
alias mv='mv'                           # Preferred 'mv' implementation
alias mkdir='mkdir -pv'                 # Preferred 'mkdir' implementation
alias ll='ls -FGlAhp'                   # Preferred 'ls' implementation
alias less='less -FSRXc'                # Preferred 'less' implementation
alias cd..='cd ../'                     # Go back 1 directory level (for fast typers)
alias ..='cd ../'                       # Go back 1 directory level
alias ...='cd ../../'                   # Go back 2 directory levels
alias python='python3'                  # Always use Python 3.X instead of Python 2.X
alias nano='nvim'                       # Preferred text editor (breaking habits)
alias vi='nvim'                         # Preferred text editor (breaking habits)
alias vim='nvim'                        # Preferred text editor (breaking habits)

# Functions
function cd
  builtin cd $argv[1]
  ls -l
end

# Development Stuff
export GOPATH=(pwd)
