# config.fish

set fish_greeting

# Configure our default editor.
if type -q 'nvim'
	set -x EDITOR nvim
else if type -q 'vim'
	set -x EDITOR vim
else
	set -x EDITOR vi
end

# Better terminal colours
set -gx LSCOLORS gxfxcxdxbxegedabagacad

# Aliases
alias cp='rsync -avh'					# Preferred 'cp' implementation
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
alias emacs='emacs -nw'					# Prevents the GUI of Emacs opening

# GitHub specific extension.
if type -q 'hub'
	alias git='hub'						# Github's git wrapper
end

# XDG Enforcement.

# System
set -x XDG_DATA_DIRS /usr/share /usr/local/share
set -x XDG_CONFIG_DIRS /etc/xdg

# User
set -x XDG_CACHE_HOME $HOME/.cache
set -x XDG_CONFIG_HOME $HOME/.config
set -x XDG_DATA_HOME $HOME/.local/share
set -x XDG_DESKTOP_DIR $HOME/Desktop
set -x XDG_DOWNLOAD_DIR $HOME/Downloads
set -x XDG_DOCUMENTS_DIR $HOME/Documents
set -x XDG_MUSIC_DIR $HOME/Music
set -x XDG_PICTURES_DIR $HOME/Pictures
set -x XDG_VIDEOS_DIR $HOME/Videos

# For NPM
set -x NPM_CONFIG_USERCONFIG $XDG_CONFIG_HOME/npm/npmrc # NPM

