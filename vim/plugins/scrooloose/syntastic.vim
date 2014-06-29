let g:syntastic_check_on_open = 0
let g:syntastic_csslint_options = "--warnings=none"
let g:syntastic_html_validator_api='http://validator.nu/'

" autocmd BufNewFile,BufRead *.sbt set filetype=scala.sbt
" autocmd FileType scala.sbt setlocal syntax=scala
let g:syntastic_mode_map = { 'mode': 'active',
                               \ 'passive_filetypes': ['scala', 'java', 'latex'] }


