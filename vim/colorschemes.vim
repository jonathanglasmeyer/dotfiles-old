" Plug tomasr/molokai
" Plug sickill/vim-monokai
" Plug quanganhdo/grb256
" Plug xoria256.vim
" Plug Wombat
" Plug altercation/vim-colors-solarized

" colorscheme xoria256
" colorscheme grb256
Plug morhetz/gruvbox
colorscheme gruvbox
" set background=light 
if strftime("%H") < 12
  set background=light
else
  set background=dark
endif
