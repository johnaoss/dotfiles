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
set autoread	" Autoread when file is externally changed
set nocompatible " Makes it refer only to this init.vim

" If the colorscheme doesn't exist, download it.
if empty(glob("~/.config/nvim/colors/monokai.vim"))
	silent !curl -fLo ~/.config/nvim/colors/monokai.vim --create-dirs
				\ https://raw.githubusercontent.com/sickill/vim-monokai/master/colors/monokai.vim
endif

colorscheme monokai " Looks nice with iTerm Monokai colorscheme

"----------------------------------------------------------------------
" Plugins
"----------------------------------------------------------------------

" I use https://github.com/junegunn/vim-plug for plugin management
" The next few lines check if it exists, and downloads it if it isn't

if empty(glob("~/.config/nvim/autoload/plug.vim"))
	silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
	\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

	augroup PLUG
		au!
		autocmd VimEnter * PlugInstall
	augroup end
endif

" Installing Plugins
call plug#begin('~/.config/nvim/plugged')

	Plug 'vimwiki/vimwiki' " Like an easy org-mode for Vim
	Plug 'vim-airline/vim-airline' " Adds status bar to bottom of screen
	Plug 'scrooloose/nerdtree' " Filesystem controls
	Plug 'fatih/vim-go' " Go development plugin

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
set backspace=indent,eol,start

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

" Better autocomplete
inoremap <C-space> <C-n>

"----------------------------------------------------------------------
" NERDTree
"----------------------------------------------------------------------
" Opens NERDTree if opened with just 'nvim'
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | wincmd p | endif
" Closes NeoVim if NERDTree is the only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Shows hidden files in NERDTree
let NERDTreeShowHidden=1

"----------------------------------------------------------------------
" Vimwiki
"----------------------------------------------------------------------
" Places vimwiki folder in a specific location
let g:vimwiki_list = [{'path': '~/Documents/Vimwiki',
					\ 'path_html': '~/Documents/Vimwiki/HTML'}]
"----------------------------------------------------------------------
" Vim-Go
"----------------------------------------------------------------------
" Enables syntax highlighting
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
