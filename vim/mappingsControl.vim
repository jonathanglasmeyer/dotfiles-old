" imap <C-c>  <plug>NERDCommenterInsert

nnoremap <C-l> :BufSurfForward<cr>

" insert mode easy paste
inoremap <C-p> <c-o>:set paste<cr><C-R>*<c-o>:set nopaste<cr>
":r
vnoremap p "0p

" insert empty lines
nnoremap <M-u> :BufSurfBack<cr>
nnoremap <M-p> :BufSurfForward<cr>
" nnoremap <M-e> m`O<Esc>``
" nnoremap <M-n> m`o<Esc>``

nnoremap <silent> <M-1> :silent exec '!tmux select-window -t 1'<cr>
nnoremap <silent> <M-2> :silent exec '!tmux select-window -t 2'<cr>
nnoremap <silent> <M-3> :silent exec '!tmux select-window -t 3'<cr>
nnoremap <silent> <M-4> :silent exec '!tmux select-window -t 4'<cr>
nnoremap <silent> <M-5> :silent exec '!tmux select-window -t 5'<cr>


" vnoremap <C-c> "*y
" nnoremap <C-v> "*p
vnoremap <C-v> "+p
vnoremap <C-c> "+y
inoremap <C-v> <c-o>:set paste<cr><C-R>+<c-o>:set nopaste<cr>
