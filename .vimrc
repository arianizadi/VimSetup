" OUT[KAST]'s .VIMRC


" PLUGINS -------------------------------------

call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin' |
            \ Plug 'ryanoasis/vim-devicons' |
            \ Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

Plug 'itchyny/lightline.vim'
Plug 'Valloric/YouCompleteMe'
Plug 'majutsushi/tagbar'
Plug 'jiangmiao/auto-pairs'

call plug#end()

" Commands
:command CompileThread :w | !rm a.out; clear; clang++ -pthread -std=c++11 -Wextra -Werror -Wpedantic -Wall -g3 -O0 %:t

:command Compile :w | !rm a.out; clear; clang++ -std=c++11 -Wextra -Werror -Wpedantic -Wall -g3 -O0 %:t

:command Run !clear; ./a.out

" GENERAL -------------------------------------

let mapleader = " "
set exrc
set backspace=indent,eol,start
set autoindent
set expandtab
set shiftround
set shiftwidth=2
set smarttab
set tabstop=2
set ignorecase
set lazyredraw
set display+=lastline
set encoding=utf-8
set linebreak
set scrolloff=15
set incsearch
syntax enable
set wrap
set wildmenu
set number
set relativenumber
set noerrorbells
set mouse=a
set title
set background=dark
set autoread
set confirm
set history=1000
set nomodeline
set noswapfile
set complete-=i
set nrformats-=octal
set laststatus=2
colorscheme iceberg
filetype on
filetype plugin on
set cursorline

" Nerd Tree 
nnoremap <LEADER>e :NERDTreeToggle<CR>

" Light Line
if !has('gui_running')
  set t_Co=256
endif
set noshowmode
let g:lightline = { 'colorscheme': 'solarized', }

" You Complete Me
let g:ycm_max_diagnostics_to_display = 1000
" let g:loaded_youcompleteme = 1 "Disable YCM

" Tag Bar
nnoremap <LEADER>t :TagbarToggle<CR>
