function! LoadPluginSettingsFile(namePlugin)
    let l:f=expand('~/.dotfiles/vim/plugins/' . a:namePlugin . ".vim")
    if filereadable(l:f)
       silent exec "source " . l:f
    endif
endfunction


function! Plugin(arg)
    call LoadPluginSettingsFile(a:arg)
    silent exec "Plug '" . a:arg . "'"
endfunction
command! -nargs=1 Plugin call Plugin(<f-args>) 


function! PluginFT(name, ft)
    LoadPluginSettingsFile(arg)
    silent exec "Plug '" . a:arg . "', {'on': '" . a:ft . "' }"
endfunction
command! -nargs=1 Plugin call Plugin(<f-args>) 
