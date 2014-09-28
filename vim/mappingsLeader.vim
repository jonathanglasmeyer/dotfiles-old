nnoremap <silent> <leader>! :e index.html<cr>
nnoremap <silent> <leader>@ :e scripts/app.js<cr>
nnoremap <silent> <leader># :tabn 3<cr> 
nnoremap <silent> <leader>$ :tabn 4<cr> 
nnoremap <silent> <leader>% :tabn 5<cr> 

" left ---------------------------------------------------------------------
nnoremap <silent> <leader>q :wqall!<cr>
nnoremap <silent> <leader>Q :Restart!<CR>
nnoremap <silent> <leader>R :CtrlPCurWD<cr>
nnoremap <silent> <leader>D :call CtrlPMRURelative()<cr>
nnoremap <silent> <leader>d :call CtrlPMRUAbsolute()<cr>
nnoremap <silent> <leader>r :CtrlP<cr>
nnoremap <silent> <leader>R :CtrlPCurFile<cr>
nnoremap <silent> <leader>bv :CtrlP ~/.vim/bundle<cr>
nnoremap <silent> <leader>bd :CtrlPDir ~/dev<cr>
"-----------------------------------------------------------------------------
nnoremap <silent> <leader>a :ZealCurrentWord<cr>
nnoremap <leader>A :Zeal<space>
nnoremap <leader>s :w!<CR>
nnoremap <silent> <leader>S :silent exec '!tmux send-keys -t $(basename `pwd`):2 C-u "$(cat .run2)" Enter'<cr>
nnoremap <Leader>ha <Plug>GitGutterStageHunk
nnoremap <Leader>hu <Plug>GitGutterRevertHunk
nnoremap <Leader>hv <Plug>GitGutterPreviewHunk
" nnoremap <leader>t :CtrlPTag<cr>
nnoremap <leader>t :Tabularize<cr>
nnoremap <leader>T :TabularizeWithChar \<cr>
nnoremap <leader>gw :Gwrite<cr>
nnoremap <leader>gb :Gblame<cr>
nnoremap <silent> <leader>gco :Git checkout<space>
nnoremap <silent> <leader>gcc :Gcommit<cr>
nnoremap <silent> <leader>gC :silent Git add --all<bar>Gcommit<cr>
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
nnoremap <silent> <leader>gl :Gitv<cr>
nnoremap <leader>ge :Gedit<cr>
nnoremap <silent> <leader>gl :Gitv<cr>
nnoremap <silent> <leader>gL :Gitv!<cr>
"-----------------------------------------------------------------------------
"z
noremap <silent> <leader>x :close<cr> 
noremap <silent> <leader>X :only<cr> 
nnoremap <leader>m :verbose map<space>
nnoremap <leader>m :map <space
nnoremap <silent> <leader>c :CtrlP ~/.dotfiles<cr>
nnoremap <leader>C :AgConfig<space>
"v
"=============================================================================
"f
nnoremap <leader>F :%s/<c-r><c-/>/
"p
map <silent> <leader>u *Ncgn
nnoremap <silent> <leader>U :SubstituteCWord<cr>
vnoremap <silent> <leader>U :<C-u>SubstituteCWordVisual<cr>
" nnoremap <silent> <leader>U :UndoSubstitution<cr>
nnoremap <silent> <leader>p :CtrlPBookmarkDir<cr>
nnoremap <silent> <leader>P :e ~/.cache/ctrlp/bkd/cache.txt<cr>
" nnoremap <silent> <leader>P :e ~/dev<cr>
";
"----------------------------------------------------------------------------
nnoremap <silent> <leader>y :vs<cr> 
nnoremap <leader>n :CtrlP ~/txt/tech<cr>
nnoremap <leader>N :NewProject<space>
nnoremap <silent> <leader>e :Mx<cr>
nnoremap <silent> <leader>E :call RestartMX()<cr>
nnoremap <silent> <leader>o :b#<cr>
nnoremap <silent> <leader>i :CtrlPCmdPalette<cr>
" reindent whole file
nnoremap <silent> <leader>I mmgg=G`m
"----------------------------------------------------------------------------
nnoremap <silent> <leader>k :CtrlP app/models<cr>
nnoremap <silent> <leader>, :CtrlP app/controllers<cr>
nnoremap <silent> <leader>/ :nohlsearch<cr>

"----------------------------------------------------------------------------

