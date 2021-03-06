" To disable a plugin, add it's bundle name to the following list
let g:pathogen_disabled = []

" for some reason the vim-sass-colors plugin conflicts with things in macvim
" but not in terminal Vim, so disable it if GUI is running
if has('gui_running')
    call add(g:pathogen_disabled, 'vim-css-color')
endif

execute pathogen#infect()
syntax on
filetype plugin indent on

" force YouCompleteMe to NOT use tab. NOTE: cycle through completion with <C-N> and <C-P> keys
let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]

" Trigger configuration.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

compiler ruby

""autosave when focus s lost
autocmd BufLeave,FocusLost * silent! wall

:""quick save
noremap <Leader>s :update<CR>

"" Allow usage of mouse in iTerm
set ttyfast
set mouse=a
set ttymouse=xterm2

""Copy and paste working between the system clipboard and Vim/Tmux(1 and 2)
"" 1. F2 before pasting to preserve indentation
set pastetoggle=<F2>

"" 2. Ctrl+c in visual mode sends selection to clipboard
vnoremap <C-c> "*y

"" Whitespace
set nowrap                      " don't wrap lines
set tabstop=2 shiftwidth=2      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching

"" Omnicomplete html snippets
""auto-completion...html
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags

"" Omnicomplete css snippets
set omnifunc=csscomplete#CompleteCSS
"" and to get this to work for sass
autocmd BufNewFile,BufRead *.scss             set ft=scss.css

"" Omnicomplete Ruby
if has("autocmd")
   autocmd FileType ruby set omnifunc=rubycomplete#Complete
   autocmd FileType ruby let g:rubycomplete_buffer_loading=1
   autocmd FileType ruby let g:rubycomplete_classes_in_global=1
endif

set number
set showmatch
set hidden
set textwidth=0 nosmartindent softtabstop=2
set ruler
set scrolloff=5
set nocompatible
set laststatus=2
set ignorecase
set smartcase

"" speed up mode switching
set timeoutlen=500
set timeoutlen=100

""set cursorline row and cursorcolumn

nmap <Leader>p orequire "pry"<CR>binding.pry<ESC>;  " pry insertion
vnoremap . :norm.<CR>                               " in visual mode, "." will for each line, go into normal mode and execute the "."

"" easier navigation between split windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

""copy paste to mac clipboard like normal person in visual mode
vnoremap <C-c> "*y

"" Zoomwin mapping
nnoremap <silent> <c-z> :ZoomWin<CR>

"" Emacs/Readline keybindings for commandline mode
cnoremap <C-A> <Home>
cnoremap <C-F> <Right>
cnoremap <C-B> <Left>
cnoremap <Esc>b <S-Left>
cnoremap <Esc>f <S-Right>

set nobackup
set nowritebackup
set noswapfile

"" set width of windows for splits
if has("gui_running")

else
  set winwidth=120
  set winminwidth=5
endif

set nolist "turns off invisibles
"set listchars=tab:\ \ ,trail: "this line throws an error..don't know why

"" folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use·

"" colorization
if $BPCOLOR == 'lite'
  set background=lite
else
  set background=dark
endif

"" cursor highlight color
"highlight Cursor guifg=red guibg=white

let g:solarized_termcolors=256
"colorscheme twilight-night
"colorscheme anotherdark
"colorscheme solarized
"colorscheme tomorrow-night


hi Search    ctermbg=none ctermfg=none cterm=underline
hi IncSearch ctermbg=none ctermfg=none cterm=bold,underline

