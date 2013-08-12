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
imap <silent> <F8> <Plug>InsShowScratchBuffer
inoremap <silent> <Plug>NERDCommenterInInsert  <BS>:call NERDComment(0, "insert")
nnoremap  h
nnoremap <NL> j
nnoremap  k
nnoremap  l
nnoremap <silent>  :CtrlP
nmap o <Plug>ZoomWin
vnoremap <silent> 9 :TCommentMaybeInline count=9
nnoremap <silent> 9 :TComment count=9
onoremap <silent> 9 :TComment count=9
vnoremap <silent> 8 :TCommentMaybeInline count=8
nnoremap <silent> 8 :TComment count=8
onoremap <silent> 8 :TComment count=8
vnoremap <silent> 7 :TCommentMaybeInline count=7
nnoremap <silent> 7 :TComment count=7
onoremap <silent> 7 :TComment count=7
vnoremap <silent> 6 :TCommentMaybeInline count=6
nnoremap <silent> 6 :TComment count=6
onoremap <silent> 6 :TComment count=6
vnoremap <silent> 5 :TCommentMaybeInline count=5
nnoremap <silent> 5 :TComment count=5
onoremap <silent> 5 :TComment count=5
vnoremap <silent> 4 :TCommentMaybeInline count=4
nnoremap <silent> 4 :TComment count=4
onoremap <silent> 4 :TComment count=4
vnoremap <silent> 3 :TCommentMaybeInline count=3
nnoremap <silent> 3 :TComment count=3
onoremap <silent> 3 :TComment count=3
vnoremap <silent> 2 :TCommentMaybeInline count=2
nnoremap <silent> 2 :TComment count=2
onoremap <silent> 2 :TComment count=2
vnoremap <silent> 1 :TCommentMaybeInline count=1
nnoremap <silent> 1 :TComment count=1
onoremap <silent> 1 :TComment count=1
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
onoremap <silent>  :TComment
nmap , \
vnoremap . :norm.                               " in visual mode, "." will for each line, go into normal mode and execute the "."
xmap S <Plug>VSurround
map Y y$
map \fs :set invfu
noremap \_s :TCommentAs =&ft_
noremap \_n :TCommentAs =&ft 
noremap \_a :TCommentAs 
noremap \_b :TCommentBlock
noremap <silent> \_r :TCommentRight
xnoremap <silent> \_i :TCommentInline
noremap \_  :TComment 
noremap <silent> \_p vip:TComment
xnoremap <silent> \__ :TCommentMaybeInline
nnoremap <silent> \__ :TComment
snoremap <silent> \__ :TComment
onoremap <silent> \__ :TComment
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
nnoremap \www :mksession! ~/.vim/Session.vim:qa!
nnoremap \q :mksession! ~/.vim/Session.vim:wqa
nnoremap <silent> \cw :Trim
nmap \A :tab split:Ack 
nmap \a :tab split:Ack ""<Left>
map <silent> \nf :NERDTreeFind
map <silent> \nr :NERDTree
map <silent> \d :NERDTreeToggle
map <silent> \fr :CommandTFlush
map <silent> \fb :CommandTBuffer
map \t :CommandT
nmap \p orequire "pry"binding.pry;  " pry insertion
nmap cs <Plug>Csurround
nmap ds <Plug>Dsurround
nmap gx <Plug>NetrwBrowseX
xnoremap <silent> gC :TCommentMaybeInline!
nnoremap <silent> gCc :let w:tcommentPos = getpos(".") | set opfunc=tcomment#OperatorLineAnywayg@$
nnoremap <silent> gC :let w:tcommentPos = getpos(".") | set opfunc=tcomment#OperatorAnywayg@
xnoremap <silent> gc :TCommentMaybeInline
nnoremap <silent> gcc :let w:tcommentPos = getpos(".") | set opfunc=tcomment#OperatorLineg@$
nnoremap <silent> gc9c :let w:tcommentPos = getpos(".") | call tcomment#SetOption("count", 9) | set opfunc=tcomment#Operatorg@
nnoremap <silent> gc8c :let w:tcommentPos = getpos(".") | call tcomment#SetOption("count", 8) | set opfunc=tcomment#Operatorg@
nnoremap <silent> gc7c :let w:tcommentPos = getpos(".") | call tcomment#SetOption("count", 7) | set opfunc=tcomment#Operatorg@
nnoremap <silent> gc6c :let w:tcommentPos = getpos(".") | call tcomment#SetOption("count", 6) | set opfunc=tcomment#Operatorg@
nnoremap <silent> gc5c :let w:tcommentPos = getpos(".") | call tcomment#SetOption("count", 5) | set opfunc=tcomment#Operatorg@
nnoremap <silent> gc4c :let w:tcommentPos = getpos(".") | call tcomment#SetOption("count", 4) | set opfunc=tcomment#Operatorg@
nnoremap <silent> gc3c :let w:tcommentPos = getpos(".") | call tcomment#SetOption("count", 3) | set opfunc=tcomment#Operatorg@
nnoremap <silent> gc2c :let w:tcommentPos = getpos(".") | call tcomment#SetOption("count", 2) | set opfunc=tcomment#Operatorg@
nnoremap <silent> gc1c :let w:tcommentPos = getpos(".") | call tcomment#SetOption("count", 1) | set opfunc=tcomment#Operatorg@
nnoremap <silent> gc :if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") | set opfunc=tcomment#Operatorg@
xmap gS <Plug>VgSurround
nmap gl :cwindow>
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
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
nnoremap <silent> <Plug>SurroundRepeat .
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
nmap <silent> <F8> <Plug>ShowScratchBuffer
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
vmap <BS> "-d
cnoremap  <Home>
cnoremap  <Left>
cnoremap  <Right>
imap S <Plug>ISurround
imap s <Plug>Isurround
imap  ->
imap   => 
imap  <Plug>Isurround
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
set isident=@,48-57,_,192-255,$
set iskeyword=@,48-57,_,192-255,$
set langmenu=none
set laststatus=2
set mouse=a
set printexpr=system('open\ -a\ Preview\ '.v:fname_in)\ +\ v:shell_error
set ruler
set runtimepath=~/.vim,~/.vim/bundle/Command-T,~/.vim/bundle/VimClojure,~/.vim/bundle/bufexplorer-7.3.3,~/.vim/bundle/ctrlp.vim,~/.vim/bundle/html5.vim,~/.vim/bundle/jshint.vim,~/.vim/bundle/nerdtree,~/.vim/bundle/surround.vim,~/.vim/bundle/syntastic,~/.vim/bundle/tComment,~/.vim/bundle/vim-bundler,~/.vim/bundle/vim-coffee-script,~/.vim/bundle/vim-colors-solarized,~/.vim/bundle/vim-fugitive,~/.vim/bundle/vim-golang,~/.vim/bundle/vim-javascript,~/.vim/bundle/vim-powerline,~/.vim/bundle/vim-rails,~/.vim/bundle/vim-ruby,/usr/local/Cellar/macvim/7.3-66/MacVim.app/Contents/Resources/vim/vimfiles,/usr/local/Cellar/macvim/7.3-66/MacVim.app/Contents/Resources/vim/runtime,/usr/local/Cellar/macvim/7.3-66/MacVim.app/Contents/Resources/vim/vimfiles/after,~/.vim/bundle/vim-coffee-script/after,~/.vim/after
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
cd ~/Projects/aweone
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +0 config/routes.rb
badd +0 app/views/posts/show.html.erb
args .
edit config/routes.rb
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
nnoremap <buffer> <silent> g} :exe        "ptjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent> } :exe          "ptag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g] :exe      "stselect =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g :exe        "stjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent>  :exe v:count1."stag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> ] :exe v:count1."stag =RubyCursorIdentifier()"
nnoremap <buffer> <silent>  :exe  v:count1."tag =RubyCursorIdentifier()"
nmap <buffer> gf <Plug>RailsFind
nnoremap <buffer> <silent> g] :exe       "tselect =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g :exe         "tjump =RubyCursorIdentifier()"
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
set cursorline
setlocal cursorline
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
setlocal path=lib,vendor,app/models/concerns,app/controllers/concerns,app/controllers,app/helpers,app/mailers,app/models,app/*,app/views,test,test/unit,test/functional,test/integration,test/controllers,test/helpers,test/mailers,test/models,vendor/plugins/*/lib,vendor/plugins/*/test,vendor/rails/*/lib,vendor/rails/*/test,~/Projects/aweone,~/.rvm/rubies/ruby-1.9.3-p374/lib/ruby/site_ruby/1.9.1,~/.rvm/rubies/ruby-1.9.3-p374/lib/ruby/site_ruby/1.9.1/x86_64-darwin12.2.0,~/.rvm/rubies/ruby-1.9.3-p374/lib/ruby/site_ruby,~/.rvm/rubies/ruby-1.9.3-p374/lib/ruby/vendor_ruby/1.9.1,~/.rvm/rubies/ruby-1.9.3-p374/lib/ruby/vendor_ruby/1.9.1/x86_64-darwin12.2.0,~/.rvm/rubies/ruby-1.9.3-p374/lib/ruby/vendor_ruby,~/.rvm/rubies/ruby-1.9.3-p374/lib/ruby/1.9.1,~/.rvm/rubies/ruby-1.9.3-p374/lib/ruby/1.9.1/x86_64-darwin12.2.0,~/.rvm/gems/ruby-1.9.3-p374@aweone/bundler/gems/spree-72645302753f/lib,~/.rvm/gems/ruby-1.9.3-p374@aweone/bundler/gems/spree-72645302753f/api/lib,~/.rvm/gems/ruby-1.9.3-p374@aweone/bundler/gems/spree-72645302753f/cmd/lib,~/
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
setlocal tags=~/Projects/aweone/tags,~/Projects/aweone/tmp/tags,~/Projects/aweone/.git/ruby.tags,~/Projects/aweone/.git/tags,./tags,tags,~/.rvm/rubies/ruby-1.9.3-p374/lib/ruby/site_ruby/1.9.1/tags,~/.rvm/rubies/ruby-1.9.3-p374/lib/ruby/site_ruby/1.9.1/x86_64-darwin12.2.0/tags,~/.rvm/rubies/ruby-1.9.3-p374/lib/ruby/site_ruby/tags,~/.rvm/rubies/ruby-1.9.3-p374/lib/ruby/vendor_ruby/1.9.1/tags,~/.rvm/rubies/ruby-1.9.3-p374/lib/ruby/vendor_ruby/1.9.1/x86_64-darwin12.2.0/tags,~/.rvm/rubies/ruby-1.9.3-p374/lib/ruby/vendor_ruby/tags,~/.rvm/rubies/ruby-1.9.3-p374/lib/ruby/1.9.1/tags,~/.rvm/rubies/ruby-1.9.3-p374/lib/ruby/1.9.1/x86_64-darwin12.2.0/tags,~/.rvm/gems/ruby-1.9.3-p374@aweone/bundler/gems/spree-72645302753f/tags,~/.rvm/gems/ruby-1.9.3-p374@aweone/bundler/gems/spree-72645302753f/api/tags,~/.rvm/gems/ruby-1.9.3-p374@aweone/bundler/gems/spree-72645302753f/cmd/tags,~/.rvm/gems/ruby-1.9.3-p374@aweone/bundler/gems/spree-72645302753f/core/tags,~/.rvm/gems/ruby-1.9.3-p374@aweone/bundler/gems/spree-72645302753f/dash/tags,~/.rvm/g
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
let s:l = 1 - ((0 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd ~/Projects/aweone
tabedit ~/Projects/aweone/app/views/posts/show.html.erb
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
nnoremap <buffer> <silent> g} :exe        "ptjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent> } :exe          "ptag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g] :exe      "stselect =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g :exe        "stjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent>  :exe v:count1."stag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> ] :exe v:count1."stag =RubyCursorIdentifier()"
nnoremap <buffer> <silent>  :exe  v:count1."tag =RubyCursorIdentifier()"
nmap <buffer> gf <Plug>RailsFind
nnoremap <buffer> <silent> g] :exe       "tselect =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g :exe         "tjump =RubyCursorIdentifier()"
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
set cursorline
setlocal cursorline
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
setlocal path=lib,vendor,app/models/concerns,app/controllers/concerns,app/controllers,app/helpers,app/mailers,app/models,app/*,app/views,app/views/posts,public,test,test/unit,test/functional,test/integration,test/controllers,test/helpers,test/mailers,test/models,vendor/plugins/*/lib,vendor/plugins/*/test,vendor/rails/*/lib,vendor/rails/*/test,~/Projects/aweone,~/.rvm/rubies/ruby-1.9.3-p374/lib/ruby/site_ruby/1.9.1,~/.rvm/rubies/ruby-1.9.3-p374/lib/ruby/site_ruby/1.9.1/x86_64-darwin12.2.0,~/.rvm/rubies/ruby-1.9.3-p374/lib/ruby/site_ruby,~/.rvm/rubies/ruby-1.9.3-p374/lib/ruby/vendor_ruby/1.9.1,~/.rvm/rubies/ruby-1.9.3-p374/lib/ruby/vendor_ruby/1.9.1/x86_64-darwin12.2.0,~/.rvm/rubies/ruby-1.9.3-p374/lib/ruby/vendor_ruby,~/.rvm/rubies/ruby-1.9.3-p374/lib/ruby/1.9.1,~/.rvm/rubies/ruby-1.9.3-p374/lib/ruby/1.9.1/x86_64-darwin12.2.0,~/.rvm/gems/ruby-1.9.3-p374@aweone/bundler/gems/spree-72645302753f/lib,~/.rvm/gems/ruby-1.9.3-p374@aweone/bundler/gems/spree-72645302753f/api/lib,~/.rvm/gems/ruby-1.9.3-p374@aweone/bundler/gems/spree-
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
setlocal tags=~/Projects/aweone/tags,~/Projects/aweone/tmp/tags,~/Projects/aweone/.git/eruby.tags,~/Projects/aweone/.git/tags,./tags,tags,~/.rvm/rubies/ruby-1.9.3-p374/lib/ruby/site_ruby/1.9.1/tags,~/.rvm/rubies/ruby-1.9.3-p374/lib/ruby/site_ruby/1.9.1/x86_64-darwin12.2.0/tags,~/.rvm/rubies/ruby-1.9.3-p374/lib/ruby/site_ruby/tags,~/.rvm/rubies/ruby-1.9.3-p374/lib/ruby/vendor_ruby/1.9.1/tags,~/.rvm/rubies/ruby-1.9.3-p374/lib/ruby/vendor_ruby/1.9.1/x86_64-darwin12.2.0/tags,~/.rvm/rubies/ruby-1.9.3-p374/lib/ruby/vendor_ruby/tags,~/.rvm/rubies/ruby-1.9.3-p374/lib/ruby/1.9.1/tags,~/.rvm/rubies/ruby-1.9.3-p374/lib/ruby/1.9.1/x86_64-darwin12.2.0/tags,~/.rvm/gems/ruby-1.9.3-p374@aweone/bundler/gems/spree-72645302753f/tags,~/.rvm/gems/ruby-1.9.3-p374@aweone/bundler/gems/spree-72645302753f/api/tags,~/.rvm/gems/ruby-1.9.3-p374@aweone/bundler/gems/spree-72645302753f/cmd/tags,~/.rvm/gems/ruby-1.9.3-p374@aweone/bundler/gems/spree-72645302753f/core/tags,~/.rvm/gems/ruby-1.9.3-p374@aweone/bundler/gems/spree-72645302753f/dash/tags,~/.rvm/
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
lcd ~/Projects/aweone
tabnext 2
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
