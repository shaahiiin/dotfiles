""" VIM CONFIG

let g:python3_host_prog='/usr/local/bin/python3'

""" Config
" Set tab length to 4
set tabstop=4
set softtabstop=0 noexpandtab
set shiftwidth=4
set expandtab
" For below filetypes, set to 2
autocmd FileType sh,javascript,typescript,typescript.tsx setlocal ts=2 sts=2 sw=2

set clipboard=unnamed   " share system clipboard with vim reg
set number              " show line numbers (with relative number shows current line number)
"set relativenumber     " set relative line numbering (for easier jumping with hjkl)
set cursorline          " show cursor line
set ignorecase          " ignore case for search
set wildignorecase      " ignore case for filename completions (cmd mode)
set smartcase           " if search string contains uppercase, switch to case sensitive search
set synmaxcol=0         " set syntax highlighting for long columns (> 3000 column length)
set mouse=n             " Mouse for scrolling and pointing (set mouse=a to enable in all modes)
set inccommand=nosplit  " Shows the effects of a substitute command incrementally as you type.
"set autoread           " automatically reload file (does not work as intended)
set noshowmode          " Do not show current mode (airline handles it)
"set scrolloff=2        " set scroll offset at end of page
set hidden              " allow switching buffers without having to save

" auto folding based on syntax
"set foldmethod=syntax
"set foldlevelstart=1

"let javaScript_fold=1         " JavaScript
"let sh_fold_enabled=1         " sh
"let vimsyn_folding='af'       " Vim script

" display special chars
set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·
set list

