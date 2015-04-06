" imap <C-c>  <plug>NERDCommenterInsert

nnoremap <C-l> :BufSurfForward<cr>

" insert mode easy paste
inoremap <C-p> <c-o>:set paste<cr><C-R>*<c-o>:set nopaste<cr>
":r
vnoremap p "0p

" insert empty lines
nnoremap <M-u> :BufSurfBack<cr>
nnoremap <M-p> :BufSurfForward<cr>
nnoremap <M-e> m`O<Esc>``
nnoremap <M-n> m`o<Esc>``

" vnoremap <C-c> "*y
" nnoremap <C-v> "*p
vnoremap <C-v> "+p
vnoremap <C-c> "+y
inoremap <C-v> <c-o>:set paste<cr><C-R>+<c-o>:set nopaste<cr>
