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
nnoremap <silent> <leader>S :silent Git add . \| :Gcommit<cr>
" nnoremap <leader>S :w !sudo tee > /dev/null %<CR>
nnoremap <leader>h :exec "!clear; valgrind ./" . expand('%:r')<cr>
nnoremap <leader>H :Unite help<cr>
" nnoremap <leader>t :SlimeSendParagraph<cr>
nnoremap <leader>t :CtrlPTag<cr>
" nnoremap <leader>r :Unite file_mru<cr>
" nnoremap <leader>r :CtrlPMRU<cr>
" nnoremap <leader>r :CtrlPMixed<cr>
" nnoremap <leader>d :Unite file_rec/async<cr>
" nnoremap <leader>g :Ag<SPACE>
" nnoremap <leader>g :Ag<SPACE>
nnoremap <leader>gw :Gwrite<cr>
nnoremap <leader>gb :Gblame<cr>
nnoremap <leader>gc :Git checkout<space>
nnoremap <leader>gr :Gread<cr>
nnoremap <leader>gm :Gmove<space>
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>gd :Gdiff<cr>
nnoremap <leader>gp :Git push<cr>
nnoremap <leader>gn :Git nb<space>
nnoremap <silent> <leader>gl :silent Glog<cr>
nnoremap <leader>ge :Gedit<cr>
nnoremap <silent> <leader>gl :Extradite<cr>
nnoremap <silent> <leader>gL :Git! log --oneline<cr>
"-----------------------------------------------------------------------------
"z
noremap <silent> <leader>x :close<cr> 
nnoremap <leader>m :Unite mapping<cr>
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



" nnoremap <silent> <leader>o :!xdg-open pdf/%:r.pdf<cr>
" nnoremap <leader>p !pandoc -o %:r.pdf % --latex-engine xelatex --number-sections<CR>
" nnoremap <leader>p :w\|!pandoc -o %:r.pdf %<CR>

" au FileType python nnoremap <buffer> <silent> <leader>r :PythonExec<cr>
" au FileType scala nnoremap <buffer> <silent> <leader>r :ScalaExec<cr>
" au FileType scala nnoremap <buffer> <silent> <leader> :7sp repl.scala<cr>
" au FileType julia nnoremap <buffer> <silent> <leader>r :7sp repl.jl<cr>


" nnoremap <leader>si :Unite neobundle/install<cr>
" nnoremap <leader>ss :Unite neobundle/search<cr>
" nnoremap <leader>sc :Unite change<cr>
" nnoremap <leader>sd :Unite directory<cr>
" nnoremap <leader>sg :Unite grep:. <cr>
" nnoremap <leader>sy :Unite history/yank<cr>
" nnoremap <leader>sl :Unite line<cr>
" nnoremap <leader>sM :Unite mapping<cr>
" nnoremap <leader>sH :UniteWithCursorWord help<cr>
" nnoremap <leader>S :%s//

" -- t --
" nnoremap <silent> <leader>r :w\|:!python %<cr>
" au FileType haskell nnoremap <buffer> <silent> <leader>t call QuickCheck()<cr>
" -- u --
" -- v --
" -- w --
" -- x --
" -- y --
" -- z --
" nnoremap <leader>k :call jedi#rename()<cr>
" CAPITAL LEADER --------------------------- {{{1

" let g:UltiSnipsListSnippets="<leader>S"

