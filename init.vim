" ----------------------------------------------------------------------  
" VIM FILE 
" ----------------------------------------------------------------------

set nocompatible " Makes it refer only to this init.vim
syntax on " Enables syntax highlighting
filetype plugin indent on " Enables indentation according to filetype

" ----------------------------------------------------------------------
" Spacing
" ----------------------------------------------------------------------

set tabstop=4 " Sets tab to = 4 columns
set softtabstop=4 " Sets tab to = 4 columns
set expandtab " Tabs expand to 4 spaces
set autoindent " Autoindents according to previous line

"----------------------------------------------------------------------
" UI Changes
"----------------------------------------------------------------------

set number " Adds line number
set showmode " Always displays current mode
set showcmd " Always displays previous command
set cursorline " Sets line under cursor position
set foldmethod=indent " Folding will occur at indentation level (good for Python)
