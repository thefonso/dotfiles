let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
imap <D-BS> 
imap <M-BS> 
imap <M-Down> }
inoremap <D-Down> <C-End>
imap <M-Up> {
inoremap <D-Up> <C-Home>
noremap! <M-Right> <C-Right>
noremap! <D-Right> <End>
noremap! <M-Left> <C-Left>
noremap! <D-Left> <Home>
inoremap <Plug>ClojureReplDownHistory. :call b:vimclojure_repl.downHistory()
inoremap <Plug>ClojureReplUpHistory. :call b:vimclojure_repl.upHistory()
inoremap <Plug>ClojureReplEvaluate. G$:call b:vimclojure_repl.enterHook()
inoremap <Plug>ClojureReplEnterHook. :call b:vimclojure_repl.enterHook()
inoremap <silent> <S-Tab> =BackwardsSnippet()
inoremap <C-Tab> 	
inoremap <Plug>(EmmetAnchorizeSummary) =emmet#anchorizeURL(1)
inoremap <Plug>(EmmetAnchorizeURL) =emmet#anchorizeURL(0)
inoremap <Plug>(EmmetRemoveTag) =emmet#removeTag()
inoremap <Plug>(EmmetSplitJoinTag) :call emmet#splitJoinTag()
inoremap <Plug>(EmmetToggleComment) =emmet#toggleComment()
inoremap <Plug>(EmmetImageSize) =emmet#imageSize()
inoremap <Plug>(EmmetMovePrev) :call emmet#moveNextPrev(1)
inoremap <Plug>(EmmetMoveNext) :call emmet#moveNextPrev(0)
inoremap <Plug>(EmmetBalanceTagOutward) :call emmet#balanceTag(-1)
inoremap <Plug>(EmmetBalanceTagInward) :call emmet#balanceTag(1)
inoremap <Plug>(EmmetExpandWord) =emmet#expandAbbr(1,"")
inoremap <Plug>(EmmetExpandAbbr) =emmet#expandAbbr(0,"")
inoremap <silent> <Plug>NERDCommenterInInsert  <BS>:call NERDComment(0, "insert")
nnoremap  h
snoremap <silent> 	 i<Right>=TriggerSnippet()
nnoremap <NL> j
nnoremap  k
nnoremap  l
nnoremap <silent>  :CtrlP
nmap o <Plug>ZoomWin
snoremap  b<BS>
vmap c <Plug>(EmmetCodePretty)
vmap m <Plug>(EmmetMergeLines)
nmap A <Plug>(EmmetAnchorizeSummary)
nmap a <Plug>(EmmetAnchorizeURL)
nmap k <Plug>(EmmetRemoveTag)
nmap j <Plug>(EmmetSplitJoinTag)
nmap / <Plug>(EmmetToggleComment)
nmap i <Plug>(EmmetImageSize)
nmap N <Plug>(EmmetMovePrev)
nmap n <Plug>(EmmetMoveNext)
vmap D <Plug>(EmmetBalanceTagOutward)
nmap D <Plug>(EmmetBalanceTagOutward)
vmap d <Plug>(EmmetBalanceTagInward)
nmap d <Plug>(EmmetBalanceTagInward)
nmap ; <Plug>(EmmetExpandWord)
vmap , <Plug>(EmmetExpandAbbr)
nmap , <Plug>(EmmetExpandAbbr)
nnoremap <silent>  :ZoomWin
nnoremap <silent>  :TComment
nnoremap <silent> 1 :TComment count=1
nnoremap <silent> 2 :TComment count=2
nnoremap <silent> 3 :TComment count=3
nnoremap <silent> 4 :TComment count=4
nnoremap <silent> 5 :TComment count=5
nnoremap <silent> 6 :TComment count=6
nnoremap <silent> 7 :TComment count=7
nnoremap <silent> 8 :TComment count=8
nnoremap <silent> 9 :TComment count=9
vnoremap <silent> 9 :TCommentMaybeInline count=9
onoremap <silent> 9 :TComment count=9
vnoremap <silent> 8 :TCommentMaybeInline count=8
onoremap <silent> 8 :TComment count=8
vnoremap <silent> 7 :TCommentMaybeInline count=7
onoremap <silent> 7 :TComment count=7
vnoremap <silent> 6 :TCommentMaybeInline count=6
onoremap <silent> 6 :TComment count=6
vnoremap <silent> 5 :TCommentMaybeInline count=5
onoremap <silent> 5 :TComment count=5
vnoremap <silent> 4 :TCommentMaybeInline count=4
onoremap <silent> 4 :TComment count=4
vnoremap <silent> 3 :TCommentMaybeInline count=3
onoremap <silent> 3 :TComment count=3
vnoremap <silent> 2 :TCommentMaybeInline count=2
onoremap <silent> 2 :TComment count=2
vnoremap <silent> 1 :TCommentMaybeInline count=1
onoremap <silent> 1 :TComment count=1
noremap ca :call tcomment#SetOption("as", input("Comment as: ", &filetype, "customlist,tcomment#Complete"))
noremap <silent> cc :call tcomment#SetOption("count", v:count1)
noremap s :TCommentAs =&ft
noremap n :TCommentAs =&ft
noremap a :TCommentAs 
noremap b :TCommentBlock
noremap <silent> i v:TCommentInline mode=I#
noremap <silent> r :TCommentRight
noremap   :TComment 
noremap <silent> p m`vip:TComment
vnoremap <silent>  :TCommentMaybeInline
onoremap <silent>  :TComment
snoremap % b<BS>%
snoremap ' b<BS>'
nnoremap ,e :python debugger_watch_input("eval")
nmap , \
vnoremap . :norm.
xmap S <Plug>VSurround
snoremap U b<BS>U
map Y y$
snoremap <silent> \__ :TComment
nnoremap <silent> \__ :TComment
map \fs :set invfu
snoremap \ b<BS>\
noremap \_s :TCommentAs =&ft
noremap \_n :TCommentAs =&ft
noremap \_a :TCommentAs 
noremap \_b :TCommentBlock
noremap <silent> \_r :TCommentRight
xnoremap <silent> \_i :TCommentInline
noremap \_  :TComment 
noremap <silent> \_p vip:TComment
xnoremap <silent> \__ :TCommentMaybeInline
onoremap <silent> \__ :TComment
map \dt :python debugger_command('step_out')
map \do :python debugger_command('step_over')
map \di :python debugger_command('step_into')
map \dr :python debugger_resize()
nmap \ca <Plug>NERDCommenterAltDelims
vmap \cA <Plug>NERDCommenterAppend
nmap \cA <Plug>NERDCommenterAppend
vmap \c$ <Plug>NERDCommenterToEOL
nmap \c$ <Plug>NERDCommenterToEOL
vmap \cu <Plug>NERDCommenterUncomment
nmap \cu <Plug>NERDCommenterUncomment
vmap \cn <Plug>NERDCommenterNest
nmap \cn <Plug>NERDCommenterNest
vmap \cb <Plug>NERDCommenterAlignBoth
nmap \cb <Plug>NERDCommenterAlignBoth
vmap \cl <Plug>NERDCommenterAlignLeft
nmap \cl <Plug>NERDCommenterAlignLeft
vmap \cy <Plug>NERDCommenterYank
nmap \cy <Plug>NERDCommenterYank
vmap \ci <Plug>NERDCommenterInvert
nmap \ci <Plug>NERDCommenterInvert
vmap \cs <Plug>NERDCommenterSexy
nmap \cs <Plug>NERDCommenterSexy
vmap \cm <Plug>NERDCommenterMinimal
nmap \cm <Plug>NERDCommenterMinimal
vmap \c  <Plug>NERDCommenterToggle
nmap \c  <Plug>NERDCommenterToggle
vmap \cc <Plug>NERDCommenterComment
nmap \cc <Plug>NERDCommenterComment
nmap \A :tab split
nmap \a :tab split
nnoremap <silent> \cw :Trim
map <silent> \nf :NERDTreeFind
map <silent> \nr :NERDTree
map <silent> \d :NERDTreeToggle
map <silent> \fr :CommandTFlush
map <silent> \fb :CommandTBuffer
map \t :CommandT
nmap \p orequire "pry"
snoremap ^ b<BS>^
snoremap ` b<BS>`
nmap cs <Plug>Csurround
nmap ds <Plug>Dsurround
nmap gx <Plug>NetrwBrowseX
xnoremap <silent> gC :TCommentMaybeInline!
nnoremap <silent> gCc :let w:tcommentPos = getpos(".") | set opfunc=tcomment#OperatorLineAnyway
nnoremap <silent> gC :let w:tcommentPos = getpos(".") | set opfunc=tcomment#OperatorAnyway
xnoremap <silent> gc :TCommentMaybeInline
nnoremap <silent> gcc :let w:tcommentPos = getpos(".") | set opfunc=tcomment#OperatorLine
nnoremap <silent> gc9c :let w:tcommentPos = getpos(".") | call tcomment#SetOption("count", 9) | set opfunc=tcomment#Operator
nnoremap <silent> gc8c :let w:tcommentPos = getpos(".") | call tcomment#SetOption("count", 8) | set opfunc=tcomment#Operator
nnoremap <silent> gc7c :let w:tcommentPos = getpos(".") | call tcomment#SetOption("count", 7) | set opfunc=tcomment#Operator
nnoremap <silent> gc6c :let w:tcommentPos = getpos(".") | call tcomment#SetOption("count", 6) | set opfunc=tcomment#Operator
nnoremap <silent> gc5c :let w:tcommentPos = getpos(".") | call tcomment#SetOption("count", 5) | set opfunc=tcomment#Operator
nnoremap <silent> gc4c :let w:tcommentPos = getpos(".") | call tcomment#SetOption("count", 4) | set opfunc=tcomment#Operator
nnoremap <silent> gc3c :let w:tcommentPos = getpos(".") | call tcomment#SetOption("count", 3) | set opfunc=tcomment#Operator
nnoremap <silent> gc2c :let w:tcommentPos = getpos(".") | call tcomment#SetOption("count", 2) | set opfunc=tcomment#Operator
nnoremap <silent> gc1c :let w:tcommentPos = getpos(".") | call tcomment#SetOption("count", 1) | set opfunc=tcomment#Operator
nnoremap <silent> gc :if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") | set opfunc=tcomment#Operator
xmap gS <Plug>VgSurround
nmap gl :cwindow
nmap gq :ccl
nmap gp :cprev
nmap gn :cnext
nmap g* :Ggrep 
nmap g/ :Ggrep 
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
map <M-Down> }
noremap <D-Down> <C-End>
map <M-Up> {
noremap <D-Up> <C-Home>
noremap <M-Right> <C-Right>
noremap <D-Right> <End>
noremap <M-Left> <C-Left>
noremap <D-Left> <Home>
snoremap <Left> bi
snoremap <Right> a
snoremap <BS> b<BS>
snoremap <silent> <S-Tab> i<Right>=BackwardsSnippet()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
nnoremap <Plug>ClojureCloseResultBuffer. :call vimclojure#ResultWindow.CloseWindow()
nnoremap <Plug>ClojureReplHatHook. :call b:vimclojure_repl.hatHook()
nnoremap <Plug>ClojureStartLocalRepl. :call vimclojure#ProtectedPlug( function("vimclojure#CommandPlug"), [ function("vimclojure#StartRepl"), [ b:vimclojure_namespace ]])
nnoremap <Plug>ClojureStartRepl. :call vimclojure#ProtectedPlug( function("vimclojure#CommandPlug"), [ function("vimclojure#StartRepl"), [  ]])
nnoremap <Plug>ClojureEvalParagraph. :call vimclojure#ProtectedPlug( function("vimclojure#CommandPlug"), [ function("vimclojure#EvalParagraph"), [  ]])
nnoremap <Plug>ClojureEvalToplevel. :call vimclojure#ProtectedPlug( function("vimclojure#CommandPlug"), [ function("vimclojure#EvalToplevel"), [  ]])
vnoremap <Plug>ClojureEvalBlock. :call vimclojure#ProtectedPlug( function("vimclojure#CommandPlug"), [ function("vimclojure#EvalBlock"), [  ]])
nnoremap <Plug>ClojureEvalLine. :call vimclojure#ProtectedPlug( function("vimclojure#CommandPlug"), [ function("vimclojure#EvalLine"), [  ]])
nnoremap <Plug>ClojureEvalFile. :call vimclojure#ProtectedPlug( function("vimclojure#CommandPlug"), [ function("vimclojure#EvalFile"), [  ]])
nnoremap <Plug>ClojureMacroExpand1. :call vimclojure#ProtectedPlug( function("vimclojure#CommandPlug"), [ function("vimclojure#MacroExpand"), [ 1 ]])
nnoremap <Plug>ClojureMacroExpand. :call vimclojure#ProtectedPlug( function("vimclojure#CommandPlug"), [ function("vimclojure#MacroExpand"), [ 0 ]])
nnoremap <Plug>ClojureRunTests. :call vimclojure#ProtectedPlug( function("vimclojure#CommandPlug"), [ function("vimclojure#RunTests"), [ 0 ]])
nnoremap <Plug>ClojureRequireFileAll. :call vimclojure#ProtectedPlug( function("vimclojure#CommandPlug"), [ function("vimclojure#RequireFile"), [ 1 ]])
nnoremap <Plug>ClojureRequireFile. :call vimclojure#ProtectedPlug( function("vimclojure#CommandPlug"), [ function("vimclojure#RequireFile"), [ 0 ]])
nnoremap <Plug>ClojureGotoSourceInteractive. :call vimclojure#ProtectedPlug( function("vimclojure#CommandPlug"), [ function("vimclojure#GotoSource"), [ input("Symbol to go to: ") ]])
nnoremap <Plug>ClojureGotoSourceWord. :call vimclojure#ProtectedPlug( function("vimclojure#CommandPlug"), [ function("vimclojure#GotoSource"), [ expand("<cword>") ]])
nnoremap <Plug>ClojureSourceLookupInteractive. :call vimclojure#ProtectedPlug( function("vimclojure#CommandPlug"), [ function("vimclojure#SourceLookup"), [ input("Symbol to look up: ") ]])
nnoremap <Plug>ClojureSourceLookupWord. :call vimclojure#ProtectedPlug( function("vimclojure#CommandPlug"), [ function("vimclojure#SourceLookup"), [ expand("<cword>") ]])
nnoremap <Plug>ClojureMetaLookupInteractive. :call vimclojure#ProtectedPlug( function("vimclojure#CommandPlug"), [ function("vimclojure#MetaLookup"), [ input("Symbol to look up: ") ]])
nnoremap <Plug>ClojureMetaLookupWord. :call vimclojure#ProtectedPlug( function("vimclojure#CommandPlug"), [ function("vimclojure#MetaLookup"), [ expand("<cword>") ]])
nnoremap <Plug>ClojureFindDoc. :call vimclojure#ProtectedPlug( function("vimclojure#CommandPlug"), [ function("vimclojure#FindDoc"), [  ]])
nnoremap <Plug>ClojureJavadocLookupInteractive. :call vimclojure#ProtectedPlug( function("vimclojure#CommandPlug"), [ function("vimclojure#JavadocLookup"), [ input("Class to lookup: ") ]])
nnoremap <Plug>ClojureJavadocLookupWord. :call vimclojure#ProtectedPlug( function("vimclojure#CommandPlug"), [ function("vimclojure#JavadocLookup"), [ expand("<cword>") ]])
nnoremap <Plug>ClojureDocLookupInteractive. :call vimclojure#ProtectedPlug( function("vimclojure#CommandPlug"), [ function("vimclojure#DocLookup"), [ input("Symbol to look up: ") ]])
nnoremap <Plug>ClojureDocLookupWord. :call vimclojure#ProtectedPlug( function("vimclojure#CommandPlug"), [ function("vimclojure#DocLookup"), [ expand("<cword>") ]])
nnoremap <Plug>ClojureToggleParenRainbow. :call vimclojure#ProtectedPlug(function("vimclojure#ToggleParenRainbow"), [  ])
nnoremap <Plug>ClojureAddToLispWords. :call vimclojure#ProtectedPlug(function("vimclojure#AddToLispWords"), [ expand("<cword>") ])
nnoremap <silent> <Plug>SurroundRepeat .
vnoremap <Plug>(EmmetCodePretty) :call emmet#codePretty()
vnoremap <Plug>(EmmetMergeLines) :call emmet#mergeLines()
nnoremap <Plug>(EmmetAnchorizeSummary) :call emmet#anchorizeURL(1)
nnoremap <Plug>(EmmetAnchorizeURL) :call emmet#anchorizeURL(0)
nnoremap <Plug>(EmmetRemoveTag) :call emmet#removeTag()
nnoremap <Plug>(EmmetSplitJoinTag) :call emmet#splitJoinTag()
nnoremap <Plug>(EmmetToggleComment) :call emmet#toggleComment()
nnoremap <Plug>(EmmetImageSize) :call emmet#imageSize()
nnoremap <Plug>(EmmetMovePrev) :call emmet#moveNextPrev(1)
nnoremap <Plug>(EmmetMoveNext) :call emmet#moveNextPrev(0)
vnoremap <Plug>(EmmetBalanceTagOutward) :call emmet#balanceTag(-2)
nnoremap <Plug>(EmmetBalanceTagOutward) :call emmet#balanceTag(-1)
vnoremap <Plug>(EmmetBalanceTagInward) :call emmet#balanceTag(2)
nnoremap <Plug>(EmmetBalanceTagInward) :call emmet#balanceTag(1)
nnoremap <Plug>(EmmetExpandWord) :call emmet#expandAbbr(1,"")
vnoremap <Plug>(EmmetExpandAbbr) :call emmet#expandAbbr(2,"")
nnoremap <Plug>(EmmetExpandAbbr) :call emmet#expandAbbr(3,"")
map <F12> :python debugger_watch_input("property_get", '<cword>')
map <F11> :python debugger_watch_input("context_get")
map <F9> :python debugger_command('step_out')
map <F8> :python debugger_command('step_over')
map <F7> :python debugger_command('step_into')
map <F6> :python debugger_quit()
map <F5> :python debugger_run()
map <F4> :python debugger_command('step_out')
map <F3> :python debugger_command('step_over')
map <F2> :python debugger_command('step_into')
map <F1> :python debugger_resize()
nnoremap <silent> <Plug>ZoomWin :set lz|sil call ZoomWin#ZoomWin()|set nolz
nmap <silent> <Plug>NERDCommenterAppend :call NERDComment(0, "append")
nnoremap <silent> <Plug>NERDCommenterToEOL :call NERDComment(0, "toEOL")
vnoremap <silent> <Plug>NERDCommenterUncomment :call NERDComment(1, "uncomment")
nnoremap <silent> <Plug>NERDCommenterUncomment :call NERDComment(0, "uncomment")
vnoremap <silent> <Plug>NERDCommenterNest :call NERDComment(1, "nested")
nnoremap <silent> <Plug>NERDCommenterNest :call NERDComment(0, "nested")
vnoremap <silent> <Plug>NERDCommenterAlignBoth :call NERDComment(1, "alignBoth")
nnoremap <silent> <Plug>NERDCommenterAlignBoth :call NERDComment(0, "alignBoth")
vnoremap <silent> <Plug>NERDCommenterAlignLeft :call NERDComment(1, "alignLeft")
nnoremap <silent> <Plug>NERDCommenterAlignLeft :call NERDComment(0, "alignLeft")
vmap <silent> <Plug>NERDCommenterYank :call NERDComment(1, "yank")
nmap <silent> <Plug>NERDCommenterYank :call NERDComment(0, "yank")
vnoremap <silent> <Plug>NERDCommenterInvert :call NERDComment(1, "invert")
nnoremap <silent> <Plug>NERDCommenterInvert :call NERDComment(0, "invert")
vnoremap <silent> <Plug>NERDCommenterSexy :call NERDComment(1, "sexy")
nnoremap <silent> <Plug>NERDCommenterSexy :call NERDComment(0, "sexy")
vnoremap <silent> <Plug>NERDCommenterMinimal :call NERDComment(1, "minimal")
nnoremap <silent> <Plug>NERDCommenterMinimal :call NERDComment(0, "minimal")
vnoremap <silent> <Plug>NERDCommenterToggle :call NERDComment(1, "toggle")
nnoremap <silent> <Plug>NERDCommenterToggle :call NERDComment(0, "toggle")
vnoremap <silent> <Plug>NERDCommenterComment :call NERDComment(1, "norm")
nnoremap <silent> <Plug>NERDCommenterComment :call NERDComment(0, "norm")
xmap <BS> "-d
cnoremap  <Home>
cnoremap  <Left>
cnoremap  <Right>
imap S <Plug>ISurround
imap s <Plug>Isurround
inoremap <silent> 	 =TriggerSnippet()
imap  ->
imap   => 
inoremap <silent> 	 =ShowAvailableSnips()
imap  <Plug>Isurround
imap A <Plug>(EmmetAnchorizeSummary)
imap a <Plug>(EmmetAnchorizeURL)
imap k <Plug>(EmmetRemoveTag)
imap j <Plug>(EmmetSplitJoinTag)
imap / <Plug>(EmmetToggleComment)
imap i <Plug>(EmmetImageSize)
imap N <Plug>(EmmetMovePrev)
imap n <Plug>(EmmetMoveNext)
imap D <Plug>(EmmetBalanceTagOutward)
imap d <Plug>(EmmetBalanceTagInward)
imap ; <Plug>(EmmetExpandWord)
imap , <Plug>(EmmetExpandAbbr)
cnoremap f <S-Right>
cnoremap b <S-Left>
inoremap <silent> 9 :TComment count=9
inoremap <silent> 8 :TComment count=8
inoremap <silent> 7 :TComment count=7
inoremap <silent> 6 :TComment count=6
inoremap <silent> 5 :TComment count=5
inoremap <silent> 4 :TComment count=4
inoremap <silent> 3 :TComment count=3
inoremap <silent> 2 :TComment count=2
inoremap <silent> 1 :TComment count=1
inoremap s :TCommentAs =&ft
inoremap n :TCommentAs =&ft
inoremap a :TCommentAs 
inoremap b :TCommentBlock
inoremap <silent> i v:TCommentInline mode=#
inoremap <silent> r :TCommentRight
inoremap   :TComment 
inoremap <silent> p :norm! m`vip
inoremap <silent>  :TComment
let &cpo=s:cpo_save
unlet s:cpo_save
set background=dark
set backspace=indent,eol,start
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set fuoptions=maxhorz,maxvert
set guifont=Monaco\ for\ Powerline
set guioptions=eg
set guitablabel=%M%t
set helplang=en
set hidden
set hlsearch
set ignorecase
set incsearch
set isident=@,48-57,_,192-255,$
set iskeyword=@,48-57,_,192-255,$
set langmenu=none
set laststatus=2
set mouse=a
set omnifunc=csscomplete#CompleteCSS
set printexpr=system('open\ -a\ Preview\ '.v:fname_in)\ +\ v:shell_error
set ruler
set runtimepath=~/.vim,~/.vim/bundle/Command-T,~/.vim/bundle/bufexplorer-7.3.3,~/.vim/bundle/ctrlp.vim,~/.vim/bundle/emmet-vim,~/.vim/bundle/html5.vim,~/.vim/bundle/jshint.vim,~/.vim/bundle/nerdtree,~/.vim/bundle/snipmate.vim,~/.vim/bundle/syntastic,~/.vim/bundle/tComment,~/.vim/bundle/vim-bundler,~/.vim/bundle/vim-coffee-script,~/.vim/bundle/vim-colors-solarized,~/.vim/bundle/vim-fugitive,~/.vim/bundle/vim-golang,~/.vim/bundle/vim-haml,~/.vim/bundle/vim-javascript,~/.vim/bundle/vim-powerline,~/.vim/bundle/vim-rails,~/.vim/bundle/vim-ruby,~/.vim/bundle/VimClojure,/usr/local/Cellar/macvim/7.3-66/MacVim.app/Contents/Resources/vim/vimfiles,/usr/local/Cellar/macvim/7.3-66/MacVim.app/Contents/Resources/vim/runtime,/usr/local/Cellar/macvim/7.3-66/MacVim.app/Contents/Resources/vim/vimfiles/after,~/.vim/bundle/snipmate.vim/after,~/.vim/bundle/vim-coffee-script/after,~/.vim/after
set scrolloff=5
set shiftwidth=2
set showmatch
set smartcase
set softtabstop=2
set noswapfile
set tabstop=2
set termencoding=utf-8
set visualbell
set window=50
set winminwidth=15
set winwidth=95
set nowritebackup
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Projects/twilio_toy
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +9 Gemfile
badd +1 config/initializers/twilio.rb
badd +3 app/helpers/application_helper.rb
badd +1 config/application.rb
badd +8 app/views/layouts/application.html.erb
badd +1 config/routes.rb
badd +1 app/views/client/index.html.erb
badd +1 app/helpers/client_helper.rb
badd +1 app/controllers/client_controller.rb
args ./
edit app/views/client/index.html.erb
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> gf <Plug>RailsTabFind
nmap <buffer> f <Plug>RailsSplitFind
nnoremap <buffer> <silent> g} :exe        "ptjump =RubyCursorIdentifier()
nnoremap <buffer> <silent> } :exe          "ptag =RubyCursorIdentifier()
nnoremap <buffer> <silent> g] :exe      "stselect =RubyCursorIdentifier()
nnoremap <buffer> <silent> g :exe        "stjump =RubyCursorIdentifier()
nnoremap <buffer> <silent>  :exe v:count1."stag =RubyCursorIdentifier()
nnoremap <buffer> <silent> ] :exe v:count1."stag =RubyCursorIdentifier()
nnoremap <buffer> <silent>  :exe  v:count1."tag =RubyCursorIdentifier()
nmap <buffer> gf <Plug>RailsFind
nnoremap <buffer> <silent> g] :exe       "tselect =RubyCursorIdentifier()
nnoremap <buffer> <silent> g :exe         "tjump =RubyCursorIdentifier()
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal balloonexpr=RubyBalloonexpr()
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=:#
setlocal commentstring=<%#%s%>
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=syntaxcomplete#Complete
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'eruby'
setlocal filetype=eruby
endif
setlocal foldcolumn=0
set nofoldenable
setlocal nofoldenable
setlocal foldexpr=0
setlocal foldignore=#
set foldlevel=1
setlocal foldlevel=1
setlocal foldmarker={{{,}}}
set foldmethod=indent
setlocal foldmethod=indent
setlocal foldminlines=1
set foldnestmax=10
setlocal foldnestmax=10
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=^\\s*\\<\\(load\\>\\|require\\>\\|autoload\\s*:\\=[\"']\\=\\h\\w*[\"']\\=,\\)
setlocal includeexpr=RailsIncludeexpr()
setlocal indentexpr=GetErubyIndent()
setlocal indentkeys=o,O,*<Return>,<>>,{,},0),0],o,O,!^F,=end,=else,=elsif,=rescue,=ensure,=when
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,$
setlocal keywordprg=ri\ -T\ -f\ bs
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal nomacmeta
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=rubycomplete#Complete
setlocal path=lib,vendor,app/models/concerns,app/controllers/concerns,app/controllers,app/helpers,app/mailers,app/models,app/*,app/views,app/views/client,public,test,test/unit,test/functional,test/integration,test/controllers,test/helpers,test/mailers,test/models,vendor/plugins/*/lib,vendor/plugins/*/test,vendor/rails/*/lib,vendor/rails/*/test,~/Projects/twilio_toy,~/.rvm/rubies/ruby-1.9.3-p448/lib/ruby/site_ruby/1.9.1,~/.rvm/rubies/ruby-1.9.3-p448/lib/ruby/site_ruby/1.9.1/x86_64-darwin12.4.0,~/.rvm/rubies/ruby-1.9.3-p448/lib/ruby/site_ruby,~/.rvm/rubies/ruby-1.9.3-p448/lib/ruby/vendor_ruby/1.9.1,~/.rvm/rubies/ruby-1.9.3-p448/lib/ruby/vendor_ruby/1.9.1/x86_64-darwin12.4.0,~/.rvm/rubies/ruby-1.9.3-p448/lib/ruby/vendor_ruby,~/.rvm/rubies/ruby-1.9.3-p448/lib/ruby/1.9.1,~/.rvm/rubies/ruby-1.9.3-p448/lib/ruby/1.9.1/x86_64-darwin12.4.0,~/.rvm/gems/ruby-1.9.3-p448/gems/actionmailer-3.2.13/lib,~/.rvm/gems/ruby-1.9.3-p448/gems/actionpack-3.2.13/lib,~/.rvm/gems/ruby-1.9.3-p448/gems/activemodel-3.2.13/lib,~/.rvm/gems/ruby-1.9.3-p448
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!Pl#Statusline(0,1)
setlocal suffixesadd=.rb
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'eruby'
setlocal syntax=eruby
endif
setlocal tabstop=2
setlocal tags=~/Projects/twilio_toy/tags,~/Projects/twilio_toy/tmp/tags,./tags,tags,~/.rvm/rubies/ruby-1.9.3-p448/lib/ruby/site_ruby/1.9.1/tags,~/.rvm/rubies/ruby-1.9.3-p448/lib/ruby/site_ruby/1.9.1/x86_64-darwin12.4.0/tags,~/.rvm/rubies/ruby-1.9.3-p448/lib/ruby/site_ruby/tags,~/.rvm/rubies/ruby-1.9.3-p448/lib/ruby/vendor_ruby/1.9.1/tags,~/.rvm/rubies/ruby-1.9.3-p448/lib/ruby/vendor_ruby/1.9.1/x86_64-darwin12.4.0/tags,~/.rvm/rubies/ruby-1.9.3-p448/lib/ruby/vendor_ruby/tags,~/.rvm/rubies/ruby-1.9.3-p448/lib/ruby/1.9.1/tags,~/.rvm/rubies/ruby-1.9.3-p448/lib/ruby/1.9.1/x86_64-darwin12.4.0/tags,~/.rvm/gems/ruby-1.9.3-p448/gems/actionmailer-3.2.13/tags,~/.rvm/gems/ruby-1.9.3-p448/gems/actionpack-3.2.13/tags,~/.rvm/gems/ruby-1.9.3-p448/gems/activemodel-3.2.13/tags,~/.rvm/gems/ruby-1.9.3-p448/gems/activerecord-3.2.13/tags,~/.rvm/gems/ruby-1.9.3-p448/gems/activeresource-3.2.13/tags,~/.rvm/gems/ruby-1.9.3-p448/gems/activesupport-3.2.13/tags,~/.rvm/gems/ruby-1.9.3-p448/gems/arel-3.0.3/tags,~/.rvm/gems/ruby-1.9.3-p448/gems/builder-3
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
let s:l = 46 - ((45 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
46
normal! 037l
tabedit app/helpers/client_helper.rb
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> gf <Plug>RailsTabFind
nmap <buffer> f <Plug>RailsSplitFind
nnoremap <buffer> <silent> g} :exe        "ptjump =RubyCursorIdentifier()
nnoremap <buffer> <silent> } :exe          "ptag =RubyCursorIdentifier()
nnoremap <buffer> <silent> g] :exe      "stselect =RubyCursorIdentifier()
nnoremap <buffer> <silent> g :exe        "stjump =RubyCursorIdentifier()
nnoremap <buffer> <silent>  :exe v:count1."stag =RubyCursorIdentifier()
nnoremap <buffer> <silent> ] :exe v:count1."stag =RubyCursorIdentifier()
nnoremap <buffer> <silent>  :exe  v:count1."tag =RubyCursorIdentifier()
nmap <buffer> gf <Plug>RailsFind
nnoremap <buffer> <silent> g] :exe       "tselect =RubyCursorIdentifier()
nnoremap <buffer> <silent> g :exe         "tjump =RubyCursorIdentifier()
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal balloonexpr=RubyBalloonexpr()
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=:#
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=syntaxcomplete#Complete
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=^\\s*def\\s\\+\\(self\\.\\)\\=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'ruby'
setlocal filetype=ruby
endif
setlocal foldcolumn=0
set nofoldenable
setlocal nofoldenable
setlocal foldexpr=0
setlocal foldignore=#
set foldlevel=1
setlocal foldlevel=1
setlocal foldmarker={{{,}}}
set foldmethod=indent
setlocal foldmethod=indent
setlocal foldminlines=1
set foldnestmax=10
setlocal foldnestmax=10
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=^\\s*\\<\\(load\\>\\|require\\>\\|autoload\\s*:\\=[\"']\\=\\h\\w*[\"']\\=,\\)
setlocal includeexpr=RailsIncludeexpr()
setlocal indentexpr=GetRubyIndent(v:lnum)
setlocal indentkeys=0{,0},0),0],!^F,o,O,e,=end,=else,=elsif,=when,=ensure,=rescue,==begin,==end
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,$
setlocal keywordprg=ri\ -T\ -f\ bs
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal nomacmeta
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=rubycomplete#Complete
setlocal path=lib,vendor,app/models/concerns,app/controllers/concerns,app/controllers,app/helpers,app/mailers,app/models,app/*,app/views,app/views/client,public,test,test/unit,test/functional,test/integration,test/controllers,test/helpers,test/mailers,test/models,vendor/plugins/*/lib,vendor/plugins/*/test,vendor/rails/*/lib,vendor/rails/*/test,~/Projects/twilio_toy,~/.rvm/rubies/ruby-1.9.3-p448/lib/ruby/site_ruby/1.9.1,~/.rvm/rubies/ruby-1.9.3-p448/lib/ruby/site_ruby/1.9.1/x86_64-darwin12.4.0,~/.rvm/rubies/ruby-1.9.3-p448/lib/ruby/site_ruby,~/.rvm/rubies/ruby-1.9.3-p448/lib/ruby/vendor_ruby/1.9.1,~/.rvm/rubies/ruby-1.9.3-p448/lib/ruby/vendor_ruby/1.9.1/x86_64-darwin12.4.0,~/.rvm/rubies/ruby-1.9.3-p448/lib/ruby/vendor_ruby,~/.rvm/rubies/ruby-1.9.3-p448/lib/ruby/1.9.1,~/.rvm/rubies/ruby-1.9.3-p448/lib/ruby/1.9.1/x86_64-darwin12.4.0,~/.rvm/gems/ruby-1.9.3-p448/gems/actionmailer-3.2.13/lib,~/.rvm/gems/ruby-1.9.3-p448/gems/actionpack-3.2.13/lib,~/.rvm/gems/ruby-1.9.3-p448/gems/activemodel-3.2.13/lib,~/.rvm/gems/ruby-1.9.3-p448
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!Pl#Statusline(0,0)
setlocal suffixesadd=.rb
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'ruby'
setlocal syntax=ruby
endif
setlocal tabstop=2
setlocal tags=~/Projects/twilio_toy/tags,~/Projects/twilio_toy/tmp/tags,./tags,tags,~/.rvm/rubies/ruby-1.9.3-p448/lib/ruby/site_ruby/1.9.1/tags,~/.rvm/rubies/ruby-1.9.3-p448/lib/ruby/site_ruby/1.9.1/x86_64-darwin12.4.0/tags,~/.rvm/rubies/ruby-1.9.3-p448/lib/ruby/site_ruby/tags,~/.rvm/rubies/ruby-1.9.3-p448/lib/ruby/vendor_ruby/1.9.1/tags,~/.rvm/rubies/ruby-1.9.3-p448/lib/ruby/vendor_ruby/1.9.1/x86_64-darwin12.4.0/tags,~/.rvm/rubies/ruby-1.9.3-p448/lib/ruby/vendor_ruby/tags,~/.rvm/rubies/ruby-1.9.3-p448/lib/ruby/1.9.1/tags,~/.rvm/rubies/ruby-1.9.3-p448/lib/ruby/1.9.1/x86_64-darwin12.4.0/tags,~/.rvm/gems/ruby-1.9.3-p448/gems/actionmailer-3.2.13/tags,~/.rvm/gems/ruby-1.9.3-p448/gems/actionpack-3.2.13/tags,~/.rvm/gems/ruby-1.9.3-p448/gems/activemodel-3.2.13/tags,~/.rvm/gems/ruby-1.9.3-p448/gems/activerecord-3.2.13/tags,~/.rvm/gems/ruby-1.9.3-p448/gems/activeresource-3.2.13/tags,~/.rvm/gems/ruby-1.9.3-p448/gems/activesupport-3.2.13/tags,~/.rvm/gems/ruby-1.9.3-p448/gems/arel-3.0.3/tags,~/.rvm/gems/ruby-1.9.3-p448/gems/builder-3
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
let s:l = 1 - ((0 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
tabedit config/initializers/twilio.rb
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> gf <Plug>RailsTabFind
nmap <buffer> f <Plug>RailsSplitFind
nnoremap <buffer> <silent> g} :exe        "ptjump =RubyCursorIdentifier()
nnoremap <buffer> <silent> } :exe          "ptag =RubyCursorIdentifier()
nnoremap <buffer> <silent> g] :exe      "stselect =RubyCursorIdentifier()
nnoremap <buffer> <silent> g :exe        "stjump =RubyCursorIdentifier()
nnoremap <buffer> <silent>  :exe v:count1."stag =RubyCursorIdentifier()
nnoremap <buffer> <silent> ] :exe v:count1."stag =RubyCursorIdentifier()
nnoremap <buffer> <silent>  :exe  v:count1."tag =RubyCursorIdentifier()
nmap <buffer> gf <Plug>RailsFind
nnoremap <buffer> <silent> g] :exe       "tselect =RubyCursorIdentifier()
nnoremap <buffer> <silent> g :exe         "tjump =RubyCursorIdentifier()
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal balloonexpr=RubyBalloonexpr()
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=:#
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=syntaxcomplete#Complete
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=^\\s*def\\s\\+\\(self\\.\\)\\=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'ruby'
setlocal filetype=ruby
endif
setlocal foldcolumn=0
set nofoldenable
setlocal nofoldenable
setlocal foldexpr=0
setlocal foldignore=#
set foldlevel=1
setlocal foldlevel=1
setlocal foldmarker={{{,}}}
set foldmethod=indent
setlocal foldmethod=indent
setlocal foldminlines=1
set foldnestmax=10
setlocal foldnestmax=10
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=^\\s*\\<\\(load\\>\\|require\\>\\|autoload\\s*:\\=[\"']\\=\\h\\w*[\"']\\=,\\)
setlocal includeexpr=RailsIncludeexpr()
setlocal indentexpr=GetRubyIndent(v:lnum)
setlocal indentkeys=0{,0},0),0],!^F,o,O,e,=end,=else,=elsif,=when,=ensure,=rescue,==begin,==end
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,$
setlocal keywordprg=ri\ -T\ -f\ bs
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal nomacmeta
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=rubycomplete#Complete
setlocal path=lib,vendor,app/models/concerns,app/controllers/concerns,app/controllers,app/helpers,app/mailers,app/models,app/*,app/views,test,test/unit,test/functional,test/integration,test/controllers,test/helpers,test/mailers,test/models,vendor/plugins/*/lib,vendor/plugins/*/test,vendor/rails/*/lib,vendor/rails/*/test,~/Projects/twilio_toy,~/.rvm/rubies/ruby-1.9.3-p448/lib/ruby/site_ruby/1.9.1,~/.rvm/rubies/ruby-1.9.3-p448/lib/ruby/site_ruby/1.9.1/x86_64-darwin12.4.0,~/.rvm/rubies/ruby-1.9.3-p448/lib/ruby/site_ruby,~/.rvm/rubies/ruby-1.9.3-p448/lib/ruby/vendor_ruby/1.9.1,~/.rvm/rubies/ruby-1.9.3-p448/lib/ruby/vendor_ruby/1.9.1/x86_64-darwin12.4.0,~/.rvm/rubies/ruby-1.9.3-p448/lib/ruby/vendor_ruby,~/.rvm/rubies/ruby-1.9.3-p448/lib/ruby/1.9.1,~/.rvm/rubies/ruby-1.9.3-p448/lib/ruby/1.9.1/x86_64-darwin12.4.0,~/.rvm/gems/ruby-1.9.3-p448/gems/actionmailer-3.2.13/lib,~/.rvm/gems/ruby-1.9.3-p448/gems/actionpack-3.2.13/lib,~/.rvm/gems/ruby-1.9.3-p448/gems/activemodel-3.2.13/lib,~/.rvm/gems/ruby-1.9.3-p448/gems/activerecord-3.2.1
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!Pl#Statusline(0,0)
setlocal suffixesadd=.rb
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'ruby'
setlocal syntax=ruby
endif
setlocal tabstop=2
setlocal tags=~/Projects/twilio_toy/tags,~/Projects/twilio_toy/tmp/tags,./tags,tags,~/.rvm/rubies/ruby-1.9.3-p448/lib/ruby/site_ruby/1.9.1/tags,~/.rvm/rubies/ruby-1.9.3-p448/lib/ruby/site_ruby/1.9.1/x86_64-darwin12.4.0/tags,~/.rvm/rubies/ruby-1.9.3-p448/lib/ruby/site_ruby/tags,~/.rvm/rubies/ruby-1.9.3-p448/lib/ruby/vendor_ruby/1.9.1/tags,~/.rvm/rubies/ruby-1.9.3-p448/lib/ruby/vendor_ruby/1.9.1/x86_64-darwin12.4.0/tags,~/.rvm/rubies/ruby-1.9.3-p448/lib/ruby/vendor_ruby/tags,~/.rvm/rubies/ruby-1.9.3-p448/lib/ruby/1.9.1/tags,~/.rvm/rubies/ruby-1.9.3-p448/lib/ruby/1.9.1/x86_64-darwin12.4.0/tags,~/.rvm/gems/ruby-1.9.3-p448/gems/actionmailer-3.2.13/tags,~/.rvm/gems/ruby-1.9.3-p448/gems/actionpack-3.2.13/tags,~/.rvm/gems/ruby-1.9.3-p448/gems/activemodel-3.2.13/tags,~/.rvm/gems/ruby-1.9.3-p448/gems/activerecord-3.2.13/tags,~/.rvm/gems/ruby-1.9.3-p448/gems/activeresource-3.2.13/tags,~/.rvm/gems/ruby-1.9.3-p448/gems/activesupport-3.2.13/tags,~/.rvm/gems/ruby-1.9.3-p448/gems/arel-3.0.3/tags,~/.rvm/gems/ruby-1.9.3-p448/gems/builder-3
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
let s:l = 1 - ((0 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
tabedit app/controllers/client_controller.rb
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> gf <Plug>RailsTabFind
nmap <buffer> f <Plug>RailsSplitFind
nnoremap <buffer> <silent> g} :exe        "ptjump =RubyCursorIdentifier()
nnoremap <buffer> <silent> } :exe          "ptag =RubyCursorIdentifier()
nnoremap <buffer> <silent> g] :exe      "stselect =RubyCursorIdentifier()
nnoremap <buffer> <silent> g :exe        "stjump =RubyCursorIdentifier()
nnoremap <buffer> <silent>  :exe v:count1."stag =RubyCursorIdentifier()
nnoremap <buffer> <silent> ] :exe v:count1."stag =RubyCursorIdentifier()
nnoremap <buffer> <silent>  :exe  v:count1."tag =RubyCursorIdentifier()
nmap <buffer> gf <Plug>RailsFind
nnoremap <buffer> <silent> g] :exe       "tselect =RubyCursorIdentifier()
nnoremap <buffer> <silent> g :exe         "tjump =RubyCursorIdentifier()
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal balloonexpr=RubyBalloonexpr()
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=:#
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=syntaxcomplete#Complete
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=^\\s*def\\s\\+\\(self\\.\\)\\=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'ruby'
setlocal filetype=ruby
endif
setlocal foldcolumn=0
set nofoldenable
setlocal nofoldenable
setlocal foldexpr=0
setlocal foldignore=#
set foldlevel=1
setlocal foldlevel=1
setlocal foldmarker={{{,}}}
set foldmethod=indent
setlocal foldmethod=indent
setlocal foldminlines=1
set foldnestmax=10
setlocal foldnestmax=10
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=^\\s*\\<\\(load\\>\\|require\\>\\|autoload\\s*:\\=[\"']\\=\\h\\w*[\"']\\=,\\)
setlocal includeexpr=RailsIncludeexpr()
setlocal indentexpr=GetRubyIndent(v:lnum)
setlocal indentkeys=0{,0},0),0],!^F,o,O,e,=end,=else,=elsif,=when,=ensure,=rescue,==begin,==end
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,$
setlocal keywordprg=ri\ -T\ -f\ bs
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal nomacmeta
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=rubycomplete#Complete
setlocal path=lib,vendor,app/models/concerns,app/controllers/concerns,app/controllers,app/helpers,app/mailers,app/models,app/*,app/views,app/views/client,public,test,test/unit,test/functional,test/integration,test/controllers,test/helpers,test/mailers,test/models,vendor/plugins/*/lib,vendor/plugins/*/test,vendor/rails/*/lib,vendor/rails/*/test,~/Projects/twilio_toy,~/.rvm/rubies/ruby-1.9.3-p448/lib/ruby/site_ruby/1.9.1,~/.rvm/rubies/ruby-1.9.3-p448/lib/ruby/site_ruby/1.9.1/x86_64-darwin12.4.0,~/.rvm/rubies/ruby-1.9.3-p448/lib/ruby/site_ruby,~/.rvm/rubies/ruby-1.9.3-p448/lib/ruby/vendor_ruby/1.9.1,~/.rvm/rubies/ruby-1.9.3-p448/lib/ruby/vendor_ruby/1.9.1/x86_64-darwin12.4.0,~/.rvm/rubies/ruby-1.9.3-p448/lib/ruby/vendor_ruby,~/.rvm/rubies/ruby-1.9.3-p448/lib/ruby/1.9.1,~/.rvm/rubies/ruby-1.9.3-p448/lib/ruby/1.9.1/x86_64-darwin12.4.0,~/.rvm/gems/ruby-1.9.3-p448/gems/actionmailer-3.2.13/lib,~/.rvm/gems/ruby-1.9.3-p448/gems/actionpack-3.2.13/lib,~/.rvm/gems/ruby-1.9.3-p448/gems/activemodel-3.2.13/lib,~/.rvm/gems/ruby-1.9.3-p448
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!Pl#Statusline(0,0)
setlocal suffixesadd=.rb
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'ruby'
setlocal syntax=ruby
endif
setlocal tabstop=2
setlocal tags=~/Projects/twilio_toy/tags,~/Projects/twilio_toy/tmp/tags,~/Projects/twilio_toy/.git/ruby.tags,~/Projects/twilio_toy/.git/tags,./tags,tags,~/.rvm/rubies/ruby-1.9.3-p448/lib/ruby/site_ruby/1.9.1/tags,~/.rvm/rubies/ruby-1.9.3-p448/lib/ruby/site_ruby/1.9.1/x86_64-darwin12.4.0/tags,~/.rvm/rubies/ruby-1.9.3-p448/lib/ruby/site_ruby/tags,~/.rvm/rubies/ruby-1.9.3-p448/lib/ruby/vendor_ruby/1.9.1/tags,~/.rvm/rubies/ruby-1.9.3-p448/lib/ruby/vendor_ruby/1.9.1/x86_64-darwin12.4.0/tags,~/.rvm/rubies/ruby-1.9.3-p448/lib/ruby/vendor_ruby/tags,~/.rvm/rubies/ruby-1.9.3-p448/lib/ruby/1.9.1/tags,~/.rvm/rubies/ruby-1.9.3-p448/lib/ruby/1.9.1/x86_64-darwin12.4.0/tags,~/.rvm/gems/ruby-1.9.3-p448/gems/actionmailer-3.2.13/tags,~/.rvm/gems/ruby-1.9.3-p448/gems/actionpack-3.2.13/tags,~/.rvm/gems/ruby-1.9.3-p448/gems/activemodel-3.2.13/tags,~/.rvm/gems/ruby-1.9.3-p448/gems/activerecord-3.2.13/tags,~/.rvm/gems/ruby-1.9.3-p448/gems/activeresource-3.2.13/tags,~/.rvm/gems/ruby-1.9.3-p448/gems/activesupport-3.2.13/tags,~/.rvm/gems/ruby-1.9.3
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
let s:l = 7 - ((6 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
7
normal! 021l
tabedit config/routes.rb
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> gf <Plug>RailsTabFind
nmap <buffer> f <Plug>RailsSplitFind
nnoremap <buffer> <silent> g} :exe        "ptjump =RubyCursorIdentifier()
nnoremap <buffer> <silent> } :exe          "ptag =RubyCursorIdentifier()
nnoremap <buffer> <silent> g] :exe      "stselect =RubyCursorIdentifier()
nnoremap <buffer> <silent> g :exe        "stjump =RubyCursorIdentifier()
nnoremap <buffer> <silent>  :exe v:count1."stag =RubyCursorIdentifier()
nnoremap <buffer> <silent> ] :exe v:count1."stag =RubyCursorIdentifier()
nnoremap <buffer> <silent>  :exe  v:count1."tag =RubyCursorIdentifier()
nmap <buffer> gf <Plug>RailsFind
nnoremap <buffer> <silent> g] :exe       "tselect =RubyCursorIdentifier()
nnoremap <buffer> <silent> g :exe         "tjump =RubyCursorIdentifier()
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal balloonexpr=RubyBalloonexpr()
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=:#
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=syntaxcomplete#Complete
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=^\\s*def\\s\\+\\(self\\.\\)\\=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'ruby'
setlocal filetype=ruby
endif
setlocal foldcolumn=0
set nofoldenable
setlocal nofoldenable
setlocal foldexpr=0
setlocal foldignore=#
set foldlevel=1
setlocal foldlevel=1
setlocal foldmarker={{{,}}}
set foldmethod=indent
setlocal foldmethod=indent
setlocal foldminlines=1
set foldnestmax=10
setlocal foldnestmax=10
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=^\\s*\\<\\(load\\>\\|require\\>\\|autoload\\s*:\\=[\"']\\=\\h\\w*[\"']\\=,\\)
setlocal includeexpr=RailsIncludeexpr()
setlocal indentexpr=GetRubyIndent(v:lnum)
setlocal indentkeys=0{,0},0),0],!^F,o,O,e,=end,=else,=elsif,=when,=ensure,=rescue,==begin,==end
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,$
setlocal keywordprg=ri\ -T\ -f\ bs
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal nomacmeta
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=rubycomplete#Complete
setlocal path=lib,vendor,app/models/concerns,app/controllers/concerns,app/controllers,app/helpers,app/mailers,app/models,app/*,app/views,test,test/unit,test/functional,test/integration,test/controllers,test/helpers,test/mailers,test/models,vendor/plugins/*/lib,vendor/plugins/*/test,vendor/rails/*/lib,vendor/rails/*/test,~/Projects/twilio_toy,~/.rvm/rubies/ruby-1.9.3-p448/lib/ruby/site_ruby/1.9.1,~/.rvm/rubies/ruby-1.9.3-p448/lib/ruby/site_ruby/1.9.1/x86_64-darwin12.4.0,~/.rvm/rubies/ruby-1.9.3-p448/lib/ruby/site_ruby,~/.rvm/rubies/ruby-1.9.3-p448/lib/ruby/vendor_ruby/1.9.1,~/.rvm/rubies/ruby-1.9.3-p448/lib/ruby/vendor_ruby/1.9.1/x86_64-darwin12.4.0,~/.rvm/rubies/ruby-1.9.3-p448/lib/ruby/vendor_ruby,~/.rvm/rubies/ruby-1.9.3-p448/lib/ruby/1.9.1,~/.rvm/rubies/ruby-1.9.3-p448/lib/ruby/1.9.1/x86_64-darwin12.4.0,~/.rvm/gems/ruby-1.9.3-p448/gems/actionmailer-3.2.13/lib,~/.rvm/gems/ruby-1.9.3-p448/gems/actionpack-3.2.13/lib,~/.rvm/gems/ruby-1.9.3-p448/gems/activemodel-3.2.13/lib,~/.rvm/gems/ruby-1.9.3-p448/gems/activerecord-3.2.1
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!Pl#Statusline(0,0)
setlocal suffixesadd=.rb
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'ruby'
setlocal syntax=ruby
endif
setlocal tabstop=2
setlocal tags=~/Projects/twilio_toy/tags,~/Projects/twilio_toy/tmp/tags,./tags,tags,~/.rvm/rubies/ruby-1.9.3-p448/lib/ruby/site_ruby/1.9.1/tags,~/.rvm/rubies/ruby-1.9.3-p448/lib/ruby/site_ruby/1.9.1/x86_64-darwin12.4.0/tags,~/.rvm/rubies/ruby-1.9.3-p448/lib/ruby/site_ruby/tags,~/.rvm/rubies/ruby-1.9.3-p448/lib/ruby/vendor_ruby/1.9.1/tags,~/.rvm/rubies/ruby-1.9.3-p448/lib/ruby/vendor_ruby/1.9.1/x86_64-darwin12.4.0/tags,~/.rvm/rubies/ruby-1.9.3-p448/lib/ruby/vendor_ruby/tags,~/.rvm/rubies/ruby-1.9.3-p448/lib/ruby/1.9.1/tags,~/.rvm/rubies/ruby-1.9.3-p448/lib/ruby/1.9.1/x86_64-darwin12.4.0/tags,~/.rvm/gems/ruby-1.9.3-p448/gems/actionmailer-3.2.13/tags,~/.rvm/gems/ruby-1.9.3-p448/gems/actionpack-3.2.13/tags,~/.rvm/gems/ruby-1.9.3-p448/gems/activemodel-3.2.13/tags,~/.rvm/gems/ruby-1.9.3-p448/gems/activerecord-3.2.13/tags,~/.rvm/gems/ruby-1.9.3-p448/gems/activeresource-3.2.13/tags,~/.rvm/gems/ruby-1.9.3-p448/gems/activesupport-3.2.13/tags,~/.rvm/gems/ruby-1.9.3-p448/gems/arel-3.0.3/tags,~/.rvm/gems/ruby-1.9.3-p448/gems/builder-3
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
let s:l = 5 - ((4 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
5
normal! 0
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=95 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :