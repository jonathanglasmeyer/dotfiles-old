" imap <C-c>  <plug>NERDCommenterInsert

nnoremap <C-l> :BufSurfForward<cr>
" nnoremap <c-j> zj
" nnoremap <c-k> zk
let g:UltiSnipsExpandTrigger="<c-j>"

" insert mode easy paste 
inoremap <C-p> <c-o>:set paste<cr><C-R>*<c-o>:set nopaste<cr>
":r
vnoremap p "0p

" insert empty lines
nnoremap <M-y> :BufSurfBack<cr>
nnoremap <M-o> :BufSurfForward<cr>
nnoremap <M-e> m`O<Esc>``
nnoremap <M-n> m`o<Esc>``

" vnoremap <C-c> "*y
" nnoremap <C-v> "*p
vnoremap <C-v> "+p
vnoremap <C-c> "+y
inoremap <C-v> <c-o>:set paste<cr><C-R>+<c-o>:set nopaste<cr>

" nnoremap <M-1> 1gt
" nnoremap <M-2> 2gt
" nnoremap <M-3> 3gt
" nnoremap <M-4> 4gt
" nnoremap <M-5> 5gt
" nnoremap <M-6> 6gt
" nnoremap <M-7> 7gt

nnoremap <M-1> :e web/index.html<cr>
nnoremap <M-2> :e web/main.dart<cr>
" nnoremap <M-1> :buffer 1<cr>
" nnoremap <M-2> :buffer 2<cr>
" nnoremap <M-3> :buffer 3<cr>
" nnoremap <M-4> :buffer 4<cr>
" nnoremap <M-5> :buffer 5<cr>
" nnoremap <M-6> :buffer 6<cr>
" nnoremap <M-7> :buffer 7<cr>
" nnoremap <M-8> :buffer 8<cr>

imap <buffer> <M-o> \begin{
imap <buffer> <M-c> <Plug>LatexCloseCurEnv

" nnoremap <cr> zA:


