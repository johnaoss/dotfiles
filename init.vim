" ----------------------------------------------------------------------
" General
" ----------------------------------------------------------------------
let $LANG='en' " Asserts no weird text encoding errors
set langmenu=en " Asserts no weird text encoding errors
set encoding=utf-8 " Asserts no weird text encoding errors
set lazyredraw " Refuses to redraw during commands/macros
set history=500 " Only remember 500 lines of history
set autoread	" Autoread when file is externally changed
set nocompatible " Makes it refer only to this init.vim

colorscheme slate " Looks nice

let g:python2_host_prog = '/usr/local/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'

"----------------------------------------------------------------------
" Plugins
"----------------------------------------------------------------------

" I use https://github.com/junegunn/vim-plug for plugin management
" The next few lines check if it exists, and downloads it if it isn't

if empty(glob("~/.local/share/nvim/site/autoload/plug.vim"))
	call system("curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim")
endif

" Installing Plugins
call plug#begin('~/.local/share/nvim/plugged')

Plug 'vimwiki/vimwiki' " Like an easy org-mode for Vim
Plug 'vim-airline/vim-airline' " Adds status bar to bottom of screen

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

"----------------------------------------------------------------------
" Keybindings
"----------------------------------------------------------------------

" Tab Switching
nnoremap <left> gT
nnoremap <right> gt

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
