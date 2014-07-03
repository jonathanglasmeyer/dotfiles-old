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

" nnoremap J N
nnoremap N J

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
nnoremap f t
nnoremap t f




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
nnoremap <Tab> :wincmd w<cr>

" select pasted --TODO doesn't really work?
" nnoremap gp `[v`]
" nnoremap p gp
" nnoremap gp "*p
" nnoremap gP "+p
nnoremap <bs> zm

" nnoremap <silent> <F11> :YRShow<CR>
 nnoremap <cr> za

" bind K to grep word under cursor
nnoremap <silent> K :silent AgMy<cr>

" bind \ (backward slash) to grep shortcut
" command! -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!


nnoremap <F12> :silent call FillLine( '-' )<cr>
nnoremap <F1> :tabe .<cr>
inoremap <F2> <c-o>:SaveToDic<cr>
nnoremap <F3> :RainbowParenthesesToggleAll<cr>
nnoremap <silent> <F4> :SyntasticCheck<cr>
nnoremap <F8> :TagbarToggle<cr>

nnoremap S :SubstituteCWord<cr>
