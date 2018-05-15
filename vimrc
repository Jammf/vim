syntax enable
set termguicolors
set background=dark
colorscheme gruvbox

set tabstop=4			" number of visual spaces per TAB
set softtabstop=4		" number of spaces in tab when editing
set expandtab			" tabs are spaces
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

let mapleader=","       " leader is comma

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

set noshowmode          " hide default mode indicator
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup
set laststatus=2        " always show statusline
