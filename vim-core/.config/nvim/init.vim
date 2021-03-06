set nocompatible              " be iMproved, required
filetype plugin on
set shellslash

runtime extra.vim
filetype plugin indent on    " required

" General vim settings
    syntax enable
    set number 
    set relativenumber

    " More sensible splitting
    set splitbelow splitright

    set tabstop=4
    set shiftwidth=4
    set expandtab
    set colorcolumn=80

    set softtabstop=4

    set autoindent
    set smartindent

    " Show 5 lines above and below cursor
    set scrolloff=3
    set list
    set listchars=tab:>\ ,trail:-,nbsp:+

    " Configure statusline
    set laststatus=1

    set incsearch

    if exists('&inccommand')
        " Preview substitution
        set inccommand=split
    endif

    set background=dark

    set hidden

    " Case insensitive search if all letters are small
    set smartcase
    set ignorecase

    " Persistent undo
    set undofile

    set autoread

    " Exit insert mode on inactivity
    " au CursorHoldI * stopinsert

" Language specific
    autocmd FileType python set et

" Latex stuff
    let g:tex_flavor='latex'

    let g:vimtex_quickfix_blgparser = {'disable': 1}
    let g:vimtex_quickfix_open_on_warning = 0
    let g:vimtex_compiler_latexmk = {
        \ 'backend' : 'nvim',
        \ 'background' : 0,
        \ 'build_dir' : '',
        \ 'callback' : 1,
        \ 'continuous' : 0,
        \ 'executable' : 'latexmk',
        \ 'hooks' : [],
        \ 'options' : [
        \   '-file-line-error',
        \   '-synctex=1',
        \ ],
        \}

" File management
    " Fuzzy like menu
    set path+=**
    set wildmenu

    let g:netrw_liststyle=2

" Keymapping
    " Tab for cycling the completion meny, in insert mode
    inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

    " When moving more lines make it a jump. If couns i 2 it will run m'2j,
    " thus storing it on the jumplist and then jumping
    nnoremap <expr> j (v:count > 1 ? "m'" . v:count : '' ) . 'j'
    nnoremap <expr> k (v:count > 1 ? "m'" . v:count : '' ) . 'k'

    " Leader stuff
        let mapleader=" "

        map <leader>mm :make V=1<CR>
        map <leader>mf :make flash V=1<CR>

" Style enforcement
    autocmd FileType go setlocal noet
    autocmd FileType nix setlocal shiftwidth=4

" Enforcing filetypes
    autocmd BufRead,BufNewFile *.ino set filetype=c
    autocmd BufRead,BufNewFile *.asc set filetype=asciidoc
    autocmd BufRead,BufNewFile *.nix set filetype=nix

    autocmd BufRead,BufNewFile *.tsx set filetype=typescript

" Highlightning And colors
    set termguicolors

" Spell check
    set spelllang=en
    " autocmd FileType mail,tex,markdown,rst set spell

