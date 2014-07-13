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


" au!     nnoremap <leader>N :NewProject<space>
Source fileTypeMappings
" au! FileType netrw nnoremap <buffer> gon :NP <C-r><C-f>
" au! FileType netrw nnoremap <buffer> gos :NP <C-r><C-f>



" custom filetypes

autocmd! BufRead *.dart set ft=dart
autocmd! BufRead *.hamlet set ft=hamlet
autocmd! BufRead *.haskell hi Conceal ctermfg=223 ctermbg=235 guifg=#ebdbb2 guibg=#282828

" autocmd! BufEnter ~/dev/* call RunMx()
" autocmd! BufRead *.dart set 