""" Plugins
call plug#begin('~/.local/share/nvim/plugged')


" Edits
Plug 'scrooloose/nerdcommenter'                            " easy commenting
"Plug 'tpope/vim-commentary'                               " easy commenting
Plug 'tpope/vim-surround'                                  " quoting/parenthesizing
Plug 'tpope/vim-abolish'                                   " coercion (change case of a text)
Plug 'jiangmiao/auto-pairs'                                " automatically open brackets in pairs
Plug 'gcmt/wildfire.vim'                                   " smart select inner text objects

" Motions
"Plug 'easymotion/vim-easymotion'                          " easy motions

" Code structure
Plug 'tmhedberg/SimpylFold'                                " python fold support
Plug 'scrooloose/nerdtree'                                 " show folder structure in vim
"Plug 'majutsushi/tagbar'                                  " view tags of file
Plug 'kshenoy/vim-signature'                               " better management of marks

" Themes / Colorschemes
Plug 'ayu-theme/ayu-vim'
Plug 'whatyouhide/vim-gotham'
Plug 'danilo-augusto/vim-afterglow'
Plug 'mhartington/oceanic-next'
Plug 'cocopon/iceberg.vim/'
Plug 'arcticicestudio/nord-vim'
Plug 'gruvbox-community/gruvbox'
Plug 'liuchengxu/space-vim-dark'

" Visual
"Plug 'altercation/vim-colors-solarized'                   " solarized theme
Plug 'vim-airline/vim-airline'                             " status line
Plug 'vim-airline/vim-airline-themes'                      " themes for airline
"Plug 'yuttie/comfortable-motion.vim'                      " Smooth scrolling
"Plug 'Yggdroot/indentLine'                                " Indent guides
Plug 'google/vim-searchindex'                              " show result count while searching
Plug 'chrisbra/Colorizer'                                  " display css colors

" Syntax highlight / language packs
Plug 'dense-analysis/ale'                                  " syntax plugin
"Plug 'scrooloose/syntastic'                               " syntax plugin
" Plug 'peitalin/vim-jsx-typescript'                         " tsx syntax highlighting
" Plug 'leafgarland/typescript-vim'                          " typescript syntax highlighting
Plug 'HerringtonDarkholme/yats.vim'                        " typescript syntax file (dependency for below)
" Plug 'mhartington/nvim-typescript', {'do': ':!install.sh \| UpdateRemotePlugins'}  " typescript
Plug 'vim-python/python-syntax'                            " python syntax highlighting
"Plug 'python-mode/python-mode',{ 'branch': 'develop' }    " python support - NOT WORKING
"Plug 'pangloss/vim-javascript'                            " js syntax highlighting
"Plug 'sheerun/vim-polyglot'                                " language packs

" Utility / Tools
Plug 'tpope/vim-fugitive'                                  " git wrapper
Plug 'airblade/vim-gitgutter'                              " show git diff in gutter
Plug 'christoomey/vim-tmux-navigator'                      " vim - tmux pane switching
" Plug 'ctrlpvim/ctrlp.vim'                                " fuzzy file/buffer/mru/tag search
Plug '/usr/local/opt/fzf'                                  " fuzzy file/buffer/mru/tag search (cmd line tool - installed with homebrew)
Plug 'junegunn/fzf.vim'                                    " vim plugin
"Plug 'mileszs/ack.vim'                                     " code searching tool (using ag) [ replaced by fzf.vim+ag ]
"Plug 'jceb/vim-orgmode'                                   " emacs org mode for vim
"Plug 'tpope/vim-dadbod'                                   " db conn with vim
"Plug 'takac/vim-hardtime'                                 " add delay on hjkl keys (easier hardmode)
Plug 'tpope/vim-obsession'                                 " Saves vim session
Plug 'voldikss/vim-floaterm'                               " show terminal using floating window
Plug 'mhinz/vim-startify'                                  " custom start screen

" Fun
Plug 'johngrib/vim-game-code-break'                        " vim game code break

call plug#end()

" Leader {{{
nnoremap <Space> <nop>
let mapleader = ","
" }}}

" Basic key maps {{{
" Disable accidental Ex mode
:nnoremap Q <Nop>
" Close current buffer (safely)
nnoremap <C-q> :bd<CR>
" Save file/buffer
nnoremap <silent> <C-s> :update<CR>
" Enable j/k to work on wrapped lines
"noremap j gj
"noremap k gk
" Swap ' and `
"nnoremap ' `
"nnoremap ` '
" Toggle relative numbers
nnoremap <leader>tn :set rnu!<CR>:set rnu?<CR>
" Toggle hl search
nnoremap <leader>th :set hls!<CR>:set hls?<CR>
" remove highlight from search
nnoremap <silent> <leader>oh :noh<CR>
" edit vimrc
nnoremap <leader>ev :e $MYVIMRC<CR>
" source vimrc
nnoremap <leader>sv :source $MYVIMRC<CR>
" vim split keymap
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
" }}}

" NerdTree {{{
map <C-n> :NERDTreeToggle<CR>
" }}}

" FZF {{{
" Show FZF
nnoremap <C-g> :FZF<CR>
" Show Ag
nnoremap <M-g> :Ag<CR>
" show buffers
nnoremap gb :Buffers<CR>
" }}}

" Tagbar {{{
"nnoremap <F8> :TagbarToggle<CR>

" Set default width
"let g:tagbar_width = 30
" }}}

" vim javascript {{{
  let g:javascript_conceal_function             = "ƒ"
  let g:javascript_conceal_null                 = "ø"
  let g:javascript_conceal_this                 = "@"
  let g:javascript_conceal_return               = "⇚"
  let g:javascript_conceal_undefined            = "¿"
  let g:javascript_conceal_NaN                  = "ℕ"
  let g:javascript_conceal_prototype            = "¶"
  let g:javascript_conceal_static               = "•"
  let g:javascript_conceal_super                = "Ω"
  let g:javascript_conceal_arrow_function       = "⇒"
  let g:javascript_conceal_noarg_arrow_function = "🞅"
  let g:javascript_conceal_underscore_arrow_function = "🞅"
" }}}

" Ale {{{
" gutter symbols
" let g:ale_sign_error = '✗'
" let g:ale_sign_warning = '∆'
let g:ale_sign_error = '• '
let g:ale_sign_warning = '•  '
let g:airline#extensions#ale#error_symbol='• '
let g:airline#extensions#ale#warning_symbol='•  '

" handle when to lint a file
"let g:ale_lint_on_text_changed = 'never'
"let g:ale_lint_on_insert_leave = 1

" auto complete
let g:ale_completion_enabled = 1

" linters
let g:ale_linters = {
\   'html': [],
\   'javascript': ['eslint'],
\   'typescript': ['tslint', 'tsserver'],
\   'typescript.tsx': ['tslint', 'tsserver'],
\   'python': ['flake8'],
\}

" fixers
let g:ale_fixers = {
\   'json': ['jq'],
\   'javascript': ['eslint'],
\   'typescript': ['tslint'],
\   'sql': ['sql-formatter-cli'],
\}

nnoremap <leader>gd :ALEGoToDefinition<CR>

" }}}

" NerdCommenter {{{
let g:NERDSpaceDelims = 1
" }}}

" Themes / Colorschemes {{{
if (has("termguicolors"))
  set termguicolors
endif
"set t_Co=256

" Solarized
" colorscheme solarized "Set color scheme
" set encoding=utf8
" set background=dark "Set dark background

" After glow theme
" let g:afterglow_blackout=1
" let g:afterglow_italic_comments=1
" colorscheme afterglow
" let g:airline_theme='afterglow'

" colorscheme OceanicNext
" colorscheme iceberg
" colorscheme nord

" Ayu theme
let ayucolor="dark"
colorscheme ayu
"
" colorscheme gotham256

" let g:gruvbox_italic=1
" colorscheme gruvbox

" colorscheme space-vim-dark
" hi Comment cterm=italic
" }}}

" CtrlP {{{
" Ignore these directories
set wildignore+=*/node_modules/*

let g:ctrlp_open_multiple_files = 'i'
" }}}

" Ack / Ag {{{
if executable('ag')
  let g:ackprg = 'ag --vimgrep --ignore node_modules'
endif
" }}}

" Airline {{{
augroup airline_config
  autocmd!
  let g:airline_powerline_fonts = 1
  let g:airline#extensions#tabline#buffer_nr_format = '%s '
  let g:airline#extensions#tabline#buffer_nr_show = 1
  let g:airline#extensions#tabline#enabled = 0
  let g:airline#extensions#tabline#fnamecollapse = 0
  let g:airline#extensions#tabline#fnamemod = ':t'
augroup END
" }}}

" HardTime {{{
let g:hardtime_default_on = 0
let g:hardtime_timeout = 1000
" let g:hardtime_showmsg = 1
"
" Or Manually enable hard mode
" nnoremap h <nop>
" nnoremap j <nop>
" nnoremap k <nop>
" nnoremap l <nop>
" }}}

" Comfortable motion {{{
"let g:comfortable_motion_interval = 250.0 / 60
" }}}

" indentLine {{{
"let g:indentLine_char = '▏'
" }}}

" Delete trailing whitespaces {{{
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\v\s+$//ge
  exe "normal `z"
  delmarks z
endfunc
noremap <leader>os :call DeleteTrailingWS()<CR>
" }}}

" Format json file [TODO: Run only on .json extension files]
"nnoremap <leader>fj :exe '%!python -m json.tool'<CR>

" vim-jsx-typescript {{{
" set filetypes as typescript.tsx
" autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescript.tsx
" }}}

" Auto pairs {{{
" let g:AutoPairsShortcutToggle=shellescape('<M-;>')
" }}}

" Wildfire {{{
" This selects the next closest text object
map <SPACE> <Plug>(wildfire-fuel)
" This selects the previous closest text object.
vmap <C-SPACE> <Plug>(wildfire-water)
" }}}
" Startify {{{
let g:ascii = [
        \]
let g:startify_custom_header = 'map(g:ascii + startify#fortune#boxed(), "\"   \".v:val")'
" }}}
