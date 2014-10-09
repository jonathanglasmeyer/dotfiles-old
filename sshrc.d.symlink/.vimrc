" SETTINGS
set noswapfile
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set smarttab
set winfixheight
set autowriteall
autocmd BufLeave,FocusLost * silent! wall
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

fun! EnsureVamIsOnDisk(plugin_root_dir)
  let vam_autoload_dir = a:plugin_root_dir.'/vim-addon-manager/autoload'
  if isdirectory(vam_autoload_dir)
    return 1
  else
    if 1 == confirm("Clone VAM into ".a:plugin_root_dir."?","&Y\n&N")
      " I'm sorry having to add this reminder. Eventually it'll pay off.
      call confirm("Remind yourself that most plugins ship with ".
                  \"documentation (README*, doc/*.txt). It is your ".
                  \"first source of knowledge. If you can't find ".
                  \"the info you're looking for in reasonable ".
                  \"time ask maintainers to improve documentation")
      call mkdir(a:plugin_root_dir, 'p')
      execute '!git clone --depth=1 git://github.com/MarcWeber/vim-addon-manager '.
                  \       shellescape(a:plugin_root_dir, 1).'/vim-addon-manager'
      exec 'helptags '.fnameescape(a:plugin_root_dir.'/vim-addon-manager/doc')
    endif
    return isdirectory(vam_autoload_dir)
  endif
endfun

fun! SetupVAM()
  let c = get(g:, 'vim_addon_manager', {})
  let g:vim_addon_manager = c
  let c.plugin_root_dir = expand('$HOME/.vim/vim-addons', 1)
  if !EnsureVamIsOnDisk(c.plugin_root_dir)
    echohl ErrorMsg | echomsg "No VAM found!" | echohl NONE
    return
  endif
  let &rtp.=(empty(&rtp)?'':',').c.plugin_root_dir.'/vim-addon-manager'

  call vam#ActivateAddons([], {'auto_install' : 0})
endfun

call SetupVAM()

function! Plugin(arg)
    silent exec "VAMActivate github:" . a:arg
endfunction
command! -nargs=1 Plugin call Plugin(<f-args>)

Plugin kien/ctrlp.vim
  let g:ctrlp_mruf_relative = 0
  let g:ctrlp_by_filename = 0
  let g:ctrlp_map = ''
  let g:ctrlp_prompt_mappings = {
  \ 'PrtSelectMove("j")':   ['<c-n>', '<down>'],
  \ 'PrtSelectMove("k")':   ['<c-e>', '<up>'],
  \ 'PrtHistory(-1)':       [''],
  \ 'PrtCurEnd()':          [''],
  \ 'ToggleRegex()':        [''],
  \ 'ToggleMRURelative()':  ['<F2>']
  \ }
  let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:10'
  set grepprg=ag\ --nogroup\ --nocolor\ --smart-case
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  let g:ctrlp_open_new_file = 'r'
  let g:ctrlp_use_caching = 0

Plugin vim-scripts/ReplaceWithRegister
Plugin ton/vim-bufsurf
Plugin tpope/vim-commentary
Plugin tpope/vim-eunuch
Plugin tpope/vim-rsi
Plugin kana/vim-textobj-user
Plugin terryma/vim-expand-region
Plugin kana/vim-textobj-line
Plugin kana/vim-textobj-entire
Plugin vim-scripts/UnconditionalPaste

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

" LEADER
let mapleader = "\<space>"
nnoremap <leader>s :w!<CR>
nnoremap <silent> <leader>q :wqall!<cr>
nnoremap <silent> <leader>r :CtrlP<cr>
nnoremap <silent> <leader>d :CtrlPMRUFiles<cr>
noremap <silent> <leader>x :close<cr>
nnoremap <silent> <leader>o :b#<cr>
