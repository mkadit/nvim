
"___  ___ _   __  ___      _ _ _
"|  \/  || | / / / _ \    | (_) |
"| .  . || |/ / / /_\ \ __| |_| |_
"| |\/| ||    \ |  _  |/ _` | | __|
"| |  | || |\  \| | | | (_| | | |_
"\_|  |_/\_| \_/\_| |_/\__,_|_|\__|

" change leader key
let g:mapleader=" "

""""""""""""""""""""""""""""""""""""""""""""""
" General Settings
""""""""""""""""""""""""""""""""""""""""""""""
syntax enable
filetype plugin indent on
if has('termguicolors')
  set termguicolors
  " hi LineNr ctermbg=NONE guibg=NONE
endif

colorscheme sonokai
set nocompatible
set t_ut=
set ttyfast
set lazyredraw
set noerrorbells
set visualbell
set t_vb=
set laststatus=2
set nocursorline
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=300
set shortmess+=c
set signcolumn=yes
set encoding=utf-8
set hidden
set clipboard+=unnamedplus
set splitbelow splitright

" set defautl tabs to have 4 spaces
set sw=4 ts=4 sts=4 expandtab smarttab autoindent
" show the matching part of the pair for [] {} and ()
set showmatch
"set colorcolumn=80

" Set the minimal number of lines under the cursor
set scrolloff=2

" Set so vim search (/ or ?) be case insensitive
set ignorecase smartcase

" Set hybrd line number
set number relativenumber

" Enable autocomplete
set wildmenu
set wildmode=longest:full,full

" Set new split below or right
set splitbelow splitright

" ignore autocomplete *.class files
set wildignore=*.class

" navigate with mouse
set mouse=a

" show special characters
set list
set listchars=tab:›\ ,nbsp:␣,trail:•,extends:»,precedes:«,eol:↲
set fillchars+=vert:│

" highlight all search matches
set hlsearch
set incsearch

" incremental replace
set inccommand=nosplit

" Show tab bar
set showtabline=2

set noshowmode
" tell vim where to put swap files
set dir=~/.swapdir
set directory^=$HOME/.vim/swap//
set backupdir=/tmp//
set directory=/tmp//
set undodir=/tmp//
" set spellfile=~/.config/nvim/spell/en.utf-8.add
"
" set completeopt=menuone,noselect
" Set completeopt to have a better completion experience
set completeopt=menuone,noselect


""""""""""""""""""""""""""""""""""""""""""""""
" System Mapping
""""""""""""""""""""""""""""""""""""""""""""""
" change indent in visual mode
vnoremap > >gv
vnoremap < <gv

" resize splits with arrow keys
noremap <C-A-Left>	:vertical:resize -1<CR>
noremap <C-A-Down>	:resize +1<CR>
noremap <C-A-Up>	:resize -1<CR>
noremap <C-A-Right>	:vertical:resize +1<CR>

" Close buffer
nnoremap <Leader>bd :bd<CR>

" reload vimrc
nnoremap <Leader>rr :so $MYVIMRC<CR>
" Load Config file
nnoremap <Leader>re :e $MYVIMRC<CR>

" hide search results
map <Esc><Esc> :nohlsearch<CR>


" Buffers and Tabs
nnoremap <C-A-j> :bprevious<CR>
nnoremap <C-A-k> :bnext<CR>
" nnoremap <C-n> :bprevious<CR>
" nnoremap <C-m> :bnext<CR>
nnoremap <C-A-h> :tabprevious<CR>
nnoremap <C-A-l> :tabnext<CR>
nnoremap <silent> <A-left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <A-right> :execute 'silent! tabmove ' . (tabpagenr()+1)<CR>
nmap <leader>ed :setlocal spell! spelllang=en_gb complete+=kspell<CR>
nmap <leader>ei :setlocal spell! spelllang=id_id complete+=kspell<CR>

""""""""""""""""""""""""""""""""""""""""""""""
" Configs
""""""""""""""""""""""""""""""""""""""""""""""

augroup autoSaveFolds
  autocmd!
  autocmd BufWinLeave * silent! mkview
  autocmd BufWinEnter * silent! loadview
augroup END

augroup goodbye_netrw
  au!
  autocmd VimEnter * silent! au! FileExplorer *
augroup END

inoremap <C-v> <ESC>"*p
vnoremap <C-c> "+y
vnoremap <C-d> "+d

