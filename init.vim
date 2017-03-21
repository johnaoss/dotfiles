" ----------------------------------------------------------------------  
" VIM FILE 
" ----------------------------------------------------------------------

set nocompatible " Makes it refer only to this init.vim

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
set expandtab " Autoexpands tabs to spaces
set autoindent " Autoindents according to previous line

"----------------------------------------------------------------------
" UI Changes
"----------------------------------------------------------------------

set number " Adds line number
set showmode " Always displays current mode
set showcmd " Always displays previous command
set cursorline " Sets line under cursor position
set foldmethod=indent " Folding will occur at indentation level (good for Python)
