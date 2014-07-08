function! Plug(arg)
    let l:f=expand('~/.dotfiles/vim/plugins/' . a:arg . ".vim")
    if filereadable(l:f)
       silent exec "source " . l:f
    endif
    silent exec "Plugin '" . a:arg . "'"
endfunction
command! -nargs=1 Plug call Plug(<f-args>) 

" function! PlugActuali




