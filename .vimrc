let g:fzf_path = '~/.fzf'
let dotfiles_path = expand('<sfile>:p:h')
execute 'set rtp+=' . dotfiles_path
execute 'set packpath+=' . dotfiles_path

if exists('g:fzf_path')
	execute 'set rtp+=' . g:fzf_path
endif

syntax on

set encoding=utf-8
set backspace=indent,eol,start
set nobackup
set number
set incsearch
set hlsearch
set completeopt=longest,menuone
set laststatus=2

filetype plugin indent on

packadd! onedark.vim
colorscheme onedark

let mapleader = ","

"keymap
omap ih <Plug>(GitGutterTextObjectInnerPending)
omap ah <Plug>(GitGutterTextObjectOuterPending)
xmap ih <Plug>(GitGutterTextObjectInnerVisual)
xmap ah <Plug>(GitGutterTextObjectOuterVisual)

"session
set sessionoptions-=options
set sessionoptions+=resize

" Allow netrw to remove non-empty local directories
"
let g:netrw_localrmdir='rm -rf'
