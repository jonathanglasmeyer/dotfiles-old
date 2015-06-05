set nocompatible | filetype indent plugin on | syn on

nnoremap <silent> <leader>q :wqall!<cr>
nnoremap <silent> <leader>Q :Restart!<CR>
nnoremap <silent> <leader>R :CtrlPCurWD<cr>
nnoremap <silent> <leader>D :call CtrlPMRURelative()<cr>
nnoremap <silent> <leader>d :call CtrlPMRUAbsolute()<cr>
nnoremap <silent> <leader>r :CtrlP<cr>
nnoremap <silent> <leader>R :CtrlPCurFile<cr>
" nnoremap <silent> <leader>w :call ToggleStyleFyle()<cr>
nnoremap <silent> <leader>w :CtrlP ~/veloyo<cr>
" nnoremap <leader>a :r! css-to-radium --input %<cr>
function! Foo()
  w
  source %
  call Reddit()
endfunction
" nnoremap <leader>s :call Foo()<cr>
nnoremap <leader>s :w!<CR>

nnoremap <leader>S :Ags<space>

nnoremap <leader>hs :GitGutterStageHunk<cr>
nnoremap <leader>hrr :GitGutterRevertHunk<cr>
nnoremap <leader>hp :GitGutterPreviewHunk<cr>
nnoremap <leader>` <C-w>z

" nnoremap <leader>tr :TernRename<cr>
" nnoremap <leader>t :silent !tmux send-keys C-p C-m<cr>
nnoremap <leader>t :silent call SendQuickCmd()<cr>

" nnoremap <leader>T :nnoremap <Char-0x3c>leader>t :silent !tmux send-keys C-u<space>
nnoremap <leader>T :Quick<space>

nnoremap <leader>gb :Gblame<cr>
nnoremap <leader>gr :Gread<cr>
nnoremap <leader>gd :Gdiff<cr>

noremap <silent> <leader>x :close<cr>
noremap <leader>m :Move <C-r>%
nnoremap <silent> <leader>c :CtrlP ~/.dotfiles<cr>

function! MultiCommit()
  silent !tmux send-keys C-u multi-commit C-m
  silent !/home/jwerner/.dotfiles/bin/runtermvim
endfunction

function! JavascriptFunctionOperator()
  silent ?\v\n\s*\w+\(.*\)\s\{
  normal n$V%
endfunction
vnoremap af :call JavascriptFunctionOperator()<cr>
omap af :normal vaf<CR>

nnoremap <silent> <leader>C :call MultiCommit()<cr>

nnoremap <leader>u *Nciw

fun! MyOver()
  exec "OverCommandLine %s/" . expand("<cword>") . "/"
endfun
nnoremap <leader>U :OverCommandLine %s/\v<cr>

nnoremap <silent> <leader>y :vs<cr>
nnoremap <leader>n :CtrlP ~/txt/tech<cr>
" nnoremap <silent> <leader>E :call RestartMX()<cr>
nnoremap <silent> <leader>o :b#<cr>

  " reindent whole file
nnoremap <silent> <leader>> mmgg=G`m


