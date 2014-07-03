" PaPro ----------------------------------------------------------------------
autocmd! BufWritePost ~/u/para/cluster/code/* exec "SlimeSend1 mpirun -np $processes juliampi " . expand('%p')
autocmd! BufWritePost ~/u/para/cluster/c/mpitut/*.c exec "SlimeSend1 mpicc hello.c ; sbatch mpi.slurm ; sleep 3 ; cat job.out"
autocmd! BufWritePost ~/u/para/cluster/c/mpitut/*.cc exec "SlimeSend1 mpicxx hello.cc ; sbatch mpi.slurm ; sleep 3 ; cat job.out"


" Dart-Cmdline ---------------------------------------------------------------
au! BufRead ~/dev/dart-commandline nnoremap <buffer> <silent> <leader>s :DartExec<cr>


