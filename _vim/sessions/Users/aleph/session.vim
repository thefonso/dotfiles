let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <silent> <SNR>41_AutoPairsReturn =AutoPairsReturn()
inoremap <silent> <SNR>39_AutoPairsReturn =AutoPairsReturn()
inoremap <silent> <SNR>37_AutoPairsReturn =AutoPairsReturn()
inoremap <silent> <SNR>40_AutoPairsReturn =AutoPairsReturn()
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
inoremap <Plug>TComment_9 :call tcomment#SetOption("count", 9)
inoremap <Plug>TComment_8 :call tcomment#SetOption("count", 8)
inoremap <Plug>TComment_7 :call tcomment#SetOption("count", 7)
inoremap <Plug>TComment_6 :call tcomment#SetOption("count", 6)
inoremap <Plug>TComment_5 :call tcomment#SetOption("count", 5)
inoremap <Plug>TComment_4 :call tcomment#SetOption("count", 4)
inoremap <Plug>TComment_3 :call tcomment#SetOption("count", 3)
inoremap <Plug>TComment_2 :call tcomment#SetOption("count", 2)
inoremap <Plug>TComment_1 :call tcomment#SetOption("count", 1)
inoremap <Plug>TComment_s :TCommentAs =&ft_
inoremap <Plug>TComment_n :TCommentAs =&ft 
inoremap <Plug>TComment_a :TCommentAs 
inoremap <Plug>TComment_b :TCommentBlock mode=#
inoremap <Plug>TComment_i v:TCommentInline mode=#
inoremap <Plug>TComment_r :TCommentRight
inoremap <Plug>TComment_  :TComment 
inoremap <Plug>TComment_p :norm! m`vip:TComment``
inoremap <Plug>TComment_ :TComment
inoremap <silent> <Plug>(seeing_is_believing-run) :call xmpfilter#run('i', '')a
inoremap <silent> <Plug>(seeing_is_believing-clean) :call xmpfilter#run('i', '-Ku --clean')a
inoremap <silent> <Plug>(seeing_is_believing-run_-x) :call xmpfilter#run('i', '-x')a
imap <silent> <Plug>(seeing_is_believing-mark) <Plug>(xmpfilter-mark)
inoremap <silent> <Plug>(xmpfilter-run) :call xmpfilter#run('i', '')a
inoremap <silent> <Plug>(xmpfilter-mark) :call xmpfilter#mark('i')a
inoremap <silent> <S-Tab> =BackwardsSnippet()
inoremap <C-Tab> 	
inoremap <silent> <Plug>ragtagXmlV ="&#".getchar().";"
inoremap <silent> <Plug>NERDCommenterInInsert  <BS>:call NERDComment(0, "insert")
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
inoremap <Plug>(EmmetExpandAbbr) =emmet#expandAbbr(0,"")<Right>
vnoremap  "*y
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
onoremap <silent> 9 :TComment count=9
onoremap <silent> 8 :TComment count=8
onoremap <silent> 7 :TComment count=7
onoremap <silent> 6 :TComment count=6
onoremap <silent> 5 :TComment count=5
onoremap <silent> 4 :TComment count=4
onoremap <silent> 3 :TComment count=3
onoremap <silent> 2 :TComment count=2
onoremap <silent> 1 :TComment count=1
onoremap <silent>  :TComment
vnoremap <silent> 9 :TCommentMaybeInline count=9
nnoremap <silent> 9 :TComment count=9
vnoremap <silent> 8 :TCommentMaybeInline count=8
nnoremap <silent> 8 :TComment count=8
vnoremap <silent> 7 :TCommentMaybeInline count=7
nnoremap <silent> 7 :TComment count=7
vnoremap <silent> 6 :TCommentMaybeInline count=6
nnoremap <silent> 6 :TComment count=6
vnoremap <silent> 5 :TCommentMaybeInline count=5
nnoremap <silent> 5 :TComment count=5
vnoremap <silent> 4 :TCommentMaybeInline count=4
nnoremap <silent> 4 :TComment count=4
vnoremap <silent> 3 :TCommentMaybeInline count=3
nnoremap <silent> 3 :TComment count=3
vnoremap <silent> 2 :TCommentMaybeInline count=2
nnoremap <silent> 2 :TComment count=2
vnoremap <silent> 1 :TCommentMaybeInline count=1
nnoremap <silent> 1 :TComment count=1
noremap ca :call tcomment#SetOption("as", input("Comment as: ", &filetype, "customlist,tcomment#Complete"))
noremap <silent> cc :call tcomment#SetOption("count", v:count1)
noremap s :TCommentAs =&ft_
noremap n :TCommentAs =&ft 
noremap a :TCommentAs 
noremap b :TCommentBlock
noremap <silent> i v:TCommentInline mode=I#
noremap <silent> r :TCommentRight
noremap   :TComment 
noremap <silent> p m`vip:TComment``
vnoremap <silent>  :TCommentMaybeInline
nnoremap <silent>  :TComment
snoremap % b<BS>%
snoremap ' b<BS>'
nnoremap ,e :python debugger_watch_input("eval")A
nmap , \
vnoremap . :norm.                               " in visual mode, "." will for each line, go into normal mode and execute the "."
xmap S <Plug>VSurround
snoremap U b<BS>U
map Y y$
nnoremap <silent> \__ :TComment
onoremap <silent> \__ :TComment
map \fs :set invfu
snoremap \ b<BS>\
noremap \_s :TCommentAs =&ft_
noremap \_n :TCommentAs =&ft 
noremap \_a :TCommentAs 
noremap \_b :TCommentBlock
noremap <silent> \_r :TCommentRight
xnoremap <silent> \_i :TCommentInline
noremap \_  :TComment 
noremap <silent> \_p vip:TComment
xnoremap <silent> \__ :TCommentMaybeInline
snoremap <silent> \__ :TComment
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
map \dt :python debugger_command('step_out')
map \do :python debugger_command('step_over')
map \di :python debugger_command('step_into')
map \dr :python debugger_resize()
nmap \j <Plug>(CommandTJump)
nmap \b <Plug>(CommandTBuffer)
nmap \A :tab split:Ack 
nmap \a :tab split:Ack ""<Left>
nnoremap <silent> \cw :Trim
map <silent> \nf :NERDTreeFind
map <silent> \nr :NERDTree
map <silent> \d :NERDTreeToggle
map <silent> \fr :CommandTFlush
map <silent> \fb :CommandTBuffer
map \t :CommandT
nmap \p orequire "pry"binding.pry;  " pry insertion
noremap \s :update
snoremap ^ b<BS>^
snoremap ` b<BS>`
nmap cs <Plug>Csurround
nmap ds <Plug>Dsurround
xnoremap <silent> gC :TCommentMaybeInline!
nnoremap <silent> gCc :let w:tcommentPos = getpos(".") | set opfunc=tcomment#OperatorLineAnywayg@$
nnoremap <silent> gC :let w:tcommentPos = getpos(".") | set opfunc=tcomment#OperatorAnywayg@
vmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
xmap g> <Plug>TComment_Comment
nmap <silent> g>b <Plug>TComment_Commentb
nmap <silent> g>c <Plug>TComment_Commentc
nmap <silent> g> <Plug>TComment_Comment
xmap g< <Plug>TComment_Uncomment
nmap <silent> g<b <Plug>TComment_Uncommentb
nmap <silent> g<c <Plug>TComment_Uncommentc
nmap <silent> g< <Plug>TComment_Uncomment
xnoremap <silent> gc :TCommentMaybeInline
nmap <silent> gcb <Plug>TComment_gcb
nnoremap <silent> gcc :let w:tcommentPos = getpos(".") | set opfunc=tcomment#OperatorLineg@$
nnoremap <silent> gc9c :let w:tcommentPos = getpos(".") | call tcomment#SetOption("count", 9) | set opfunc=tcomment#Operatorg@
nmap <silent> gc9 <Plug>TComment_gc9
nnoremap <silent> gc8c :let w:tcommentPos = getpos(".") | call tcomment#SetOption("count", 8) | set opfunc=tcomment#Operatorg@
nmap <silent> gc8 <Plug>TComment_gc8
nnoremap <silent> gc7c :let w:tcommentPos = getpos(".") | call tcomment#SetOption("count", 7) | set opfunc=tcomment#Operatorg@
nmap <silent> gc7 <Plug>TComment_gc7
nnoremap <silent> gc6c :let w:tcommentPos = getpos(".") | call tcomment#SetOption("count", 6) | set opfunc=tcomment#Operatorg@
nmap <silent> gc6 <Plug>TComment_gc6
nnoremap <silent> gc5c :let w:tcommentPos = getpos(".") | call tcomment#SetOption("count", 5) | set opfunc=tcomment#Operatorg@
nmap <silent> gc5 <Plug>TComment_gc5
nnoremap <silent> gc4c :let w:tcommentPos = getpos(".") | call tcomment#SetOption("count", 4) | set opfunc=tcomment#Operatorg@
nmap <silent> gc4 <Plug>TComment_gc4
nnoremap <silent> gc3c :let w:tcommentPos = getpos(".") | call tcomment#SetOption("count", 3) | set opfunc=tcomment#Operatorg@
nmap <silent> gc3 <Plug>TComment_gc3
nnoremap <silent> gc2c :let w:tcommentPos = getpos(".") | call tcomment#SetOption("count", 2) | set opfunc=tcomment#Operatorg@
nmap <silent> gc2 <Plug>TComment_gc2
nnoremap <silent> gc1c :let w:tcommentPos = getpos(".") | call tcomment#SetOption("count", 1) | set opfunc=tcomment#Operatorg@
nmap <silent> gc1 <Plug>TComment_gc1
nnoremap <silent> gc :if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") | set opfunc=tcomment#Operatorg@
xmap gS <Plug>VgSurround
nmap gl :cwindow>
nmap gq :ccl
nmap gp :cprev
nmap gn :cnext
nmap g* :Ggrep 
nmap g/ :Ggrep 
omap ic <Plug>TComment_ic
vmap ic <Plug>TComment_ic
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
nnoremap <Plug>TComment_ :TComment
snoremap <Plug>TComment_\__ :TComment
nnoremap <Plug>TComment_\__ :TComment
nnoremap <Plug>TComment_1 :call tcomment#SetOption("count", 1)
nnoremap <Plug>TComment_2 :call tcomment#SetOption("count", 2)
nnoremap <Plug>TComment_3 :call tcomment#SetOption("count", 3)
nnoremap <Plug>TComment_4 :call tcomment#SetOption("count", 4)
nnoremap <Plug>TComment_5 :call tcomment#SetOption("count", 5)
nnoremap <Plug>TComment_6 :call tcomment#SetOption("count", 6)
nnoremap <Plug>TComment_7 :call tcomment#SetOption("count", 7)
nnoremap <Plug>TComment_8 :call tcomment#SetOption("count", 8)
nnoremap <Plug>TComment_9 :call tcomment#SetOption("count", 9)
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
vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
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
nnoremap <SNR>59_: :=v:count ? v:count : ''
nnoremap <silent> <Plug>TComment_gc9c :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_gc9cg@
nnoremap <silent> <Plug>TComment_gc8c :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_gc8cg@
nnoremap <silent> <Plug>TComment_gc7c :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_gc7cg@
nnoremap <silent> <Plug>TComment_gc6c :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_gc6cg@
nnoremap <silent> <Plug>TComment_gc5c :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_gc5cg@
nnoremap <silent> <Plug>TComment_gc4c :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_gc4cg@
nnoremap <silent> <Plug>TComment_gc3c :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_gc3cg@
nnoremap <silent> <Plug>TComment_gc2c :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_gc2cg@
nnoremap <silent> <Plug>TComment_gc1c :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_gc1cg@
vnoremap <Plug>TComment_9 :call tcomment#SetOption("count", 9)
onoremap <Plug>TComment_9 :call tcomment#SetOption("count", 9)
vnoremap <Plug>TComment_8 :call tcomment#SetOption("count", 8)
onoremap <Plug>TComment_8 :call tcomment#SetOption("count", 8)
vnoremap <Plug>TComment_7 :call tcomment#SetOption("count", 7)
onoremap <Plug>TComment_7 :call tcomment#SetOption("count", 7)
vnoremap <Plug>TComment_6 :call tcomment#SetOption("count", 6)
onoremap <Plug>TComment_6 :call tcomment#SetOption("count", 6)
vnoremap <Plug>TComment_5 :call tcomment#SetOption("count", 5)
onoremap <Plug>TComment_5 :call tcomment#SetOption("count", 5)
vnoremap <Plug>TComment_4 :call tcomment#SetOption("count", 4)
onoremap <Plug>TComment_4 :call tcomment#SetOption("count", 4)
vnoremap <Plug>TComment_3 :call tcomment#SetOption("count", 3)
onoremap <Plug>TComment_3 :call tcomment#SetOption("count", 3)
vnoremap <Plug>TComment_2 :call tcomment#SetOption("count", 2)
onoremap <Plug>TComment_2 :call tcomment#SetOption("count", 2)
vnoremap <Plug>TComment_1 :call tcomment#SetOption("count", 1)
onoremap <Plug>TComment_1 :call tcomment#SetOption("count", 1)
nnoremap <silent> <Plug>TComment_gc :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_gcg@
xnoremap <Plug>TComment_gc :TCommentMaybeInline
nnoremap <silent> <Plug>TComment_gcb :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_gcbg@
nnoremap <silent> <Plug>TComment_gcc :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_gccg@$
noremap <Plug>TComment_ic :call tcomment#TextObjectInlineComment()
xnoremap <silent> <Plug>TComment_Comment :if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | '<,'>TCommentMaybeInline!
nnoremap <silent> <Plug>TComment_Commentb :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_Commentbg@
nnoremap <silent> <Plug>TComment_Commentc :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_Commentcg@$
nnoremap <silent> <Plug>TComment_Comment :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_Commentg@
xnoremap <silent> <Plug>TComment_Uncomment :if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | call tcomment#SetOption("mode_extra", "U") | '<,'>TCommentMaybeInline
nnoremap <silent> <Plug>TComment_Uncommentb :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_Uncommentbg@
nnoremap <silent> <Plug>TComment_Uncommentc :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_Uncommentcg@$
nnoremap <silent> <Plug>TComment_Uncomment :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_Uncommentg@
noremap <Plug>TComment_\_s :TCommentAs =&ft_
noremap <Plug>TComment_\_n :TCommentAs =&ft 
noremap <Plug>TComment_\_a :TCommentAs 
noremap <Plug>TComment_\_b :TCommentBlock
noremap <Plug>TComment_\_r :TCommentRight
xnoremap <Plug>TComment_\_i :TCommentInline
noremap <Plug>TComment_\_  :TComment 
noremap <Plug>TComment_\_p vip:TComment
xnoremap <Plug>TComment_\__ :TCommentMaybeInline
onoremap <Plug>TComment_\__ :TComment
noremap <Plug>TComment_ca :call tcomment#SetOption("as", input("Comment as: ", &filetype, "customlist,tcomment#Complete"))
noremap <Plug>TComment_cc :call tcomment#SetOption("count", v:count1)
noremap <Plug>TComment_s :TCommentAs =&ft_
noremap <Plug>TComment_n :TCommentAs =&ft 
noremap <Plug>TComment_a :TCommentAs 
noremap <Plug>TComment_b :TCommentBlock
noremap <Plug>TComment_i v:TCommentInline mode=I#
noremap <Plug>TComment_r :TCommentRight
noremap <Plug>TComment_  :TComment 
noremap <Plug>TComment_p m`vip:TComment``
vnoremap <Plug>TComment_ :TCommentMaybeInline
onoremap <Plug>TComment_ :TComment
nnoremap <silent> <Plug>ZoomWin :set lz|sil call ZoomWin#ZoomWin()|set nolz
vnoremap <silent> <Plug>(seeing_is_believing-run) :call xmpfilter#run('v', '')
nnoremap <silent> <Plug>(seeing_is_believing-run) :call xmpfilter#run('n', '')
vnoremap <silent> <Plug>(seeing_is_believing-clean) :call xmpfilter#run('v', '-Ku --clean')
nnoremap <silent> <Plug>(seeing_is_believing-clean) :call xmpfilter#run('n', '-Ku --clean')
vnoremap <silent> <Plug>(seeing_is_believing-run_-x) :call xmpfilter#run('v', '-x')
nnoremap <silent> <Plug>(seeing_is_believing-run_-x) :call xmpfilter#run('n', '-x')
vmap <silent> <Plug>(seeing_is_believing-mark) <Plug>(xmpfilter-mark)
nmap <silent> <Plug>(seeing_is_believing-mark) <Plug>(xmpfilter-mark)
vnoremap <silent> <Plug>(xmpfilter-run) :call xmpfilter#run('v', '')
nnoremap <silent> <Plug>(xmpfilter-run) :call xmpfilter#run('n', '')
vnoremap <silent> <Plug>(xmpfilter-mark) :call xmpfilter#mark('v')
nnoremap <silent> <Plug>(xmpfilter-mark) :call xmpfilter#mark('n')
nnoremap <silent> <Plug>SurroundRepeat .
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
map <F12> :python debugger_watch_input("property_get", '<cword>')A
map <F11> :python debugger_watch_input("context_get")A
map <F9> :python debugger_command('step_out')
map <F8> :python debugger_command('step_over')
map <F7> :python debugger_command('step_into')
map <F6> :python debugger_quit()
map <F5> :python debugger_run()
map <F4> :python debugger_command('step_out')
map <F3> :python debugger_command('step_over')
map <F2> :python debugger_command('step_into')
map <F1> :python debugger_resize()
nnoremap <silent> <Plug>(CommandTTag) :CommandTTag
nnoremap <silent> <Plug>(CommandTSearch) :CommandTSearch
nnoremap <silent> <Plug>(CommandTMRU) :CommandTMRU
nnoremap <silent> <Plug>(CommandTLine) :CommandTLine
nnoremap <silent> <Plug>(CommandTCommand) :CommandTCommand
nnoremap <silent> <Plug>(CommandTJump) :CommandTJump
nnoremap <silent> <Plug>(CommandTHistory) :CommandTHistory
nnoremap <silent> <Plug>(CommandTHelp) :CommandTHelp
nnoremap <silent> <Plug>(CommandTBuffer) :CommandTBuffer
nnoremap <silent> <Plug>(CommandT) :CommandT
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
inoremap s :TCommentAs =&ft_
inoremap n :TCommentAs =&ft 
inoremap a :TCommentAs 
inoremap b :TCommentBlock
inoremap <silent> i v:TCommentInline mode=#
inoremap <silent> r :TCommentRight
inoremap   :TComment 
inoremap <silent> p :norm! m`vip:TComment``
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
set langmenu=none
set laststatus=2
set mouse=a
set omnifunc=csscomplete#CompleteCSS
set printexpr=system('open\ -a\ Preview\ '.v:fname_in)\ +\ v:shell_error
set pythondll=/usr/local/Frameworks/Python.framework/Versions/2.7/Python
set pythonhome=/usr/local/Frameworks/Python.framework/Versions/2.7
set pyxversion=2
set ruler
set runtimepath=~/.vim,~/.vim/bundle/Command-T,~/.vim/bundle/bufexplorer-7.3.3,~/.vim/bundle/ctrlp.vim,~/.vim/bundle/emmet-vim,~/.vim/bundle/html5.vim,~/.vim/bundle/jshint.vim,~/.vim/bundle/nerdtree,~/.vim/bundle/snipmate.vim,~/.vim/bundle/syntastic,~/.vim/bundle/tComment,~/.vim/bundle/vim-bundler,~/.vim/bundle/vim-coffee-script,~/.vim/bundle/vim-colors-solarized,~/.vim/bundle/vim-fugitive,~/.vim/bundle/vim-golang,~/.vim/bundle/vim-haml,~/.vim/bundle/vim-javascript,~/.vim/bundle/vim-powerline,~/.vim/bundle/vim-rails,~/.vim/bundle/vim-ruby,~/.vim/bundle/VimClojure,/usr/local/Cellar/macvim/7.3-66/MacVim.app/Contents/Resources/vim/vimfiles,/usr/local/Cellar/macvim/7.3-66/MacVim.app/Contents/Resources/vim/runtime,/usr/local/Cellar/macvim/7.3-66/MacVim.app/Contents/Resources/vim/vimfiles/after,~/.vim/bundle/snipmate.vim/after,~/.vim/bundle/vim-coffee-script/after,~/.vim/after
set scrolloff=5
set shiftwidth=2
set shortmess=aoO
set showmatch
set noshowmode
set smartcase
set softtabstop=2
set noswapfile
set tabstop=2
set termencoding=utf-8
set timeoutlen=100
set visualbell
set window=52
set winminwidth=15
set winwidth=95
set nowritebackup
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 .bashrc
badd +39 .zshrc
badd +88 .bash_profile
badd +46 .zshenv
badd +2 .profile
badd +19 .bash_history
argglobal
silent! argdel *
$argadd .profile
edit .bashrc
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=1 winheight=1 winminwidth=1 winwidth=1
argglobal
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
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
if &filetype != 'sh'
setlocal filetype=sh
endif
setlocal fixendofline
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
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal nomacmeta
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=csscomplete#CompleteCSS
setlocal path=
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
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!Pl#Statusline(0,1)
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'sh'
setlocal syntax=sh
endif
setlocal tabstop=2
setlocal tagcase=
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
let s:l = 235 - ((45 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
235
normal! 0
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=95 shortmess=aoO
set winminheight=1 winminwidth=15
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
