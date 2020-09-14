call plug#begin('~/.vim/plugged') "vim plug configuration begin

Plug 'scrooloose/nerdtree' "file tree browser tool
Plug 'sheerun/vim-polyglot' "syntax highlighting tool
Plug 'dense-analysis/ale' "error highlighting tool
Plug 'ternjs/tern_for_vim', { 'do' : 'npm install' }
Plug 'neoclide/coc.nvim' , { 'branch' : 'release' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

call plug#end() "vim plug configuration completion

:map <C-m> :NERDTreeToggle<CR>
:map <C-n> :Files<CR>
:map <C-f> :Rg<CR>
:map <C-l> :NERDTreeFind<CR>

"AUTOCOMPLETE
filetype plugin on
set omnifunc=syntaxcomplete#Complete

set expandtab
set shiftwidth=2
set softtabstop=2
set foldmethod=indent

let g:coc_global_extensions = [ 'coc-tsserver' ]

