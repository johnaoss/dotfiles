" ----------------------------------------------------------------------  
" VIM FILE 
" ----------------------------------------------------------------------

set nocompatible " Makes it refer only to this init.vim

"----------------------------------------------------------------------
" Plugins
"----------------------------------------------------------------------

" I use https://github.com/junegunn/vim-plug for plugin management
call plug#begin('~/.vim/plugged')

Plug 'vimwiki/vimwiki'

call plug#end() 

" ----------------------------------------------------------------------
" Spacing
" ----------------------------------------------------------------------

set tabstop=4 " Sets tab to = 4 columns
set softtabstop=4 " Sets tab to = 4 columns
set autoindent " Autoindents according to previous line

"----------------------------------------------------------------------
" UI Changes
"----------------------------------------------------------------------

set number " Adds line number
set showmode " Always displays current mode
set showcmd " Always displays previous command
set cursorline " Sets line under cursor position
set foldmethod=indent " Folding will occur at indentation level (good for Python)
