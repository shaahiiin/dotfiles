" ================ General settings ================== {{{
filetype plugin indent on
syntax enable

set nocompatible
" Set default tab length to 4
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab

" Set font for GUI
set guifont=JetBrains\ Mono:h14

" Set tab length to 2 for JS based filetypes
au FileType javascript,typescript,typescript.tsx,typescriptreact setlocal ts=2 sts=2 sw=2
" For vim config files, fold on the comments with triple curly braces
au FileType vim setlocal foldmethod=marker
" Python PEP 8 indentation
au FileType python
  \ setlocal tabstop=4 |
  \ setlocal softtabstop=4 |
  \ setlocal shiftwidth=4 |
  \ setlocal textwidth=79 |
  \ setlocal expandtab |
  \ setlocal autoindent |
  \ setlocal fileformat=unix |
  " \ setlocal foldmethod=indent |

set clipboard=unnamedplus   " share system clipboard with vim register
if (has('mouse'))
    set mouse=a         " mouse support in all modes (:h mouse)
endif

" set scrolloff=1         " set scroll offset at end of page

set backspace=indent,eol,start  " normal backspace behaviour

" Appearance {{{
set number
" set relativenumber
set cursorline          " does this affect perf
" set synmaxcol=0         " set syntax highlighting for long columns (> 3000 column length)
set noshowcmd
set noshowmode
set noruler
set lazyredraw          " redraw only when we need to
set wrap
set updatetime=100      " update sign col (default 4000 is too long) - also controls swap file write delay
set conceallevel=0
set signcolumn=yes:1

if (has('nvim'))
  " set pumblend=20         " transparency in pop-up menu
  " set winblend=20         " transparency in floating window
endif

" statusline and tabline
set laststatus=0
set showtabline=2
" }}}

" Searching {{{
set ignorecase          " ignore case in command mode
set wildmenu
set wildmode=longest:full,full
set wildoptions=pum
set wildignorecase      " ignore case for filename completions (cmd mode)
" set smartcase           " if search string contains uppercase, switch to case sensitive search
set nohlsearch
set incsearch
if (has('nvim'))
  set inccommand=nosplit
endif
set shortmess-=S        " show search count
" }}}

" Buffers {{{
" set showtabline=2       " Always show tabline
set autoread            " Reload files changed outside vim
set hidden              " allow changed buffers to be 'hidden'

" Restore last cursor position and marks on open
au BufReadPost *
\ if line("'\"") > 1 && line("'\"") <= line("$") && &ft !~# 'commit'
\ |   exe "normal! g`\""
\ | endif
" }}}

" Windows {{{
set splitbelow
set splitright
" }}}

" Disable some in built plugins completely {{{
" let g:loaded_netrw            = 1
" let g:loaded_netrwPlugin      = 1
let g:loaded_matchparen       = 1
let g:loaded_matchit          = 1
let g:loaded_2html_plugin     = 1
let g:loaded_getscriptPlugin  = 1
let g:loaded_gzip             = 1
let g:loaded_logipat          = 1
let g:loaded_rrhelper         = 1
let g:loaded_spellfile_plugin = 1
let g:loaded_tarPlugin        = 1
let g:loaded_vimballPlugin    = 1
let g:loaded_zipPlugin        = 1
" }}}

" auto folding based on syntax
" set foldmethod=syntax
" set foldlevelstart=1

" display special chars
set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·
set list

" Security {{{
" modelines can be dangerous
" set modelines=0
" set nomodeline
" }}}

" ==================================================== }}}
