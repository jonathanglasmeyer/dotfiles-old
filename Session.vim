let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/.dotfiles
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +38 vim/plugins.vim
badd +43 \[Vundle]\ Installer
badd +1 vim/plugins/bling/vim-airline.vim
badd +1 ~/.dotfiles
badd +1 vim/plugins/bling/vim-bufferline.vim
badd +12 vim/plugins/kien/ctrlp.vim.vim
badd +45 vim/mappings-control.vim
badd +130 i3/i3.symlink/config
badd +18 vim/gvimrc.symlink
badd +1 ~/.gtkrc-2.0
badd +1 vim/colorschemes.vim
badd +667 ~/.vim/bundle/gruvbox/colors/gruvbox.vim
badd +169 vim/settings.vim
badd +2 vim/plugins/mhinz/vim-startify.vim
argglobal
silent! argdel *
argadd ~/.dotfiles
edit vim/plugins.vim
set splitbelow splitright
set nosplitbelow
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 38 - ((37 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
38
normal! 02|
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOI
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
