" Setting up Vundle VIM Plugin manager"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible " be iMproved
filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()"

execute pathogen#infect()

" let Vundle manage Vundle
"Plugin 'VundleVim/Vundle.vim'"

" YouCompleteMe autocompletion plugin"
"Plugin 'Valloric/YouCompleteMe'"


" All of your Plugins must be added before the following line
"call vundle#end()"
"filetype plugin indent on"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Enable syntax highlighting "
syntax on
" Display 5 lines above/below the cursor when scrolling with a mouse."
set scrolloff=5
" Highlight matching pairs of brackets. Use the '%' character to jump between them."
set matchpairs+=<:>
" Display different types of white spaces."
" set list"
" set listchars=tab:›\ ,trail:•,extends:#,nbsp:. "
" Encoding "
set encoding=utf-8

" Set tabwidth and indenting "
set tabstop=4
set shiftwidth=4
set softtabstop=4 
set expandtab

" Always show line numbers"
set number


" Default movement keybinding "
:nnoremap j <Left> 
:nnoremap ; <Right><Left> 
:nnoremap k <Up>
:nnoremap l <Down>

" Default color scheme"
" set background=dark "
" secolorscheme solarized "
