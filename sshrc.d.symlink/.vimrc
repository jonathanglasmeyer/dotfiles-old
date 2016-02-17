" SETTINGS
set noswapfile
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set smarttab
set winfixheight
set autowriteall
set noea
set splitright
set nosplitbelow
set history=700
syntax enable
set scrolloff=4
set autoindent
set smartindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set undofile
set shortmess+=I
set hid
set lazyredraw
set magic
set viminfo^=%
set clipboard=unnamed
set t_Co=256
set foldopen=block,hor,mark,percent,quickfix,search,tag,undo,jump
set foldlevelstart=2
 set viewoptions=folds,cursor
" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
set gdefault
set incsearch
set showmatch
set matchtime=2
set ignorecase
set smartcase
filetype indent on
set autoindent
set wrap
set formatoptions=cq
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
set scrolloff=23

" new tab for help
cnoreabbrev <expr> h getcmdtype() == ":" && getcmdline() == 'h' ? 'tab help' : 'h'

inoremap <esc> <esc>l
nnoremap l o
nnoremap o l

vnoremap l o
vnoremap o l

nnoremap L O
nnoremap O L

vnoremap L O
vnoremap O L

nnoremap j n
nnoremap n gj

vnoremap j n
vnoremap n gj

nnoremap k e
noremap e gk

vnoremap k e
vnoremap e gk

nnoremap K E
nnoremap E 10k

nnoremap h y
onoremap h y
vnoremap h y
nnoremap H y$

nnoremap y h
vnoremap y h

" deactivate Q / ex mode
nnoremap Q <nop>

" change behaviour of goto first column
nnoremap 0 ^

" make yanking behave live c and d
nnoremap H y$
" easier searching
nnoremap ? ?\V
vnoremap ? ?\V
nnoremap / /\V
vnoremap / /\V

nnoremap , n
nnoremap ; N

" LEADER
let mapleader = "\<space>"
nnoremap <leader>s :w!<CR>
nnoremap <silent> <leader>q :wqall!<cr>
noremap <silent> <leader>x :close<cr>
nnoremap <silent> <leader>o :b#<cr>
