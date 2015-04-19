
"Source vundleInit
" call plug#begin('~/.vim/plugged')

Source setupFunctions
" Plugin gmarik/vundle

"Source filePlugins
Source colorschemes

" navigation -----------------------------------------------------------------
" Plugin justinmk/vim-sneak
Plugin kien/ctrlp.vim
Plugin JazzCore/ctrlp-cmatcher
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
Plugin PeterRincker/vim-argumentative
Plugin tpope/vim-repeat
Plugin tpope/vim-endwise
Plugin wellle/targets.vim
Plugin vim-scripts/ReplaceWithRegister

" additional functionality
Plugin ton/vim-bufsurf
Plugin tpope/vim-commentary
Plugin tpope/vim-eunuch
Plugin godlygeek/tabular
Plugin rking/ag.vim
Plugin tpope/vim-fugitive
Plugin tommcdo/vim-fugitive-blame-ext
Plugin Valloric/YouCompleteMe
Plugin jpalardy/vim-slime
Plugin junegunn/vim-easy-align
Plugin ervandew/supertab
Plugin SirVer/ultisnips
Plugin kien/rainbow_parentheses.vim
Plugin ivan-cukic/vim-ctrlp-switcher
Plugin kana/vim-textobj-user
Plugin bps/vim-textobj-python
Plugin vim-scripts/UnconditionalPaste
Plugin airblade/vim-gitgutter
Plugin jonathanewerner/vim-rsi
Plugin terryma/vim-expand-region
Plugin kana/vim-textobj-line
Plugin kana/vim-textobj-entire
Plugin tpope/vim-dispatch
" Plugin Yggdroot/indentLine
Plugin gregsexton/gitv
Plugin kana/vim-niceblock
Plugin thinca/vim-localrc
Plugin Raimondi/delimitMate

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
" Plugin othree/xml.vim
" Plugin digitaltoad/vim-jade
Plugin othree/html5.vim

" css ------------------------------------------------------------------------
Plugin hail2u/vim-css3-syntax
" Plugin gorodinskiy/vim-coloresque
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
" Plugin jonathanewerner/vim-javascript
" Plugin jelera/vim-javascript-syntax
" Plugin pangloss/vim-javascript
" Plugin othree/yajs.vim
" Plugin othree/javascript-libraries-syntax.vim

" requires pangloss/vim-javascript
" Plugin mxw/vim-jsx

" Plugin jsx/jsx.vim
" Plugin marijnh/tern_for_vim
" Plugin terryma/vim-multiple-cursors
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

" json
Plugin elzr/vim-json

" markdown
" Plugin plasticboy/vim-markdown
Plugin tpope/vim-markdown
" Plugin jtratner/vim-flavored-markdown

" =============================================================================
"Source vundleEnd
" call plug#end()

" VAMActivate github:rhysd/open-pdf.vim
" Plugin flazz/vim-colorschemes
Plugin chriskempson/vim-tomorrow-theme
Plugin chriskempson/base16-vim
Plugin blerins/flattown
Plugin jonathanewerner/gruvbox
" Plugin w0ng/vim-hybrid
colorscheme gruvbox
" colorscheme base16-eighties
" colorscheme hybrid
" colorscheme Tomorrow-Night-Eighties
" Plugin ajh17/Spacegray.vim
" colorscheme spacegray
" Plugin yosiat/oceanic-next-vim
Plugin jonathanewerner/semantic-highlight.vim
Plugin gabesoft/vim-ags
Plugin roman/golden-ratio
Plugin osyo-manga/vim-over
Plugin machakann/vim-textobj-delimited
