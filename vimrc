" Use the following in the .vim directory to clone all submodules:
" git submodule update --init --recursive

syntax enable
set termguicolors
set background=dark
colorscheme gruvbox

set tabstop=4			" number of visual spaces per TAB
set softtabstop=4		" number of spaces in tab when editing
set expandtab			" tabs are spaces
set shiftwidth=4        " number of spaces that >> and << shift
set autoindent
set smartindent
set number				" show line numbers
set relativenumber      " use relative line numbers
set showcmd				" show command in bottom bar
set cursorline			" highlight cursor line
" set cursorcolumn        " highlight cursor column
filetype plugin indent on      " load filetype-specific indent files
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to
set showmatch           " highlight matching [{()}]
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " nested fold max
set foldmethod=indent   " fold based on indent level
set splitright          " new windows open to right
set scrolloff=5         " keep lines beyond cursor visible

let mapleader=","               " leader is comma
let g:netrw_dirhistmax = 0      " don't save netrw history

" disable arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" space open/closes folds
nnoremap <space> za

" jk leaves insert mode
inoremap jk <ESC>

set history=1000
set undolevels=1000                                                       
" set undodir=~/.vim/undo//
" set undofile

set colorcolumn=80

set ttimeoutlen=10      " time to wait for keycode, fixes ESC delay

set noshowmode          " hide default mode indicator, use airline instead

let g:ale_linters = {'python': ['pyls']}
let g:ale_fixers = {'python': ['yapf']}
" Enable completion where available.
let g:ale_completion_enabled = 1

let g:airline_powerline_fonts = 1
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#enabled = 1     " Enable the list of buffers
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'


" Load all plugins now.
" Plugins need to be added to runtimepath before helptags can be generated.
packloadall
" Load all of the helptags now, after plugins have been loaded.
" All messages and errors will be ignored.
silent! helptags ALL
