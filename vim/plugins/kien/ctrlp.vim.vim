let g:ctrlp_prompt_mappings = {
\ 'PrtSelectMove("j")':   ['<c-n>', '<down>'],
\ 'PrtSelectMove("k")':   ['<c-e>', '<up>'],
\ 'PrtHistory(-1)':       [''],
\ 'PrtCurEnd()':          [''],
\ 'ToggleRegex()':        [''],
\ }
set grepprg=ag\ --nogroup\ --nocolor\ --smart-case

" Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
let g:ctrlp_open_new_file = 'r'

" ag is fast enough that CtrlP doesn't need to cache
" let g:ctrlp_use_caching = 0
