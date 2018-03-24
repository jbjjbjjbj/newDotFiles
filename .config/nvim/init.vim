
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-speeddating'

Plugin 'zchee/deoplete-jedi'

Plugin 'sirtaj/vim-openscad'

Plugin 'nanotech/jellybeans.vim'

Plugin 'Shougo/deoplete.nvim'


call vundle#end()            " required
filetype plugin indent on    " required


colorscheme elflord

syntax enable
set number relativenumber

set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab


let g:deoplete#enable_at_startup = 1


inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"


tnoremap <C-e> <C-\><C-n>
