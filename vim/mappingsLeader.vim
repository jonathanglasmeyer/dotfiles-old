nnoremap <silent> <leader>! :e index.html<cr>
nnoremap <silent> <leader>@ :e scripts/app.js<cr>
nnoremap <silent> <leader># :tabn 3<cr> 
nnoremap <silent> <leader>$ :tabn 4<cr> 
nnoremap <silent> <leader>% :tabn 5<cr> 

" left ---------------------------------------------------------------------
nnoremap <silent> <leader>q :wqall!<cr>
nnoremap <silent> <leader>Q :Restart!<CR>
nnoremap <silent> <leader>R :CtrlPCurWD<cr>
nnoremap <silent> <leader>d :CtrlPMRUFiles<cr>
nnoremap <silent> <leader>r :CtrlP<cr>
nnoremap <silent> <leader>R :CtrlPCurFile<cr>
nnoremap <silent> <leader>bv :CtrlP ~/.vim/bundle<cr>
nnoremap <silent> <leader>B :CtrlPBookmarkDirAdd<cr>
"-----------------------------------------------------------------------------
nnoremap <silent> <leader>a :ZealCurrentWord<cr>
nnoremap <leader>A :Zeal<space>
nnoremap <leader>s :w!<CR>
nnoremap <leader>S :Gwrite<bar>Gcommit<cr>i
nnoremap <Leader>ha <Plug>GitGutterStageHunk
nnoremap <Leader>hu <Plug>GitGutterRevertHunk
nnoremap <Leader>hv <Plug>GitGutterPreviewHunk
nnoremap <leader>t :CtrlPTag<cr>
nnoremap <leader>gw :Gwrite<cr>
nnoremap <leader>gb :Gblame<cr>
nnoremap <silent> <leader>gco :Git checkout<space>
nnoremap <silent> <leader>gcc :Gcommit<cr>
nnoremap <silent> <leader>gca :Gcommit --amend<cr>
nnoremap <silent> <leader>gcA :Gcommit --amend --reuse-message=HEAD<cr>
nnoremap <leader>gr :Gread<cr>
" git stats, how often changed etc
nnoremap <silent> <leader>gS :exec "!git churn --since='6 months ago' \| tail"<cr>
nnoremap <leader>gm :Gmove<space>
nnoremap <silent> <leader>gM :call MergeFeatureBranch()<cr>
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>gd :Gdiff<cr>
" git [p]ickaxe = search through history (not only commit messages)
nnoremap <leader>gP :Git log -S
nnoremap <leader>gp :Gpush<cr>
" nnoremap <leader>gnf :Git nb feature<cr>
nnoremap  <leader>gn :Git nb<space>
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
nnoremap <leader>n :CtrlP ~/txt/tech<cr>
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

