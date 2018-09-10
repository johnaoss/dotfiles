" ----------------------------------------------------------------------
" ~/.vimrc 
" Written by John Oss
" ----------------------------------------------------------------------
" General
" ----------------------------------------------------------------------
let $LANG='en' " Asserts no weird text encoding errors
set langmenu=en " Asserts no weird text encoding errors
set encoding=utf-8 " Asserts no weird text encoding errors
set noswapfile " Refuses to create swap file
set nobackup " Refuses to create backup file
set visualbell " Don't beep please
set history=500 " Only remember 500 lines of history
set autoread    " Autoread when file is externally changed

" ----------------------------------------------------------------------
" Colours
" ----------------------------------------------------------------------

" Download if we don't have
if empty(glob("~/.vim/colors/monokai.vim"))
    silent !curl -fLo ~/.vim/colors/monokai.vim --create-dirs
	                \ https://raw.githubusercontent.com/crusoexia/vim-monokai/master/colors/monokai.vim
	" Refresh after downloading
	source %
endif

colorscheme monokai " Looks nice with iTerm Monokai colorscheme

" ----------------------------------------------------------------------
" Spacing
" ----------------------------------------------------------------------

set tabstop=4 " Sets tab to = 4 columns
set softtabstop=4 " Sets tab to = 4 columns
set shiftwidth=4 " Sets indent to 4 width
set autoindent " Autoindents according to previous line
set smarttab " Forces tabs to respect tabstop and softtabstop
set noexpandtab " Never expand tabs.
set backspace=indent,eol,start " Fixes occasional issues with backspace

"----------------------------------------------------------------------
" UI Changes
"----------------------------------------------------------------------

set lazyredraw " Only renders on completion
set number " Adds line number
set showmode " Always displays current mode
set showcmd " Always displays previous command
set cursorline " Sets line under cursor position
set ruler " Shows the ruler
set title " Sets the window title
syntax on

"----------------------------------------------------------------------
" Keybindings
"----------------------------------------------------------------------

" Tab Switching
nnoremap <TAB> gT
nnoremap <S-TAB> gt

" Split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Remove arrow keybindings
noremap <left> <Nop>
noremap <right> <Nop>
noremap <up> <Nop>
noremap <down> <Nop>
