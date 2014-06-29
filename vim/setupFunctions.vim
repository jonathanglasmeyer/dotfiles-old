function! Plug(arg)
    silent exec "Plugin '" . a:arg . "'"
    let l:f=expand('~/.dotfiles/vim/plugins/' . a:arg . ".vim")
    if filereadable(l:f)
       silent exec "source " . l:f
    endif
endfunction
command! -nargs=1 Plug call Plug(<f-args>) 






