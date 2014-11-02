inoremap <esc> <esc>l
" inoremap ) 0
" nnoremap 4 $
" nnoremap $ 4

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

" nnoremap J N
" nnoremap N J
" nnoremap J N

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

" nnoremap H Y
" nnoremap Y H

" nnoremap <left> <<
" nnoremap <right> >>
" vnoremap <left> <
" vnoremap <right> >
" nnoremap <up> m`O<Esc>``
" nnoremap <down> m`o<Esc>``
" inoremap <down> <esc>lm`yyp``ji


" onoremap f t
" onoremap t f
" nnoremap f t
" nnoremap t f




" not really sure what this is for
"nnoremap j gj
"nnoremap k gk

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
" NORMAL --------------------------------- {{{1
nnoremap <silent> <F4> :SyntasticToggleMode<CR>

" nnoremap ` gt

"move betw splits
" map <Tab> :wincmd w\|:vert res 84<cr>
nnoremap <silent> <Tab> :wincmd w<cr>

" select pasted --TODO doesn't really work?
" nnoremap gp `[v`]
" nnoremap p gp
" nnoremap gp "*p
" nnoremap gP "+p
nnoremap <bs> zm

" nnoremap <silent> <F11> :YRShow<CR>

" this doesn't work in quickfix mode
" nnoremap <cr> za

" Quickly select text you just pasted:
noremap gV `[v`]

" bind K to grep word under cursor
nnoremap <silent> K :silent AgMy<cr>
vnoremap <silent> K :<C-u>silent AgMyVisual<cr>

" bind \ (backward slash) to grep shortcut
" command! -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!



" nnoremap <F1> :e .run<cr>
nnoremap <silent> <F1> :silent exec '!2to3 % -w'<cr>
nnoremap <F2> :e .run2<cr>
nnoremap <F3> :e .local.vimrc<cr>

" inoremap <F2> <c-o>:SaveToDic<cr>
nnoremap <F4> :RainbowParenthesesToggleAll<cr>
" nnoremap <F4> :SyntasticCheck<cr>
nnoremap <F8> :TagbarToggle<cr>
nnoremap <F5> :source %<cr>
noremap <F6> :Invbg<CR>
nnoremap <F12> :silent call FillLine( '-' )<cr>

" show syntax highlighting under cursor
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

nnoremap <silent> god :e ~/dev<cr>
" c:nnoremap <silent> gop :Tmux


" select pasted
nnoremap <expr> `` '`[' . strpart(getregtype(), 0, 1) . '`]'

function! SaveQuickF(num)
  silent exec "!sed -i '/F " . a:num . "/d' .local.vimrc"
  silent exec "!echo F " . a:num . " ". expand("%:p") . " >> .local.vimrc"
  silent source .local.vimrc
endfunction
function! SaveQuickFChar(c)
  silent exec "!sed -i '/Fc " . a:c . "/d' .local.vimrc"
  silent exec "!echo Fc " . a:c . " " . expand("%:p") . " >> .local.vimrc"
  silent source .local.vimrc
endfunction

function! SaveQuickCmd(...)
  let cmd = join(a:000)
  silent exec "!sed -i '/QuickCmd/d' .local.vimrc"
  silent exec "!echo QuickCmd " . cmd . " >> .local.vimrc"
  silent source .local.vimrc
  silent call SendQuickCmd()
  echo ''
endfunction
command! -nargs=* -complete=shellcmd Quick call SaveQuickCmd(<f-args>)

nnoremap <silent> <leader>1 :call SaveQuickF(1)<cr>
nnoremap <silent> <leader>2 :call SaveQuickF(2)<cr>
nnoremap <silent> <leader>3 :call SaveQuickF(3)<cr>
nnoremap <silent> <leader>4 :call SaveQuickF(4)<cr>
nnoremap <silent> <leader>5 :call SaveQuickF(5)<cr>
nnoremap <silent> <leader>6 :call SaveQuickF(6)<cr>

