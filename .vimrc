set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'



" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

" python-mode
Plugin 'https://github.com/klen/python-mode.git'
Plugin 'pangloss/vim-javascript'



" All of your Plugins must be added before the following line

call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" enable powerline
"python from powerline.vim import setup as powerline_setup
"python powerline_setup()
"python del powerline_setup


set laststatus=2 " Always display the statusline in all windows
set showtabline=2 " Always display the tabline, even if there is only one tab
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)

syntax on

" indentation stuff
set expandtab
set hlsearch                   " Highlight matches.
set incsearch                  " Highlight matches as you type.
set laststatus=2               " Always display the status line
set shiftwidth=2
set smarttab
set tabstop=2
set backspace=2

autocmd BufRead,BufNewFile *.es6 setl filetype=javascript


" disable rope since it hangs vim
let g:pymode_rope = 0 
let g:pymode_rope_lookup_project = 0 
let g:pymode_rope_complete_on_dot = 0 


set clipboard=unnamed " use the system clipboard

