" PaPro ----------------------------------------------------------------------
autocmd! BufWritePost ~/u/para/cluster/code/* exec "SlimeSend1 mpirun -np $processes juliampi " . expand('%p')
autocmd! BufWritePost ~/u/para/cluster/c/mpitut/*.c exec "SlimeSend1 mpicc hello.c ; sbatch mpi.slurm ; sleep 3 ; cat job.out"
autocmd! BufWritePost ~/u/para/cluster/c/mpitut/*.cc exec "SlimeSend1 mpicxx hello.cc ; sbatch mpi.slurm ; sleep 3 ; cat job.out"


" Dart-Cmdline ---------------------------------------------------------------
" au! BufRead ~/dev/dart-analyzer-server/* nnoremap <buffer> <silent> <leader>s :call DartAnalyze()<cr>
" au! BufRead ~/dev/dart-gcal/*.dart nnoremap <buffer> <silent> <leader>s :call DartExecAnalyze()<cr>
au! BufRead ~/dev/dart-commandline/*.dart nnoremap <buffer> <silent> <leader>s :call DartExec()<cr>
au! BufRead ~/dev/dart-commandline/*.dart nnoremap <buffer> <silent> <leader>s :call DartExec()<cr>
" au! InsertLeave *dart :w<bar>SyntasticCheck<cr>
" au! InsertLeave *.dart echo "test" 

au! TextChanged *.dart exec "w\<bar>SyntasticCheck"
au! InsertLeave *.dart exec "w\<bar>SyntasticCheck"
" |TextChanged|		after a change was made to the text in Normal mode
" |TextChangedI|		after a change was made to the text in Insert mode


" haskell --------------------------------------------------------------------
fu! RunHaskell()
    " GhcModCheckAndLintAsync
    exec "!runghc %"
endfunction
au! BufWritePost ~/dev/haskell/fastandhard/*.hs call RunHaskell()


au! BufRead ~/.packages.md nnoremap <buffer> <silent> <F2> :!pacman -Qi <C-r><C-w><cr>
" au! BufWritePost ~/.packages.md exec "!sudo python2 ~/packages"
au! BufRead ~/.packages.md nnoremap <buffer> <F3> :Packer<space>


