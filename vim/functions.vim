" filename without extension: expand('%:r') 

function! SlimeSendParagraph()
   " SlimeSend1 '\n'
    exec "normal \<Plug>SlimeParagraphSend"
endfunction
command! SlimeSendParagraph call SlimeSendParagraph()

function! RacketExec()
    Write
    exec "SlimeSend1 racket " . expand('%p')
endfunction
command! RacketExec call RacketExec()

function! CExec(args)
    write
    exec "!clear; P=" . expand('%:r') . " make && ./" . expand('%:r') . " " . a:args
endfunction
command! CExec call CExec('')
command! -nargs=1 CExecArgs call CExec(<f-args>)


function! PythonExec2()
    write
    exec "SlimeSend1 %run " . expand('%p')
    " normal 0vWh
    " exec "normal \<Plug>SlimeRegionSend"
    " " normal vv
    " normal $
endfunction
command! PythonExec2 call PythonExec2()

function! LatexOpenPdf()
    write
    exec "!xdg-open " . expand('%:r') . ".pdf & "
endfunction
command! LatexOpenPdf call LatexOpenPdf()

function! JuliaExec()
    write
    exec 'SlimuxShellRun include(\"' . expand('%p') . '\")'
    " exec "SlimuxShellRun \\""

endfunction
command! JuliaExec call JuliaExec()

function! ScalaExec()
    write
    exec "SlimeSend1 :load " . expand('%p') 
    wincmd w
    SlimeSendParagraph
    wincmd w
    " normal 0vWh
    " exec "normal \<Plug>SlimeRegionSend"
    " " normal vv
    " normal $
endfunction
command! ScalaExec call ScalaExec()

function! ScalaCompile()
    write
    exec "SlimeSend1 :load " . expand('%p') 
endfunction
command! ScalaCompile call ScalaCompile()

function! GhciTest()
    write
    SlimeSend1 :r
    wincmd w
    SlimeSendParagraph
    wincmd w
endfunction
command! GhciTest call GhciTest()

function! QuickCheck()
    write
    exec "SlimeSend1 runhaskell " . expand('%p')
endfunction
command! QuickCheck call QuickCheck()
" -------------------------------------------------------------
" Setup for help files.
" -------------------------------------------------------------
"function! Setuphelp()
" " this helps make it easier to jump to tags while editing help files<leader>
" " since a number of tags contain a hyphen.
" " The "@" adds in all "alphabetic" characters<leader> including
" " accented characters beyond ASCII a-z and A-Z.
" setlocal iskeyword=@<leader>!-~,^*,^\|,^\",192-255
" endfunction
" command! -bar SetupHelp call SetupHelp()
let g:nmb = 0

function! AgFromCurrentFile(arg)
    silent exec "Ag " . a:arg expand('%:p:h')
endfunction
command! -nargs=1 AgFromCurrentFile call AgFromCurrentFile(<f-args>) 

function! AgConfig(arg)
    silent exec "Ag " . a:arg . " ~/.dotfiles/vim"
endfunction
command! -nargs=1 AgConfig call AgConfig(<f-args>) 

function! ReloadMaps()
  silent mapclear
  source ~/.vimrc
endfunction
command! ReloadMaps silent! call ReloadMaps()

command! SetWorkingDir silent lcd %:p:h

" fill rest of line with characters
function! FillLine( str )
    " set tw to the desired total length
    let tw = &textwidth
    if tw==0 | let tw = 80 | endif
    " strip trailing spaces first
    .s/[[:space:]]*$//
    " calculate total number of 'str's to insert
    let reps = (tw - col("$")) / len(a:str)
    " insert them, if there's room, removing trailing spaces (though forcing
    " there to be one)
    if reps > 0
        .s/$/\=(' '.repeat(a:str, reps))/
    endif
endfunction

function! SaveToDic()
    normal yhiw
    silent exec "!echo `xclip -o` >> ~/german.dic"
    normal A
    NeoCompleteDictionaryMakeCache
endfunction
command! SaveToDic call SaveToDic()

function! TabularizeWithChar(c)
    normal mmvip
    silent exec "Tabularize /" . a:c
    normal `m
    normal <esc>
endfunction
command! -nargs=1 TabularizeWithChar call TabularizeWithChar(<f-args>) 

function! DartExec()
    write
    exec '!dart ' . expand('%p')
endfunction
command! DartExec call DartExec()

function! Zeal(arg)
    silent exec 'silent !zeal-show '. &ft . ':' . a:arg
endfunction
command! -nargs=1 Zeal call Zeal(<f-args>) 

function! ZealCurrentWord()
    silent exec '!zeal-show ' . &ft . ':' . expand("<cword>")
endfunction
command! ZealCurrentWord call ZealCurrentWord() 

command! -nargs=0 -bar Qargs execute 'args ' . QuickfixFilenames()
function! QuickfixFilenames()
  " Building a hash ensures we get each buffer only once
  let buffer_numbers = {}
  for quickfix_item in getqflist()
    let buffer_numbers[quickfix_item['bufnr']] = bufname(quickfix_item['bufnr'])
  endfor
  return join(values(buffer_numbers))
endfunction

function! AgMy()
    Gcd
    let g:ag_qhandler="CtrlPQuickfix"
    silent exec "Ag! " . expand("<cword>")
endfunction
command! AgMy call AgMy()

function! s:get_visual_selection()
  " Why is this not a built-in Vim script function?!
  let [lnum1, col1] = getpos("'<")[1:2]
  let [lnum2, col2] = getpos("'>")[1:2]
  let lines = getline(lnum1, lnum2)
  let lines[-1] = lines[-1][: col2 - (&selection == 'inclusive' ? 1 : 2)]
  let lines[0] = lines[0][col1 - 1:]
  return join(lines, "\n")
endfunction

function! AgMyVisual()
    Gcd
    let g:ag_qhandler="CtrlPQuickfix"
    silent exec "Ag! " . s:get_visual_selection()
endfunction
command! AgMyVisual call AgMyVisual()


function! SubstituteCWord()
    normal mA
    Gcd
    let g:cw = expand("<cword>")
    let g:ag_qhandler=""
    silent exec "Ag! " . g:cw
    let g:replacement = input("Enter replacement: ", g:cw)
    exec "Qargs | argdo %s/" . g:cw . "/" . g:replacement . "/cI"
    normal `A
endfunction
command! SubstituteCWord call SubstituteCWord()

function! UndoSubstitution()
    normal mA
    let g:ag_qhandler=""
    silent exec "Ag! " . g:replacement
    silent exec "Qargs | argdo %s/" . g:replacement . "/" . g:cw . "/I"
    normal `A
endfunction
command! UndoSubstitution call UndoSubstitution()


function! SubstituteCWordVisual()
    normal mA
    Gcd
    let g:cw = s:get_visual_selection()
    let g:ag_qhandler=""
    silent exec "Ag! " . g:cw
    let g:replacement = input("Enter replacement: ", g:cw)
    exec "Qargs | argdo %s/" . g:cw . "/" . g:replacement . "/cI"
    normal `A
endfunction
command! SubstituteCWordVisual call SubstituteCWordVisual()


let g:highlighting = 0
function! Highlighting()
  if g:highlighting == 1 && @/ =~ '^\\<'.expand('<cword>').'\\>$'
    let g:highlighting = 0
    return ":silent nohlsearch\<CR>"
  endif
  let @/ = '\<'.expand('<cword>').'\>'
  let g:highlighting = 1
endfunction

function! CommitHunk()
    exec "normal \<Plug>GitGutterPreviewHunk"
    exec "normal \<Plug>GitGutterStageHunk"
    Gcommit
endfunction
