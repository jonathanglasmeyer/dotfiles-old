nnoremap <silent> <leader>! :e index.html<cr>
nnoremap <silent> <leader>@ :e scripts/app.js<cr>
nnoremap <silent> <leader># :tabn 3<cr> 
nnoremap <silent> <leader>$ :tabn 4<cr> 
nnoremap <silent> <leader>% :tabn 5<cr> 

" left ---------------------------------------------------------------------
nnoremap <silent> <leader>q :wqall!<cr>
nnoremap <leader>Q :Restart!<CR>
nnoremap <leader>R :CtrlPCurWD<cr>
nnoremap <leader>d :CtrlPMRUFiles<cr>
nnoremap <leader>r :CtrlP<cr>
nnoremap <leader>R :CtrlPCurFile<cr>
nnoremap <leader>b :CtrlPBookmarkDir<cr>
nnoremap <leader>B :CtrlPBookmarkDirAdd<cr>
"-----------------------------------------------------------------------------
nnoremap <silent> <leader>a :ZealCurrentWord<cr>
nnoremap <leader>A :Zeal<space>
nnoremap <leader>s :w!<CR>
nnoremap <leader>S :call CommitHunk()<cr>
nnoremap <Leader>ha <Plug>GitGutterStageHunk
nnoremap <Leader>hu <Plug>GitGutterRevertHunk
nnoremap <Leader>hv <Plug>GitGutterPreviewHunk
nnoremap <leader>t :CtrlPTag<cr>
nnoremap <leader>gw :Gwrite<cr>
nnoremap <leader>gb :Gblame<cr>
nnoremap <leader>gc :Git checkout<space>
nnoremap <leader>gr :Gread<cr>
" git stats, how often changed etc
nnoremap <silent> <leader>gS :exec "!git churn --since='6 months ago' \| tail"<cr>
nnoremap <leader>gm :Gmove<space>
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>gd :Gdiff<cr>
" git [p]ickaxe = search through history (not only commit messages)
nnoremap <leader>gp :Git log -S
nnoremap <leader>gP :Gpush<cr>
nnoremap <leader>gn :Git nb<space>
nnoremap <silent> <leader>gl :silent Glog<cr>
nnoremap <leader>ge :Gedit<cr>
nnoremap <silent> <leader>gl :Extradite<cr>
nnoremap <silent> <leader>gL :Git! log --oneline<cr>
"-----------------------------------------------------------------------------
"z
noremap <silent> <leader>x :close<cr> 
noremap <silent> <leader>X :only<cr> 
nnoremap <leader>m :verbose map<space>
nnoremap <leader>m :map <space
nnoremap <leader>c :CtrlP ~/.dotfiles<cr>
nnoremap <leader>C :AgConfig<space>
"v
"=============================================================================
"f
nnoremap <silent> <expr> <leader>f Highlighting()
"p
nnoremap <silent> <leader>u :SubstituteCWord<cr>
vnoremap <silent> <leader>u :<C-u>SubstituteCWordVisual<cr>
nnoremap <silent> <leader>U :UndoSubstitution<cr>
nnoremap <leader>p :%s/<c-r><c-/>/
";
"----------------------------------------------------------------------------
nnoremap <silent> <leader>y :vs<cr> 
nnoremap <leader>N :CtrlP ~/txt/tech<cr>
nnoremap <leader>E :TabularizeWithChar<space>
nnoremap <silent> <leader>o :b#<cr>
nnoremap <silent> <leader>i :CtrlPCmdPalette<cr>
" reindent whole file
nnoremap <silent> <leader>I mmgg=G`m
"----------------------------------------------------------------------------
nnoremap <silent> <leader>k :CtrlP app/models<cr>
nnoremap <silent> <leader>, :CtrlP app/controllers<cr>
nnoremap <silent> <leader>/ :nohlsearch<cr>

"----------------------------------------------------------------------------
nnoremap <leader>l :CtrlPLine %<cr>