"" plugin options
let NERDTreeMinimalUI           = 1
let NERDTreeQuitOnOpen          = 0
let NERDChristmasTree           = 1
let NERDTreeHighlightCursorline = 0
let NERDTreeWinSize             = 25
let NERDTreeDirArrows           = 1
let NERDTreeStatusline          = ' '
let NERDTreeShowHidden          = 1
let NERDTreeChDirMode           = 1
let NERDTreeShowLineNumbers     = 0
let NERDTreeMouseMode           = 2
let NERDTreeAutoCenter          = 1
let NERDTreeAutoCenterThreshold = 10
let NERDTreeIgnore              = ['\.git', '\.idea', '\.pyc', '\.jhw-cache','\.DS_Store']
let g:no_html_toolbar           = 'yes'
let g:Powerline_symbols         = 'fancy'
let g:CommandTMaxHeight         = 10
let g:CommandTMaxDepth          = 10
let coffee_no_trailing_space_error = 1
let g:acp_behaviorSnipmateLength = 1
let g:CSSLint_FileTypeList      = ['css','less','sess']
let g:mustache_abbreviations    = 1

autocmd QuickFixCmdPost *grep* cwindow

"" auto reload CommandTFlush on new file additions
augroup CommandTExtension
      autocmd!
      autocmd FocusGained * CommandTFlush
      autocmd BufWritePost * CommandTFlush
augroup END

"" key bindings
imap <C-L> <SPACE>=><SPACE>
imap <C-K> ->

nmap , \

map <Leader>t :CommandT<CR>
map <silent> <LocalLeader>fb :CommandTBuffer<CR>
map <silent> <LocalLeader>fr :CommandTFlush<CR>

map <silent> <LocalLeader>d :NERDTreeToggle<CR>
map <silent> <LocalLeader>nr :NERDTree<CR>
map <silent> <LocalLeader>nf :NERDTreeFind<CR>

nmap g/ :Ggrep<space>
nmap g* :Ggrep <C-R><C-W>
nmap gn :cnext<CR>
nmap gp :cprev<CR>
nmap gq :ccl<CR>
nmap gl :cwindow<CR>>

map Y y$

"" functions
function! Trim()
  exe "normal mz"
  %s/\s*$//
  exe "normal `z"
  exe "normal zz"
endfunction

command! -nargs=0 Trim :call Trim()
nnoremap <silent> <Leader>cw :Trim<CR>

""https://github.com/mileszs/ack.vim
let g:ackprg="ack -H --nocolor --nogroup --column"

""Open a new tab and search for something.
nmap <leader>a :tab split<CR>:Ack ""<Left>

""Immediately search for the word under the cursor in a new tab."
nmap <Leader>A :tab split<CR>:Ack <C-R><C-w><CR>

"" Open markdown files with Chrome. TODO does not work right now
autocmd FileType markdown nnoremap <buffer> <A-m>:!open -a "Google Chrome"<cr>
autocmd FileType md nnoremap <buffer> <A-m>:!open -a "Google Chrome"<cr>

" Assumes you have a Ruby with SiB available in the PATH
" If it doesn't work, you may need to `gem install seeing_is_believing`

" Annotate every line
  nmap <leader>b :%!seeing_is_believing --timeout 12 --line-length 500 --number-of-captures 300 --alignment-strategy chunk<CR>;

" Annotate marked lines
  nmap <leader>r :%.!seeing_is_believing --timeout 12 --line-length 500 --number-of-captures 300 --alignment-strategy chunk --xmpfilter-style<CR>;

" Remove annotations
  nmap <leader>c :%.!seeing_is_believing --clean<CR>;

" Mark the current line for annotation
  nmap <leader>m A # => <Esc>
" Mark the highlighted lines for annotation
  vmap <leader>m :norm A # => <Esc>

"" XMPFilter options (see ruby results inside vim with #=>)
"" us VISUAL mode, select item, use -u- to undo result
autocmd FileType ruby nmap <buffer> <D-m> <Plug>(xmpfilter-mark)
autocmd FileType ruby xmap <buffer> <D-m> <Plug>(xmpfilter-mark)
autocmd FileType ruby imap <buffer> <D-m> <Plug>(xmpfilter-mark)

autocmd FileType ruby nmap <buffer> <D-r> <Plug>(xmpfilter-run)
autocmd FileType ruby xmap <buffer> <D-r> <Plug>(xmpfilter-run)
autocmd FileType ruby imap <buffer> <D-r> <Plug>(xmpfilter-run)
