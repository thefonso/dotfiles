syntax on

filetype off
call pathogen#runtime_append_all_bundles()
filetype plugin indent on

compiler ruby

"" Whitespace
set nowrap                      " don't wrap lines
set tabstop=2 shiftwidth=2      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching


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
set cursorline

nmap <Leader>p orequire "pry"<CR>binding.pry<ESC>;  " pry insertion
vnoremap . :norm.<CR>                               " in visual mode, "." will for each line, go into normal mode and execute the "."

" easier navigation between split windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

set nobackup
set nowritebackup
set noswapfile

set winwidth=95
set winminwidth=15

set nolist "turns off invisibles
"set listchars=tab:\ \ ,trail: "this line throws an error..don't know why

" folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use·

" colorization
if $BPCOLOR == 'lite'
  set background=lite
else
  set background=dark
endif

let g:solarized_termcolors=256
colorscheme solarized

hi Search    ctermbg=none ctermfg=none cterm=underline
hi IncSearch ctermbg=none ctermfg=none cterm=bold,underline

" plugin options
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
let NERDTreeIgnore              = ['\.git', '\.pyc', '\.jhw-cache']
let g:no_html_toolbar           = 'yes'
let g:Powerline_symbols         = 'fancy'
let g:CommandTMaxHeight         = 10
let g:CommandTMaxDepth          = 10
let coffee_no_trailing_space_error = 1

autocmd QuickFixCmdPost *grep* cwindow

" key bindings
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

" functions
function! Trim()
  exe "normal mz"
  %s/\s*$//
  exe "normal `z"
  exe "normal zz"
endfunction

command! -nargs=0 Trim :call Trim()
nnoremap <silent> <Leader>cw :Trim<CR>
