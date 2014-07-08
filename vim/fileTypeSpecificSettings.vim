" settings -------------------------------------------------------------------
au! FileType html set shiftwidth=2
au! FileType html set tabstop=2
au! FileType scala setlocal omnifunc=syntaxcomplete#Complete
au! FileType lisp setlocal ft=julia
" au! FileType plaintex RainbowParenthesesLoadBraces

" au FileType html set equalprg=tidy\ -quiet\ --show-errors\ 0
au! FileType scheme set ft=racket
au! FileType modula2 set ft=markdown
au! FileType tex set ft=plaintex

" save hooks -----------------------------------------------------------------
au! TextChanged  *tex silent w
au! InsertLeave *tex silent w

" source files ---------------------------------------------------------------
au! BufWritePost ~/.aliases silent !source %
au! BufWritePost ~/.Xresources silent !xrdb %
au! BufWritePost ~/.dotfiles/vim/* source %
au! BufWritePost imap-cmds.vim source %
au! BufWritePost arpeggio.vim source %


Source fileTypeMappings


" custom filetypes

autocmd! BufRead *.dart set ft=dart
" autocmd! BufEnter * call RunMx()
" autocmd! BufRead *.dart set 

