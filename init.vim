" ----------------------------------------------------------------------  
" General 
" ----------------------------------------------------------------------
let $LANG='en' " Asserts no weird text encoding errors
set langmenu=en " Asserts no weird text encoding errors
set lazyredraw " Don't render during macros/commands 
set history=500 " Only remember 500 lines of history
set nocompatible " Makes it refer only to this init.vim
set autoread	" Autoread when file is externally changed.
colorscheme slate " Looks nice

"----------------------------------------------------------------------
" Plugins
"----------------------------------------------------------------------

" I use https://github.com/junegunn/vim-plug for plugin management
" The next few lines check if it exists, and downloads it if it isnt.

if empty(glob("~/.local/share/nvim/site/autoload/plug.vim"))
	call system("curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim")
endif

call plug#begin('~/.local/share/nvim/plugged')

Plug 'vimwiki/vimwiki'

call plug#end() 

" ----------------------------------------------------------------------
" Spacing
" ----------------------------------------------------------------------

set tabstop=4 " Sets tab to = 4 columns
set softtabstop=4 " Sets tab to = 4 columns
set shiftwidth=4 " Sets indent to 4 width
set autoindent " Autoindents according to previous line
set smarttab " Forces tabs to respect tabstop and softtabstop
set noexpandtab " Never expand tabs.

"----------------------------------------------------------------------
" UI Changes
"----------------------------------------------------------------------

set number " Adds line number
set showmode " Always displays current mode
set showcmd " Always displays previous command
set cursorline " Sets line under cursor position
set foldmethod=indent " Folding will occur at indentation level (good for Python)
