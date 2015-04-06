set nocompatible | filetype indent plugin on | syn on

nnoremap <silent> <leader>q :wqall!<cr>
nnoremap <silent> <leader>Q :Restart!<CR>
nnoremap <silent> <leader>R :CtrlPCurWD<cr>
nnoremap <silent> <leader>D :call CtrlPMRURelative()<cr>
nnoremap <silent> <leader>d :call CtrlPMRUAbsolute()<cr>
nnoremap <silent> <leader>r :CtrlP<cr>
nnoremap <silent> <leader>R :CtrlPCurFile<cr>
nnoremap <silent> <leader>w :call ToggleStyleFyle()<cr>
nnoremap <leader>s :w!<CR>

fun! MyOver()
  exec "OverCommandLine %s/" . expand("<cword>") . "/"
  set nohlsearch
endfun
nnoremap <silent> <leader>S :call MyOver()<cr>

nnoremap <leader>hs :GitGutterStageHunk<cr>
nnoremap <leader>hrr :GitGutterRevertHunk<cr>
nnoremap <leader>hp :GitGutterPreviewHunk<cr>
nnoremap <leader>` <C-w>z

nnoremap <leader>gb :Gblame<cr>
nnoremap <leader>gr :Gread<cr>
nnoremap <leader>gd :Gdiff<cr>

noremap <silent> <leader>x :close<cr>
nnoremap <leader>m :Move <C-r>%
nnoremap <silent> <leader>c :CtrlP ~/.dotfiles<cr>

nnoremap <leader>p :Quick<space>

nnoremap <silent> <leader>y :vs<cr>
nnoremap <leader>n :CtrlP ~/txt/tech<cr>
nnoremap <silent> <leader>E :call RestartMX()<cr>
nnoremap <silent> <leader>o :b#<cr>

" reindent whole file
nnoremap <silent> <leader>> mmgg=G`m


