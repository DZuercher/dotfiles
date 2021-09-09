set laststatus=2

set showtabline=2 " Always display the tabline, even if there is only one tab
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)

set encoding=utf-8

set background=dark

set nocompatible              " be iMproved, required
filetype off                  " required

" If vim-plug is not found, install it and every plugin
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins
call plug#begin('~/.vim/plugged')
  Plug 'ConnorHolyday/vim-snazzy'
  Plug 'godlygeek/csapprox'
call plug#end()

" Color scheme
syntax on
set t_Co=256
colorscheme snazzy

" .pl for prolog, not perl
au BufRead,BufNewFile *.pl set filetype=prolog

" Indentation
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" Code readability
set number
set colorcolumn=80

set termguicolors

set noshowmode

set shortmess=I

" powerline
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup

