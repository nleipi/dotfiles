let dotfiles_path = expand('<sfile>:p:h')
execute 'set runtimepath+=' . dotfiles_path

execute pathogen#infect()

syntax on

set encoding=utf-8
set rtp+=~/.fzf
set backspace=indent,eol,start
set nobackup
set number
set incsearch
set hlsearch
set completeopt=longest,menuone

filetype plugin indent on
