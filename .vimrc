let g:coc_disable_startup_warning = 1 " remove after updating vim

call plug#begin('~/.vim/plugged') "vim plug configuration begin

Plug 'scrooloose/nerdtree' "file tree browser tool
Plug 'sheerun/vim-polyglot' "syntax highlighting tool
Plug 'dense-analysis/ale' "navigation
Plug 'neoclide/coc.nvim' , { 'branch' : 'release' } "autocompletion
Plug 'junegunn/fzf.vim' "File searching and more see commands here: https://github.com/junegunn/fzf.vim
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'tpope/vim-fugitive' "vim git integration
Plug 'airblade/vim-gitgutter' "show git status on line in signcolumn
Plug 'morhetz/gruvbox' "theme gruvbox
Plug 'vim-autoformat/vim-autoformat' "autoformatting

call plug#end() "vim plug configuration completion

:map <C-e> :NERDTreeToggle<CR>
:map <C-n> :Files<CR>
:map <C-f> :Rg<CR>
:map <C-l> :NERDTreeFind<CR>
:map <C-Right> :tabn<CR>
:map <C-Left> :tabp<CR>
:map <C-o> :ALEGoToDefinition<CR>
:map <C-k> :Autoformat<CR>
:map <C-h> :CocCommand eslint.executeAutofix<CR>
:map <C-i> :ALEFindReferences<CR>
:map <C-p> :ALESymbolSearch<CR>
:map <C-j> :ALECodeAction<CR>
:map <C-[><C-M> :noh<CR>
:map <Q> :@q<CR>
" CTRL-^ BACK TO PREVIOUS FILE
" CTRL-w T OPEN CURRENT FILE IN A NEW TAB

:nnoremap <C-r> :%s/<C-r><C-w>/<C-r><C-w>/g "rename all occurences

"AUTOCOMPLETE
filetype plugin on
set omnifunc=syntaxcomplete#Complete

set expandtab
set shiftwidth=2
set softtabstop=2
set laststatus=2
set foldmethod=indent
set hlsearch
set number 
set signcolumn=yes

"DEFAULT THEME SET
set background=dark
colorscheme gruvbox

let g:coc_global_extensions = [ 'coc-tsserver', 'coc-json', 'coc-git', 'coc-angular', 'coc-css', 'coc-eslint', 'coc-html', 'coc-svg' ]

let g:ale_fixers = { 'javascript': ['eslint'] }

