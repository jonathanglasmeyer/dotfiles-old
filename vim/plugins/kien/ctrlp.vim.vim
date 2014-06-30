let g:ctrlp_prompt_mappings = {
\ 'PrtSelectMove("j")':   ['<c-n>', '<down>'],
\ 'PrtSelectMove("k")':   ['<c-e>', '<up>'],
\ 'PrtHistory(-1)':       [''],
\ 'PrtCurEnd()':          [''],
\ 'ToggleRegex()':        [''],
\ }
set grepprg=ag\ --nogroup\ --nocolor\ --smart-case
" Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
let g:ctrlp_open_new_file = 'r'
"never jump to existing buffer


                                                      " *'g:ctrlp_switch_buffer'*
" When opening a file, if it's already open in a window somewhere, CtrlP will try
" to jump to it instead of opening a new instance: >
  " let g:ctrlp_switch_buffer = 'Et'
" <
  " e - jump when <cr> is pressed, but only to windows in the current tab.
  " t - jump when <c-t> is pressed, but only to windows in another tab.
  " v - like "e", but jump when <c-v> is pressed.
  " h - like "e", but jump when <c-x> is pressed.
  " E, T, V, H - like "e", "t", "v", and "h", but jump to windows anywhere.
  " 0 or <empty> - disable this feature.
    let g:ctrlp_switch_buffer = ''

" ag is fast enough that CtrlP doesn't need to cache
let g:ctrlp_use_caching = 0
