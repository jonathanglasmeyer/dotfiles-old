au FileType haskell nnoremap <buffer> <silent> <leader>w :GhciTest<cr>
au FileType haskell nnoremap <buffer> <F1> :HdevtoolsType<CR>
au FileType haskell nnoremap <buffer> <silent> <F2> :HdevtoolsClear<CR>
au FileType haskell nnoremap <buffer> <silent> <F3> :HdevtoolsInfo<CR>

au FileType markdown nnoremap <buffer> <silent> <leader>w :w\|!pandoc -o pdf/%:r.pdf %<CR>

au! FileType julia nnoremap <buffer> <silent> <leader>s :JuliaExec<cr>
" au! FileType dart nnoremap <buffer> <silent> <leader>s :DartExec<cr>
" au FileType julia nnoremap <buffer> <silent> <leader>s :JuliaExecSSH<cr>

au FileType racket nnoremap <silent> <leader>w :RacketExec<cr>

au FileType scala nnoremap <silent> <leader>w :ScalaCompile<cr>

" au FileType python nnoremap <buffer> <silent> <leader>w :PythonExec<cr>
au FileType python nnoremap <buffer> <silent> <leader>w :PythonExec2<cr>

" au FileType c nnoremap <buffer> <silent> <leader>s :CExec<cr>
" autocmd! BufRead ~/.vim/config/* nnoremap K :AgFromCurrentFile <C-R><C-W><CR>


" location based -------------------------------------------------------------
autocmd! BufRead Telegram.txt inoremap <buffer> <cr> <c-o>:SlimuxREPLSendLine<cr><c-o>dd
autocmd! BufWritePost ~/u/para/cluster/code/* exec "SlimeSend1 mpirun -np $processes juliampi " . expand('%p')
autocmd! BufWritePost ~/u/para/cluster/c/mpitut/*.c exec "SlimeSend1 mpicc hello.c ; sbatch mpi.slurm ; sleep 3 ; cat job.out"
autocmd! BufWritePost ~/u/para/cluster/c/mpitut/*.cc exec "SlimeSend1 mpicxx hello.cc ; sbatch mpi.slurm ; sleep 3 ; cat job.out"
" autocmd! BufWritePost *tex silent exec "!pdflatex " . expand('%:r') | redraw!

" sudo -----------------------------------------------------------------------
au! BufRead /etc/* nnoremap <buffer> <leader>s :w !sudo tee > /dev/null %<CR>
au BufRead /etc/netctl/* nnoremap <buffer> <leader>s :w !sudo tee > /dev/null %<CR>
au BufRead /sys/* nnoremap <buffer> <leader>s :w !sudo tee > /dev/null %<CR>

" vim ------------------------------------------------------------------------
" open/create config file from line
autocmd! BufRead ~/.dotfiles/vim/* map <buffer> <cr> 0w"ahiW:CtrlPCurFile<CR>plugins/<C-\>ra.vim<C-y>
autocmd! BufRead ~/.vim/config/* noremap <leader>g :AgFromCurrentFile<space> -
au! BufRead ~/.dotfiles/vim/plugins.vim nnoremap <buffer> <leader>s :w\|:PluginInstall<cr>
