
"Source vundleInit
" call plug#begin('~/.vim/plugged')

Source setupFunctions
" Plugin gmarik/vundle

"Source filePlugins
Source colorschemes

" navigation -----------------------------------------------------------------
" Plugin justinmk/vim-sneak
Plugin kien/ctrlp.vim
Plugin fisadev/vim-ctrlp-cmdpalette

" Plugin dahu/VimFindsMe
" Plugin dahu/MarkMyWords

" make tabline prettier
Plugin mkitt/tabline.vim

" Plugin Shougo/unite.vim
" Plugin tsukkee/unite-help
" Plugin tsukkee/unite-tag

" tweaks
" Plugin vim-scripts/SearchHighlighting
Plugin osyo-manga/vim-over
Plugin PeterRincker/vim-argumentative
Plugin terryma/vim-multiple-cursors
Plugin tpope/vim-repeat
Plugin tpope/vim-endwise
Plugin wellle/targets.vim
Plugin vim-scripts/ReplaceWithRegister

" additional functionality
" Plugin airblade/vim-rooter
Plugin ton/vim-bufsurf
Plugin tpope/vim-commentary
Plugin tpope/vim-eunuch
" Plugin EasyGrep
Plugin godlygeek/tabular
" Plugin Raimondi/delimitMate
" Plugin jiangmiao/auto-pairs
Plugin rking/ag.vim
" Plugin tpope/vim-obsession
Plugin tpope/vim-fugitive
" Plugin idanarye/vim-merginal
Plugin tommcdo/vim-fugitive-blame-ext
" Plugin bling/vim-airline
" Plugin bling/vim-bufferline
" Plugin mhinz/vim-startify
" Plugin Shougo/neocomplete.vim
Plugin Valloric/YouCompleteMe
" Plugin Shougo/neosnippet
" Plugin honza/vim-snippets
" Plugin kikijump/tslime.vim
Plugin jpalardy/vim-slime
Plugin junegunn/vim-easy-align
" Plugin epeli/slimux
Plugin ervandew/supertab
Plugin SirVer/ultisnips
" Plugin honza/vim-snippets

Plugin kien/rainbow_parentheses.vim
" Plugin luochen1990/rainbow
" Plugin int3/vim-extradite
Plugin ivan-cukic/vim-ctrlp-switcher
" Plugin majutsushi/tagbar
Plugin kana/vim-textobj-user
Plugin bps/vim-textobj-python
Plugin vim-scripts/UnconditionalPaste
Plugin airblade/vim-gitgutter
" Plugin terryma/vim-smooth-scroll
" Plugin tpope/vim-vinegar
Plugin jonathanewerner/vim-rsi
" Plugin prendradjaja/vim-vertigo
Plugin terryma/vim-expand-region
Plugin kana/vim-textobj-line
Plugin kana/vim-textobj-entire
Plugin tpope/vim-dispatch
" Plugin wojtekmach/vim-rename
" Plugin chreekat/vim-paren-crosshairs
Plugin Yggdroot/indentLine
" Plugin nathanaelkane/vim-indent-guides
Plugin gregsexton/gitv

" Plugin junegunn/vim-oblique
Plugin kana/vim-niceblock
Plugin thinca/vim-localrc



" Plugin scrooloose/syntastic



" filetype -------------------------------------------------------------------
" haskell
" Plugin Shougo/vimproc
" Plugin eagletmt/ghcmod-vim
" Plugin eagletmt/neco-ghc
" Plugin dag/vim2hs
" haskell --------------------------------------------------------------------
Plugin pbrisbin/vim-syntax-shakespeare

" html -----------------------------------------------------------------------
Plugin mattn/emmet-vim
" Plugin indenthtml.vim
Plugin othree/xml.vim
Plugin digitaltoad/vim-jade
Plugin othree/html5.vim

" css ------------------------------------------------------------------------
Plugin hail2u/vim-css3-syntax
Plugin gorodinskiy/vim-coloresque
" Plugin chrisbra/Colorizer
" Plugin vim-pandoc/vim-pandoc

" scala ----------------------------------------------------------------------
" Plugin derekwyatt/vim-scala
" Plugin gre/play2vim
" Plugin mdreves/vim-scaladoc

" latex ----------------------------------------------------------------------
" Plugin LaTeX-Box-Team/LaTeX-Box

" python ----------------------------------------------------------------------
" Plugin davidhalter/jedi-vim

" julia ----------------------------------------------------------------------
" Plugin JuliaLang/julia-vim

" dart -----------------------------------------------------------------------
" Plugin dart-lang/dart-vim-plugin
" Plugin bartlomiejdanek/vim-dart

" angular --------------------------------------------------------------------
" Plugin matthewsimo/angular-vim-snippets
" Plugin burnettk/vim-angular

" jsx
" Plugin pangloss/vim-javascript
" Plugin jelera/vim-javascript-syntax
Plugin pangloss/vim-javascript
" Plugin othree/yajs.vim
" Plugin othree/javascript-libraries-syntax.vim
Plugin mxw/vim-jsx
" Plugin jsx/jsx.vim
" Plugin marijnh/tern_for_vim
" Plugin moll/vim-node
" Plugin ahayman/vim-nodejs-complete

" " closure
" Plugin guns/vim-clojure-static
" Plugin tpope/vim-leiningen
" Plugin tpope/vim-projectionist
" Plugin tpope/vim-fireplace
" Plugin guns/vim-sexp
" Plugin tpope/vim-sexp-mappings-for-regular-people
" Plugin tpope/vim-surround

" Plugin wavded/vim-stylus
" Plugin kchmck/vim-coffee-script
Plugin groenewege/vim-less


" c
" Plugin justinmk/vim-syntax-extra


" elm
" Plugin lambdatoast/elm.vim

" prolog
" Plugin adimit/prolog.vim

" markdown
" Plugin plasticboy/vim-markdown
Plugin tpope/vim-markdown
" Plugin jtratner/vim-flavored-markdown

" =============================================================================
"Source vundleEnd
" call plug#end()

" VAMActivate github:rhysd/open-pdf.vim
Plugin flazz/vim-colorschemes
Plugin chriskempson/vim-tomorrow-theme
Plugin chriskempson/base16-vim
Plugin blerins/flattown
Plugin w0ng/vim-hybrid
colorscheme gruvbox
" colorscheme base16-eighties
" colorscheme hybrid
" colorscheme Tomorrow-Night-Eighties
