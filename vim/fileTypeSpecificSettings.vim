" settings -------------------------------------------------------------------
au! FileType python set iskeyword -=.
au! FileType html set shiftwidth=2
au! FileType html set tabstop=2
au! FileType scala setlocal omnifunc=syntaxcomplete#Complete
au! FileType lisp setlocal ft=julia
" au! FileType plaintex RainbowParenthesesLoadBraces

" au FileType html set equalprg=tidy\ -quiet\ --show-errors\ 0
au! FileType scheme set ft=racket
au! FileType modula2 set ft=markdown
au! FileType tex set ft=plaintex
au! FileType c set commentstring=//\ %s

au! FileType markdown set shiftwidth=4
au! FileType markdown set tabstop=4

" save hooks -----------------------------------------------------------------
au! TextChanged  *tex silent w
au! InsertLeave *tex silent w
au! TextChanged  *styl silent w
au! InsertLeave *styl silent w
" au! TextChanged  *jade silent w
" au! InsertLeave *jade silent w

" hack for auto refresh to work ?
au! BufWritePost *jade silent w

" source files ---------------------------------------------------------------
au! BufWritePost ~/.aliases silent !source %
au! BufWritePost ~/.Xresources silent !xrdb %
au! BufWritePost ~/.dotfiles/vim/* source %
au! BufWritePost imap-cmds.vim source %
au! BufWritePost arpeggio.vim source %


" au! BufWritePost *.py silent !source %
" au!     nnoremap <leader>N :NewProject<space>
Source fileTypeMappings
" au! FileType netrw nnoremap <buffer> gon :NP <C-r><C-f>
" au! FileType netrw nnoremap <buffer> gos :NP <C-r><C-f>


autocmd! BufWritePost *.vimrc source %
autocmd! BufWritePost *vimrc source ~/.dotfiles/vim/mappingsNormal.vim

" custom filetypes


autocmd! BufRead *.dart set ft=dart
" autocmd! BufRead *.elm set ft=haskell
autocmd! BufRead *.hamlet set ft=hamlet
autocmd! BufRead *.jade set ft=jade
autocmd! BufRead *.es6 set ft=javascript
autocmd! BufRead *.pl set ft=prolog
autocmd! BufRead *.haskell hi Conceal ctermfg=223 ctermbg=235 guifg=#ebdbb2 guibg=#282828

" au BufRead *.pdf sil exe "!xdg-open " . shellescape(expand("%:p")) . " &" | bd | let &ft=&ft | redraw!
function! Foo()
  source .local.vimrc
  call RunMx()
endfunction
autocmd! BufEnter ~/dev/* call Foo()
autocmd! BufEnter ~/dev/* call Foo()

" C-l : clear screen
" au! BufWritePost ~/dev/* silent exec '!tmux send-keys -t $(basename `pwd`):2 C-u "$(cat .run)" Enter'

" au! BufRead ~/dev/* silent nnoremap '!tmux send-keys -t $(basename `pwd`):2 C-u "$(cat .run)" Enter'