nnoremap <silent> ,a :call SaveQuickFChar("a")<cr>
nnoremap <silent> ,b :call SaveQuickFChar("b")<cr>
nnoremap <silent> ,c :call SaveQuickFChar("c")<cr>
nnoremap <silent> ,d :call SaveQuickFChar("d")<cr>
nnoremap <silent> ,e :call SaveQuickFChar("e")<cr>
nnoremap <silent> ,f :call SaveQuickFChar("f")<cr>
nnoremap <silent> ,g :call SaveQuickFChar("g")<cr>
nnoremap <silent> ,h :call SaveQuickFChar("h")<cr>
nnoremap <silent> ,i :call SaveQuickFChar("i")<cr>
nnoremap <silent> ,j :call SaveQuickFChar("j")<cr>
nnoremap <silent> ,k :call SaveQuickFChar("k")<cr>
nnoremap <silent> ,l :call SaveQuickFChar("l")<cr>
nnoremap <silent> ,m :call SaveQuickFChar("m")<cr>
nnoremap <silent> ,n :call SaveQuickFChar("n")<cr>
nnoremap <silent> ,o :call SaveQuickFChar("o")<cr>
nnoremap <silent> ,p :call SaveQuickFChar("p")<cr>
nnoremap <silent> ,q :call SaveQuickFChar("q")<cr>
nnoremap <silent> ,r :call SaveQuickFChar("r")<cr>
nnoremap <silent> ,s :call SaveQuickFChar("s")<cr>
nnoremap <silent> ,t :call SaveQuickFChar("t")<cr>
nnoremap <silent> ,u :call SaveQuickFChar("u")<cr>
nnoremap <silent> ,v :call SaveQuickFChar("v")<cr>
nnoremap <silent> ,w :call SaveQuickFChar("w")<cr>
nnoremap <silent> ,x :call SaveQuickFChar("x")<cr>
nnoremap <silent> ,y :call SaveQuickFChar("y")<cr>
nnoremap <silent> ,z :call SaveQuickFChar("z")<cr>

nnoremap <silent> ,A :call SaveQuickFChar("A")<cr>
nnoremap <silent> ,B :call SaveQuickFChar("B")<cr>
nnoremap <silent> ,C :call SaveQuickFChar("C")<cr>
nnoremap <silent> ,D :call SaveQuickFChar("D")<cr>
nnoremap <silent> ,E :call SaveQuickFChar("E")<cr>
nnoremap <silent> ,F :call SaveQuickFChar("F")<cr>
nnoremap <silent> ,G :call SaveQuickFChar("G")<cr>
nnoremap <silent> ,H :call SaveQuickFChar("H")<cr>
nnoremap <silent> ,I :call SaveQuickFChar("I")<cr>
nnoremap <silent> ,J :call SaveQuickFChar("J")<cr>
nnoremap <silent> ,K :call SaveQuickFChar("K")<cr>
nnoremap <silent> ,L :call SaveQuickFChar("L")<cr>
nnoremap <silent> ,M :call SaveQuickFChar("M")<cr>
nnoremap <silent> ,N :call SaveQuickFChar("N")<cr>
nnoremap <silent> ,O :call SaveQuickFChar("O")<cr>
nnoremap <silent> ,P :call SaveQuickFChar("P")<cr>
nnoremap <silent> ,Q :call SaveQuickFChar("Q")<cr>
nnoremap <silent> ,R :call SaveQuickFChar("R")<cr>
nnoremap <silent> ,S :call SaveQuickFChar("S")<cr>
nnoremap <silent> ,T :call SaveQuickFChar("T")<cr>
nnoremap <silent> ,U :call SaveQuickFChar("U")<cr>
nnoremap <silent> ,V :call SaveQuickFChar("V")<cr>
nnoremap <silent> ,W :call SaveQuickFChar("W")<cr>
nnoremap <silent> ,X :call SaveQuickFChar("X")<cr>
nnoremap <silent> ,Y :call SaveQuickFChar("Y")<cr>
nnoremap <silent> ,Z :call SaveQuickFChar("Z")<cr>

