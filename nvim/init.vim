" ================ Vim config ========================
"
" TODO: join all mappings into one place
filetype plugin indent on
syntax enable
" For python / ruby plugin
let g:loaded_python_provider = 0
let g:python3_host_prog='/usr/local/bin/python3'
let g:ruby_host_prog='/usr/bin/ruby'
" let s:project_directories=['~/work', '~/code']

let g:vsnip_snippet_dir = '~/.config/vsnip'

" ================ Plugins =========================== {{{
call plug#begin('~/.local/share/nvim/plugged')

" ================ Operators / Editing =============== {{{
Plug 'tpope/vim-commentary'                                   " commenting
Plug 'tpope/vim-surround'                                     " quoting/parenthesizing
Plug 'tommcdo/vim-lion'                                       " aligning text around a char
" ==================================================== }}}

" ================ Motions =========================== {{{
Plug 'rhysd/clever-f.vim'
" ==================================================== }}}

" ================ Code structure ==================== {{{
Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': ':UpdateRemotePlugins', 'on': 'CHADOpen'} " file explorer
" Plug 'kyazdani42/nvim-web-devicons'
" Plug 'kyazdani42/nvim-tree.lua'
Plug 'liuchengxu/vista.vim', { 'on': 'Vista' }                " view tags and LSP symbols
" Plug 'kshenoy/vim-signature'                                  " better management of marks
" Plug 'tmhedberg/SimpylFold', { 'for': 'python' }              " python fold support
Plug 'Yggdroot/indentLine'                                    " indent lines
" ==================================================== }}}

" ================ Colorschemes/Themes =============== {{{
Plug 'ayu-theme/ayu-vim'
" Plug 'whatyouhide/vim-gotham'
" Plug 'danilo-augusto/vim-afterglow'
" Plug 'mhartington/oceanic-next'
Plug 'gruvbox-community/gruvbox'
" Plug 'liuchengxu/space-vim-dark'
Plug 'dracula/vim', { 'as': 'dracula' }
" Plug 'skbolton/embark'
" Plug 'chuling/equinusocio-material.vim'
" Plug 'NLKNguyen/papercolor-theme'
" Plug 'liuchengxu/space-vim-dark'
" Plug 'Badacadabra/vim-archery'
" Plug 'kyazdani42/blue-moon'
Plug 'ghifarit53/tokyonight-vim'
" Plug 'vigoux/oak'
" Plug 'alexanderjeurissen/lumiere.vim'
" Plug 'foxbunny/vim-amber'
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
Plug 'glepnir/zephyr-nvim'
" ==================================================== }}}

" ================ Appearance ======================== {{{
Plug 'itchyny/lightline.vim'                                  " status line
" Plug 'ryanoasis/vim-devicons'                                 " support file icons, etc
Plug 'RRethy/vim-illuminate'                                  " highlight word under cursor (like vscode)
" Plug 'junegunn/goyo.vim'                                      " zen mode
" Plug 'TaDaa/vimade'                                           " fade inactive windows
" Plug 'DanilaMihailov/beacon.nvim'                             " ping cursor location after every jump
" Plug 'Xuyuanp/scrollbar.nvim'                                 " scrollbar (disabled since this is based on cursor pos)
Plug 'wfxr/minimap.vim'
" ==================================================== }}}

" ================ Language ========================== {{{
" Plug 'peitalin/vim-jsx-typescript'                            " tsx syntax highlighting
" Plug 'leafgarland/typescript-vim'                             " typescript syntax highlighting
" Plug 'HerringtonDarkholme/yats.vim'                           " typescript syntax file (dependency for below)
" Plug 'mhartington/nvim-typescript', {'do': ':!install.sh \| UpdateRemotePlugins'}
" Plug 'vim-python/python-syntax', { 'for': 'python' }          " python syntax highlighting
" Plug 'neoclide/coc.nvim', {'branch': 'release'}               " completion engine
Plug 'sbdchd/neoformat'                                       " code formatter TODO: replace with inbuilt (formatprg)
" LSP
if has('nvim-0.5')
    " Completions (for lsp)
    Plug 'nvim-lua/completion-nvim'
    " LSP
    Plug 'neovim/nvim-lspconfig'
    Plug 'nvim-lua/lsp-status.nvim'
    Plug 'ojroques/nvim-lspfuzzy', {'branch': 'main'}
    " TreeSitter
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    " Plug 'romgrk/nvim-treesitter-context'
    " " causing 'cannot close last window' bug
    Plug 'nvim-treesitter/nvim-treesitter-textobjects'


    " Telescope (fuzzy finder)
    " Plug 'nvim-lua/popup.nvim'
    " Plug 'nvim-lua/plenary.nvim'
    " Plug 'nvim-telescope/telescope.nvim'
endif
" ==================================================== }}}

" ================ Utility / Tools =================== {{{
Plug 'tpope/vim-fugitive'                                     " git wrapper
Plug 'airblade/vim-gitgutter'                                 " git info in sign column + add hunk text object
" Plug 'mhinz/vim-signify'                                      " git gutter related info
Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'           " fuzzy search tool (cmd line tool - installed with homebrew)
" Plug 'mhinz/vim-grepper', { 'on': ['Grepper', '<plug>(GrepperOperator)'] }  " grep helper
Plug 'tpope/vim-dadbod'                                       " db conn with vim
Plug 'kristijanhusak/vim-dadbod-ui'                           " dadbod ui
" Plug 'psliwka/vim-smoothie'                                   " Smooth scrolling
Plug 'takac/vim-hardtime'                                     " add delay on hjkl keys (easier hardmode)
" Plug 'tpope/vim-obsession'                                    " Easier vim session management
" Plug 'mhinz/vim-startify'                                     " custom start screen, session management
" Plug 'hardcoreplayers/dashboard-nvim'                         " custom start screen (like doom emacs)
Plug 'chrisbra/NrrwRgn'                                       " narrow region like emacs
Plug 'AndrewRadev/linediff.vim'                               " narrow two blocks of text for diffing (use narrow region itself?)
" Plug 'gioele/vim-autoswap'                                    " Smartly deal with swap files
" Plug 'thaerkh/vim-workspace'                                  " Manage sessions in workspaces
" Plug 'honza/vim-snippets'                                     " Snippet files repository
" Snippets
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'

Plug 'simnalamburt/vim-mundo', {'on': 'MundoToggle'}          " undo tree plugin
Plug 'liuchengxu/vim-which-key',{'on': ['WhichKey', 'WhichKey!']} " interactively show mappings
Plug 'justinmk/vim-dirvish'                                   " browse directory / files
" Plug 'lfv89/vim-interestingwords'                             " persist word highlight
Plug 'airblade/vim-rooter'                                    " change pwd to project root if exists
Plug 'mhinz/vim-sayonara', { 'on': ['Sayonara', 'Sayonara!']}               " simplify closing buffers / windows
" ==================================================== }}}

" ================ Fun =============================== {{{
" Plug 'johngrib/vim-game-code-break'                           " vim game code break
" Plug 'skywind3000/vim-keysound'                               " play typewriter sounds on keystroke in insert mode
" Plug 'norcalli/typeracer.nvim'                                    " play typing speed game
" ==================================================== }}}

call plug#end()
" ==================================================== }}}

" ================ General settings ================== {{{
set nocompatible
" Set general tab length to 4
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab

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

set clipboard+=unnamedplus   " share system clipboard with vim register
if (has('mouse'))
    set mouse=a         " mouse support in all modes (:h mouse)
endif

" set scrolloff=1         " set scroll offset at end of page

set backspace=indent,eol,start  " normal backspace behaviour

" Appearance {{{
set number              " show line numbers (if relative number is set, shows line number on current line)
" set relativenumber    " set relative line numbering (for easier jumping with j and k)
" set cursorline          " show cursor line TODO: does this slow down vim perf
" set synmaxcol=0         " set syntax highlighting for long columns (> 3000 column length)
set showcmd             " Show incomplete cmds down the bottom
set noshowmode          " Do not show current mode (statusline handles it)
set lazyredraw          " redraw only when we need to
set wrap
set updatetime=100      " update sign col (default 4000 is too long) - also controls swap file write delay
set conceallevel=0      " no conceal

if (has('nvim'))
    set pumblend=20         " transparency in pop-up menu
    set winblend=20         " transparency in floating window
endif
" }}}

" Searching {{{
set ignorecase          " ignore case in command mode
set wildmenu
set wildmode=longest:full,full
set wildoptions=pum
set wildignorecase      " ignore case for filename completions (cmd mode)
" set smartcase           " if search string contains uppercase, switch to case sensitive search
set nohlsearch          " don't highlight search results
set incsearch           " set incremental search, like modern browsers
if (has('nvim'))
    set inccommand=nosplit " Shows the effects of a substitution incrementally as you type, but don't open split
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

" ================ Basic mappings ==================== {{{

" Leader {{{
let mapleader = " "
" }}}

" Disable accidental Ex mode
" nnoremap Q <nop>

" nnoremap s <nop>
" nnoremap S <nop>

" Emacs style bindings
" go to start of line
cnoremap <C-a> <C-b>
nnoremap <C-a> 0
inoremap <C-a> <C-o>^
" tnoremap <C-a> <C-b>
" go to end of line
nnoremap <C-e> $
inoremap <C-e> <C-o>$

" move word forward/backward
nnoremap <M-b> b
inoremap <M-b> <C-o>b
nnoremap <M-f> e
inoremap <M-f> <C-o>e

" Close current buffer (safely)
nnoremap q <cmd>confirm bd<CR>
nnoremap Q <cmd>confirm qa<CR>
" nnoremap <C-q> :confirm :q<CR> " Doesn't work in windows os

" give it a try and you will like it
nnoremap ; :
vnoremap ; :

" 0 switches between start of line and text (0 and ^)
nnoremap <expr> 0 getline('.')[: col('.') - 2] =~ '^\s*$' ? '0' : '0^'

" " f for search
" nnoremap f /
" vnoremap f /
" onoremap f /

" nnoremap F ?
" vnoremap F ?
" onoremap F ?

" TODO: try these bindings
" nnoremap x d
" vnoremap x d
" nnoremap d "_d
" vnoremap d "_d
" nnoremap D "_D

" nnoremap <leader>d d
" nnoremap <leader>D D
" vnoremap <leader>d d

nnoremap U <C-r>

nnoremap ]b :bn<CR>
nnoremap [b :bp<CR>

nnoremap ]q :cn<CR>
nnoremap [q :cp<CR>

" Easy window switching
" nnoremap <Tab> <C-w><C-w>
" nnoremap <S-Tab> <C-w><C-w>
" Save file/buffer
nnoremap <silent> <S-s> :update<CR>:echo 'File Saved'<CR>

" Y should work like C and D
nnoremap Y y$

" Toggle relative numbers
" nnoremap <leader>tn :set rnu!<CR>:set rnu?<CR>
" Toggle hl search
nnoremap <leader>th :set hls!<CR>:set hls?<CR>
" remove highlight from search
nnoremap <silent> <leader>oh :noh<CR>

" nnoremap \ <C-w>w

" highlight last inserted text
nnoremap gV `[v`]

" Longer scrolls
" nnoremap <C-e> 3<C-e>
" nnoremap <C-y> 3<C-y>

" Easier indenting
nnoremap > >>
nnoremap < <<
vnoremap > >gv
vnoremap < <gv

" Do exact string search
" nnoremap g/ /\<\><left><left>
" Do exact string in visually selected text
" vnoremap g/ <Esc>/\%V\<\><left><left>
" how to do exact string search without fzf

" Search withing visually selected text
vnoremap <M-/> <Esc>/\%V
" Search within screen
nnoremap <M-/> LVH<Esc>/\%V

" Substitutions
vnoremap gs "zy:%s/<C-r>"//gc<left><left><left>
nnoremap gs :%s/<C-r><C-w>//gc<left><left><left>

" Remap 'search mode' maps - 
set wildcharm=<C-z>
cnoremap <expr> <Tab>   getcmdtype() =~ '[\/?]' ? "<C-g>" : "<C-z>"
cnoremap <expr> <S-Tab> getcmdtype() =~ '[\/?]' ? "<C-t>" : "<S-Tab>"

" Terminal mode
nnoremap <F6> :let $VIM_DIR=expand('%:p:h')<CR>:vs\|:te<CR>cd $VIM_DIR<CR>
" tnoremap <Esc> <C-\><C-n> " messes with fzf floating window search

" Quickfix " TODO: add easier bindings for cycle commands
" Open the quickfix window
nnoremap <Leader>qo <cmd>copen<CR>
" Close it
nnoremap <Leader>qc <cmd>cclose<CR>
" Open it if there are 'errors', close it otherwise (some people prefer this)
nnoremap <Leader>qw <cmd>cwindow<CR>
" Go to the next error in the window
nnoremap <Leader>qn <cmd>cnext<CR>
nnoremap <F4>       <cmd>cnext<CR>
" Go to the previous error in the window
nnoremap <Leader>qp <cmd>cprevious<CR>
nnoremap <S-F4>     <cmd>cprevious<CR>
" Go to the first error in the next file
nnoremap <Leader>qN <cmd>cnfile<CR>
" Go to the last error in the prev file
nnoremap <Leader>qP <cmd>cpfile<CR>
" Go to error under cursor (if cursor is in quickfix window)
" nnoremap <Leader>q. <cmd>.cc<CR>

" Toggle all folds under cursor
nnoremap \ zA

" ==================================================== }}}

" ================ Functions and augroups ============ {{{
" Delete trailing whitespaces
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\v\s+$//ge
  exe "normal `z"
  delmarks z
endfunc

nnoremap <leader>os :call DeleteTrailingWS()<CR>

" Delete empty buffers (buffers with title "[No Name]")
" function! s:CleanEmptyBuffers()
"     let buffers = filter(range(1, bufnr('$')), 'buflisted(v:val) && empty(bufname(v:val)) && bufwinnr(v:val)<0 && !getbufvar(v:val, "&mod")')
"     if !empty(buffers)
"         exe 'bw ' . join(buffers, ' ')
"     endif
" endfunction

" nnoremap <leader>bc :call DeleteEmptyBuffers()<CR>

" autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Highlight yanked text briefly
augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank {higroup="IncSearch", timeout=150}
augroup END

augroup terminal_job
  au!
  au TermOpen * startinsert
  au TermOpen * setlocal listchars= nonumber norelativenumber
augroup END

" Use completion-nvim in every buffer
" autocmd BufEnter * lua require'completion'.on_attach()

" ==================================================== }}}

" ================ Narrow region =====================  {{{
" chrisbra/NrrwRgn

" Disable default maps
let g:nrrw_rgn_nomap_nr = 1
let g:nrrw_rgn_nomap_Nr = 1

" All maps will use buffers instead of windows
" narrow selection
nnoremap <leader>nn :NR<CR>
vnoremap <leader>nn :NR<CR>
" open last visual selected
nnoremap <leader>nv :NRV<CR>
" load line to prepare multi open
vnoremap <leader>np :NRP<CR>
" clear prepared lines
nnoremap <leader>nc :NRP<CR>
" unload prepared line
nnoremap <leader>nu :NRU<CR>
" open all prepared lines
nnoremap <leader>nm :NRM<CR>
" open last narrowed selection
nnoremap <leader>nl :NRL<CR>
" ==================================================== }}}

" ================ illuminate ======================== {{{
" RRethy/vim-illuminate
let g:Illuminate_ftblacklist = ['CHADTree', 'startify', 'dashboard', 'vista', 'qf', 'help']
" let g:Illuminate_ftwhitelist = ['vim', 'sh', 'python']
" ==================================================== }}}

" ================= vim-rooter ======================= {{{
" airblade/vim-rooter
" let g:rooter_patterns = ['Rakefile', '.git/']
" ==================================================== }}}

" ================= CHADTree ========================= {{{
" ms-jpq/chadtree

" nnoremap <F2> <cmd>CHADopen<cr>
" ==================================================== }}}

" ================= Vista ============================ {{{
" liuchengxu/vista.vim
" nnoremap <F3> :Vista!!<CR>
let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
let g:vista_default_executive = 'ctags'
let g:vista#renderer#enable_icon = 1
let g:vista#renderer#icons = {
\   "function": "\uf794",
\   "variable": "\uf71b",
\  }
nnoremap <silent> st :Vista finder<CR>
" ==================================================== }}}

" ================= FZF ============================== {{{
" junegunn/fzf.vim

" Default FZF layout
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6, 'border': 'sharp' } }
" let g:fzf_layout = { 'down': '~25%' }
" let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6, 'highlight': 'Todo', 'border': 'sharp' } }

" Add FZF results to quickfix list
" CTRL-A to select all
" CTRL-Q to build quickfix list with selected items
function! s:build_quickfix_list(lines)
  call setqflist(map(copy(a:lines), '{ "filename": v:val }'))
  copen
  cc
endfunction

let g:fzf_action = {
  \ 'ctrl-q': function('s:build_quickfix_list'),
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

let $FZF_DEFAULT_OPTS = '--bind ctrl-a:select-all'

" Change layout for :Commands
command! -bang Commands
\ call fzf#vim#commands({ 'window': { 'width': 1, 'height': 0.33, 'xoffset': 0, 'yoffset': 1, 'border': 'sharp' } }, <bang>0)

" Change layout for :BLines
command! -bang BLines
\ call fzf#vim#buffer_lines({ 'window': { 'width': 1, 'height': 0.33, 'xoffset': 0, 'yoffset': 1, 'border': 'sharp' } }, <bang>0)

" Change layout for :Lines
command! -bang Lines
\ call fzf#vim#lines({ 'window': { 'width': 1, 'height': 0.33, 'xoffset': 0, 'yoffset': 1, 'border': 'sharp' } }, <bang>0)

" Doesn't work properly - TODO need fixing
" Search for projects in s:project_directories
" command! FZFSearchProject call fzf#run(fzf#wrap({
" \   'source': 'bash -c "'.
" \             'fd -H -d 3 -t d "^.git$" '.join(s:project_directories, ' ').' -x echo {//}'.
" \              '"',
" \   'sink' : 'cd',
" \   'options' : "--preview",
" \   }))
" \ 'dir' : g:projectroot,

command! ListFiles execute (len(system('git rev-parse'))) ? ':Files' : ':GFiles'
nnoremap <silent> sf <cmd>ListFiles<CR>
" nnoremap <silent> sp <cmd>FZFSearchProject<CR>
nnoremap <silent> sg <cmd>Rg<CR>
" nnoremap <silent> sd <cmd>Dirvish<CR> " use default -
nnoremap <silent> sl <cmd>BLines<CR>
nnoremap <silent> sL <cmd>Lines<CR>
nnoremap <silent> sb <cmd>Buffers<CR>
" nnoremap <silent> sh <cmd>History<CR>
" nnoremap <silent> sc <cmd>Colors<CR>
nnoremap <silent> sm <cmd>Marks<CR>
nnoremap <silent> <F1> <cmd>Helptags<CR>

imap <c-x><c-k> <plug>(fzf-complete-word)
" imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-l> <plug>(fzf-complete-line)
" ==================================================== }}}

" ================= coc.nvim ========================= {{{
" " neoclide/coc.nvim
" " Some servers have issues with backup files, see #649
" set nobackup
" set nowritebackup

" " Better display for messages
" " set cmdheight=2

" " You will have bad experience for diagnostic messages when it's default 4000.
" set updatetime=300

" " don't give |ins-completion-menu| messages.
" set shortmess+=c

" " always show signcolumns
" set signcolumn=yes

" let g:coc_start_at_startup = 0

" " Use tab for trigger completion with characters ahead and navigate.
" " Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
" inoremap <silent><expr> <TAB>
"       \ pumvisible() ? "\<C-n>" :
"       \ <SID>check_back_space() ? "\<TAB>" :
"       \ coc#refresh()
" inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" function! s:check_back_space() abort
"   let col = col('.') - 1
"   return !col || getline('.')[col - 1]  =~# '\s'
" endfunction

" " Use <c-space> to trigger completion.
" inoremap <silent><expr> <c-space> coc#refresh()

" " Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" " Coc only does snippet and additional edit on confirm.
" inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" " Or use `complete_info` if your vim support it, like:
" " inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

" " Use `[g` and `]g` to navigate error diagnostics
" nmap <silent> [g <Plug>(coc-diagnostic-prev-error)
" nmap <silent> ]g <Plug>(coc-diagnostic-next-error)
" nmap <silent> [G <Plug>(coc-diagnostic-prev)
" nmap <silent> ]G <Plug>(coc-diagnostic-next)

" " Remap keys for gotos
" nmap <silent> gd <Plug>(coc-definition)
" nmap <silent> <leader>cgy <Plug>(coc-type-definition)
" nmap <silent> <leader>cgi <Plug>(coc-implementation)
" nmap <silent> <leader>cgr <Plug>(coc-references)

" " Use K to show documentation in preview window
" nnoremap <silent> K :call <SID>show_documentation()<CR>

" function! s:show_documentation()
"   if (index(['vim','help'], &filetype) >= 0)
"     execute 'h '.expand('<cword>')
"   else
"     call CocAction('doHover')
"   endif
" endfunction

" " Highlight symbol under cursor on CursorHold
" autocmd CursorHold * silent call CocActionAsync('highlight')

" " Remap for rename current word
" nmap <leader>crn <Plug>(coc-rename)

" " Remap for format selected region
" " xmap <leader>f  <Plug>(coc-format-selected)
" " nmap <leader>f  <Plug>(coc-format-selected)

" augroup cocMyGroup
"   autocmd!
"   " Setup formatexpr specified filetype(s).
"   autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
"   " Update signature help on jump placeholder
"   autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
" augroup end

" " Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
" xmap <leader>a  <Plug>(coc-codeaction-selected)
" nmap <leader>a  <Plug>(coc-codeaction-selected)

" " Remap for do codeAction of current line
" nmap <leader>ca  <Plug>(coc-codeaction)
" " Fix autofix problem of current line
" nmap <leader>qf  <Plug>(coc-fix-current)

" " Create mappings for function text object, requires document symbols feature of languageserver.
" xmap if <Plug>(coc-funcobj-i)
" xmap af <Plug>(coc-funcobj-a)
" omap if <Plug>(coc-funcobj-i)
" omap af <Plug>(coc-funcobj-a)

" " To select selections ranges (like wildfire.vim), needs server support, like: coc-tsserver, coc-python
" " nmap <silent> + <Plug>(coc-range-select)
" " xmap <silent> + <Plug>(coc-range-select)

" " nmap <silent> - <Plug>(coc-range-select-backward)
" " xmap <silent> - <Plug>(coc-range-select-backward)

" " Use `:Format` to format current buffer
" command! -nargs=0 Format :call CocAction('format')

" " Use `:Fold` to fold current buffer
" command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" " use `:OR` for organize import of current buffer
" command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" " Add status line support, for integration with other plugin, checkout `:h coc-status`
" set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" " Using CocList
" " Show all diagnostics
" nnoremap <silent> <leader>cld  :<C-u>CocList diagnostics<cr>
" " Manage extensions
" nnoremap <silent> <leader>cle  :<C-u>CocList extensions<cr>
" " Show commands
" nnoremap <silent> <leader>clc  :<C-u>CocList commands<cr>
" " Find symbol of current document
" nnoremap <silent> <leader>clo  :<C-u>CocList outline<cr>
" " Search workspace symbols
" nnoremap <silent> <leader>cls  :<C-u>CocList -I symbols<cr>
" " Do default action for next item.
" nnoremap <silent> <leader>cj  :<C-u>CocNext<CR>
" " Do default action for previous item.
" nnoremap <silent> <leader>ck  :<C-u>CocPrev<CR>
" " Resume latest coc list
" nnoremap <silent> <leader>clp  :<C-u>CocListResume<CR>

" autocmd FileType json syntax match Comment +\/\/.\+$+
" " ==================================================== }}}

" Signify {{{
" nnoremap <leader>gD <cmd>SignifyDiff<cr>
" nnoremap <leader>gd <cmd>SignifyHunkDiff<cr>
" nnoremap <leader>gu <cmd>SignifyHunkUndo<cr>

" " hunk jumping
" nmap <leader>gj <plug>(signify-next-hunk)
" nmap <leader>gk <plug>(signify-prev-hunk)

" " hunk text object
" omap ic <plug>(signify-motion-inner-pending)
" xmap ic <plug>(signify-motion-inner-visual)
" omap ac <plug>(signify-motion-outer-pending)
" xmap ac <plug>(signify-motion-outer-visual)
" }}}

" ================= GitGutter ======================== {{{
let g:gitgutter_grep = 'rg'
let g:gitgtter_sign_priority = 5
" ==================================================== }}}

" ================= Neoformat ======================== {{{
" sbdchd/neoformat
nnoremap <Leader>b= <cmd>Neoformat<CR>
" ==================================================== }}}

" ================= UltiSnips ======================== {{{
" SirVer/ultisnips

" " Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" " If you want :UltiSnipsEdit to split your window.
" let g:UltiSnipsEditSplit="vertical"
" ==================================================== }}}

" ================= Mundo ============================ {{{
" simnalamburt/vim-mundo

" nnoremap <F4> :MundoToggle<CR>
let g:mundo_right = 1
" ==================================================== }}}

" ================= Colorschemes/Themes ============== {{{
if (has("termguicolors"))
  set termguicolors
endif

" set t_Co=256

" Solarized
" colo solarized "Set color scheme
" set encoding=utf8
" set background=dark "Set dark background

" After glow theme
" let g:afterglow_blackout=1
" let g:afterglow_italic_comments=1
" colo afterglow
" let g:airline_theme='afterglow'

" let g:gruvbox_italic=1
" colo gruvbox

" colo space-vim-dark
" hi Comment cterm=italic
"
" colo OceanicNext
" colo iceberg
" colo nord
" colo gotham256
" colo dracula
" colo blue-moon
" set background=dark
" colo gruvbox

" let ayucolor="mirage"
" colo ayu

colo tokyonight

" colo embark
" let g:embark_terminal_italics = 1

" let g:equinusocio_material_style = 'pure'
" let g:equinusocio_material_less = 50
" set fillchars+=vert:│
" colo equinusocio_material
" let g:airline_theme = 'equinusocio_material'
" let g:lightline = {
"   \ 'colorscheme': 'equinusocio_material',
"   \ }

" colo purify

" set bg=light
" colo gruvbox

" Make background transparent
" hi Normal     ctermbg=NONE guibg=NONE
" hi LineNr     ctermbg=NONE guibg=NONE
" hi SignColumn ctermbg=NONE guibg=NONE

" Remove ~ chars from end of file (set after colorscheme set)
" -doesn't always work
highlight NonText guifg=bg
" comments should be italic
" highlight Comment cterm=italic gui=italic
" ==================================================== }}}

" ================= Airline ========================== {{{
" " vim-airline/vim-airline

" let g:airline_powerline_fonts = 1
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#buffer_nr_format = '%s: '
" " let g:airline#extensions#tabline#buffer_nr_show = 1
" let g:airline#extensions#tabline#fnamecollapse = 1
" let g:airline#extensions#tabline#fnamemod = ':t'

" let g:airline#extensions#branch#enabled = 1
" let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]' " Don't show file encoding if utf8
" let g:airline_skip_empty_sections = 1                        " Remove empty sections


" " Coc airline {{{
" let g:airline#extensions#coc#enabled = 1
" let airline#extensions#coc#error_symbol = '✗'
" let airline#extensions#coc#warning_symbol = '∆'
" let airline#extensions#coc#stl_format_err = '%E{[%e(#%fe)]}'
" let airline#extensions#coc#stl_format_warn = '%W{[%w(#%fw)]}'
" " }}}

" " Narrow region airline {{{
" let g:airline#extensions#nrrwrgn#enabled = 1
" " }}}

" " ==================================================== }}}

" ================= Lightline ========================== {{{
" lightline

" lightline bufferline
" let g:lightline#bufferline#show_number  = 1
" let g:lightline#bufferline#shorten_path = 1
" let g:lightline#bufferline#unnamed      = '[No Name]'
" let g:lightline#bufferline#show_number  = 2
" let g:lightline#bufferline#number_separator = '│'
" let g:lightline#bufferline#enable_devicons = 1
" let g:lightline#bufferline#unicode_symbols = 1
" let g:lightline#bufferline#clickable = 1
" let g:lightline#bufferline#filename_modifier = ':t'

let g:lightline = {}
let g:lightline.colorscheme = 'tokyonight'
" let g:lightline.mode_map = {
"   \   'n' : 'N',
"   \   'i' : 'I',
"   \   'R' : 'R',
"   \   'v' : 'V',
"   \   'V' : 'VL',
"   \   "\<C-v>": 'VB',
"   \   'c' : 'C',
"   \   's' : 'S',
"   \   'S' : 'SL',
"   \   "\<C-s>": 'SB',
"   \   't': 'T',
"   \ }
" let g:lightline.active = {
"   \   'left': [ [ 'mode', 'paste' ],
"   \             [ 'gitbranch', 'readonly'],
"   \             [ 'filename' ] ],
"   \   'right': [ [ 'lineinfo', 'percent' ],
"   \              [ '' ],
"   \              [ 'filetype' ] ] ,
"   \ }
let g:lightline.active = {
  \   'left': [ [ 'filename' ],
  \             [ 'gitbranch', 'readonly'],
  \             [ 'lsp_status' ] ],
  \   'right': [ [ 'lineinfo', '' ],
  \              [ '' ],
  \              [ '' ] ] ,
  \ }
let g:lightline.component = {
  \   'lineinfo': ' %3l:%-2v',
  \ }
let g:lightline.component_expand = {
  \   'lsp_status': 'LspStatus',
  \ }
let g:lightline.component_visible_condition = {
  \   'lsp_status': 'lua not vim.tbl_isempty(vim.lsp.buf_get_clients(0))',
  \ }
let g:lightline.component_function = {
  \   'gitbranch': 'LightlineBranch',
  \   'gitstatus': 'LightlineGitStatus',
  \   'readonly' : 'LightlineReadonly',
  \   'filename' : 'LightlineFilename',
  \ }
let g:lightline.separator = {
  \   'left': '', 'right': ''
  \ }
let g:lightline.subseparator = {
  \   'left': '', 'right': ''
  \ }
function! LightlineBranch()
  if exists('*FugitiveHead')
    let branch = FugitiveHead()
    return branch !=# '' ? ' '.branch : ''
  endif
  return ''
endfunction

" function! LightlineGitBlame() abort
"   let blame = get(b:, 'coc_git_blame', '')
"   " return blame
"   return winwidth(0) > 120 ? blame : ''
" endfunction

function! LightlineGitStatus()
  let [a,m,r] = GitGutterGetHunkSummary()
  return printf('+%d ~%d -%d', a, m, r)
endfunction

function! LspStatus() abort
  if luaeval('not vim.tbl_isempty(vim.lsp.buf_get_clients(0))')
     return luaeval("require('lsp-status').status()")
  else
     return ''
  endif
endfunction

function! LightlineReadonly()
  return &readonly ? '' : ''
endfunction

function! LightlineFilename()
  let filename = expand('%:t') !=# '' ? expand('%:t') : '[No Name]'
  let modified = &modified ? ' +' : ''
  return filename . modified
endfunction

command! LightlineReload call LightlineReload()

function! LightlineReload()
  call lightline#init()
  call lightline#colorscheme()
  call lightline#update()
endfunction
" ==================================================== }}}

" ================= HardTime ========================= {{{
let g:hardtime_default_on = 0
let g:hardtime_timeout = 1000
" let g:hardtime_showmsg = 1
" ==================================================== }}}

" ================= Startify ========================= {{{
" " mhinz/vim-startify
" " let g:ascii = [
" " \   '                                            ',
" " \   '============================================',
" " \   '                                            ',
" " \ ]
" let g:startify_files_number = 5
" " Don't change to directory when selecting a file
" let g:startify_change_to_dir = 0
" " let g:startify_custom_header = [ ]
" let g:startify_relative_path = 1
" let g:startify_use_env = 1
" let g:startify_change_to_vcs_root = 1
" let g:startify_fortune_use_unicode = 1
" let g:startify_padding_left = 4
" let g:startify_enable_special = 0

" " Sessions
" " let g:startify_session_autoload = 0
" let g:startify_session_persistence = 1
" let g:startify_session_sort = 1
" " let g:startify_session_number = 999
" let g:startify_session_before_save = [
" \   'echo "Cleaning up before saving.."',
" \   'silent! NERDTreeClose',
" \   'silent! Vista!',
" \   'echo "Done"'
" \ ]

" " let g:startify_session_savevars = [
" " \   'g:startify_session_savevars',
" " \   'g:startify_session_savecmds',
" " \   'g:random_plugin_use_feature'
" " \ ]

" " let g:startify_session_savecmds = [
" " \   'silent !pdfreader ~/latexproject/main.pdf &'
" " \ ]

" let g:startify_custom_header = 'map(startify#fortune#boxed(), "\"   \".v:val")'
" let s:footer_string = "Loaded ".len(keys(g:plugs))." plugins"
" let g:startify_custom_footer = 'map(startify#fortune#boxed(["Loaded ".len(keys(g:plugs))." plugins"]), "\"   \".v:val")'

" " Format the entries
" " function! StartifyEntryFormat()
" "     return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
" " endfunction

" " List git commits
" function! s:list_commits()
"     if len(system('git rev-parse'))
"         return []
"     endif
"     let commits = systemlist('git log --oneline | head -n5')
"     return map(commits, '{"line": matchstr(v:val, "\\s\\zs.*"), "cmd": "Gedit " . matchstr(v:val, "^\\x\\+") }')
" endfunction

" " startup list
" let g:startify_lists = [
" \   { 'header': [ '    Sessions'         ], 'type': 'sessions',                  },
" \   { 'header': [ '    Bookmarks'        ], 'type': 'bookmarks',                 },
" \   { 'header': [ '    Commands'         ], 'type': 'commands',                  },
" \ ]
" " \   { 'header': [ '    Recent Commits'   ], 'type': function('s:list_commits'),  },

" let g:startify_bookmarks = [
" \   { 'v': $MYVIMRC },
" \   { 'a': '~/.config/alacritty/alacritty.yml' },
" \   { 'r': '~/.config/karabiner/karabiner.json' },
" \   { 'z': '~/.zshrc' },
" \   { 'g': '~/.gitconfig' },
" \   { 'c': '~/.config/nvim/coc-settings.json' },
" \ ]

" " autocmd User Startified setlocal cursorline

" let g:startify_commands = [
" \   { 'up': [ 'Update Plugins'        , ':PlugUpdate'  ] } ,
" \   { 'ug': [ 'Upgrade Plugin Manager', ':PlugUpgrade' ] },
" \ ]

" " warning: this messes with git diff / git log if (neo)vim is set as the git pager
" " augroup start_startify
" "     autocmd!
" "     autocmd VimEnter *
" "     \    if !argc() | Startify | NERDTreeToggle | wincmd w | endif
" " augroup END

" " nnoremap <Space>bh :Startify<CR>
" ==================================================== }}}

" ================= Dashboard-nvim =================== {{{
" hardcoreplayers/dashboard-nvim

" harder to fix the breaking changes - instead he can do 
" nnoremap <space>bh :Dashboard<CR>
" nnoremap <Space>Ss :<C-u>SessionSave<CR>
" nnoremap <Space>Sl :<C-u>SessionLoad<CR>

let g:dashboard_custom_section={
    \ 'book_marks'         : ['Search bookmarks                      SPC f b'],
    \ 'change_colorscheme' : ['Change color scheme                   SPC t c'],
    \ 'find_word'          : ['Find word                             SPC s d'],
    \ 'find_file'          : ['Find file                             SPC f f'],
    \ 'find_history'       : ['Recent files                          SPC f h'],
    \ 'last_session'       : ['Open last session                     SPC s l'],
\ }

function! LAST_SESSION()
    SessionLoad
endfunction
function! FIND_HISTORY()
    History
endfunction
function! FIND_FILE()
    FZF
endfunction
function! FIND_WORD()
    Rg
endfunction
function! CHANGE_COLORSCHEME()
    Colors
endfunction
function! BOOK_MARKS()
    Marks
endfunction
let g:dashboard_custom_header = [
    \ '',
    \ '   ⠀⠀⠀⠀⠀⠀⠀⠀⠀⡴⠞⠉⢉⣭⣿⣿⠿⣳⣤⠴⠖⠛⣛⣿⣿⡷⠖⣶⣤⡀⠀⠀⠀   ',
    \ '    ⠀⠀⠀⠀⠀⠀⠀⣼⠁⢀⣶⢻⡟⠿⠋⣴⠿⢻⣧⡴⠟⠋⠿⠛⠠⠾⢛⣵⣿⠀⠀⠀⠀  ',
    \ '    ⣼⣿⡿⢶⣄⠀⢀⡇⢀⡿⠁⠈⠀⠀⣀⣉⣀⠘⣿⠀⠀⣀⣀⠀⠀⠀⠛⡹⠋⠀⠀⠀⠀  ',
    \ '    ⣭⣤⡈⢑⣼⣻⣿⣧⡌⠁⠀⢀⣴⠟⠋⠉⠉⠛⣿⣴⠟⠋⠙⠻⣦⡰⣞⠁⢀⣤⣦⣤⠀  ',
    \ '    ⠀⠀⣰⢫⣾⠋⣽⠟⠑⠛⢠⡟⠁⠀⠀⠀⠀⠀⠈⢻⡄⠀⠀⠀⠘⣷⡈⠻⣍⠤⢤⣌⣀  ',
    \ '    ⢀⡞⣡⡌⠁⠀⠀⠀⠀⢀⣿⠁⠀⠀⠀⠀⠀⠀⠀⠀⢿⡀⠀⠀⠀⠸⣇⠀⢾⣷⢤⣬⣉  ',
    \ '    ⡞⣼⣿⣤⣄⠀⠀⠀⠀⢸⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡇⠀⠀⠀⠀⣿⠀⠸⣿⣇⠈⠻  ',
    \ '    ⢰⣿⡿⢹⠃⠀⣠⠤⠶⣼⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡇⠀⠀⠀⠀⣿⠀⠀⣿⠛⡄⠀  ',
    \ '    ⠈⠉⠁⠀⠀⠀⡟⡀⠀⠈⡗⠲⠶⠦⢤⣤⣤⣄⣀⣀⣸⣧⣤⣤⠤⠤⣿⣀⡀⠉⣼⡇⠀  ',
    \ '    ⣿⣴⣴⡆⠀⠀⠻⣄⠀⠀⠡⠀⠀⠀⠈⠛⠋⠀⠀⠀⡈⠀⠻⠟⠀⢀⠋⠉⠙⢷⡿⡇⠀  ',
    \ '    ⣻⡿⠏⠁⠀⠀⢠⡟⠀⠀⠀⠣⡀⠀⠀⠀⠀⠀⢀⣄⠀⠀⠀⠀⢀⠈⠀⢀⣀⡾⣴⠃⠀  ',
    \ '    ⢿⠛⠀⠀⠀⠀⢸⠁⠀⠀⠀⠀⠈⠢⠄⣀⠠⠼⣁⠀⡱⠤⠤⠐⠁⠀⠀⣸⠋⢻⡟⠀⠀  ',
    \ '    ⠈⢧⣀⣤⣶⡄⠘⣆⠀⠀⠀⠀⠀⠀⠀⢀⣤⠖⠛⠻⣄⠀⠀⠀⢀⣠⡾⠋⢀⡞⠀⠀⠀  ',
    \ '    ⠀⠀⠻⣿⣿⡇⠀⠈⠓⢦⣤⣤⣤⡤⠞⠉⠀⠀⠀⠀⠈⠛⠒⠚⢩⡅⣠⡴⠋⠀⠀⠀⠀  ',
    \ '    ⠀⠀⠀⠈⠻⢧⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⣻⠿⠋⠀⠀⠀⠀⠀⠀  ',
    \ '    ⠀⠀⠀⠀⠀⠀⠉⠓⠶⣤⣄⣀⡀⠀⠀⠀⠀⠀⢀⣀⣠⡴⠖⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀  ',
    \ '                                       ',
    \ '',
    \ ]
" ====================================================== }}}

" scrollbar.nvim {{{
" if has('nvim-0.5')
"   augroup ScrollbarInit
"     autocmd!
"     autocmd CursorMoved,VimResized,QuitPre * silent! lua require('scrollbar').show()
"     autocmd WinEnter,FocusGained           * silent! lua require('scrollbar').show()
"     autocmd WinLeave,FocusLost             * silent! lua require('scrollbar').clear()
"   augroup end
" endif
" }}}

" ================= Vimade =========================== {{{
" 'TaDaa/vimade'
" let g:vimade_running = 0
" ====================================================== }}}

" ================= WakaTime ========================= {{{
" wakatime/vim-wakatime

" let g:wakatime_PythonBinary='/usr/local/bin/python3'
" ====================================================== }}}

" ================= indentLine ======================= {{{
" Yggdroot/indentLine

let g:indentLine_char = '▏'
" let g:indentLine_char = '┊'
" let g:indentLine_first_char = '┊'
" let g:indentLine_showFirstIndentLevel = 1
" let g:indentLine_setColors = 0
" ==================================================== }}}

" ================= vim-smoothie ===================== {{{
" psliwka/vim-smoothie

" let g:smoothie_no_default_mappings=1

" silent! nmap <unique> <C-d> <Plug>(SmoothieDownwards)
" silent! nmap <unique> <C-u> <Plug>(SmoothieUpwards)
" silent! nmap <unique> <C-u> <Plug>(SmoothieBackwards)
" silent! nmap <unique> <C-d> <Plug>(SmoothieForwards)

" let g:smoothie_update_interval=10
" let g:smoothie_base_speed=25

" ==================================================== }}}

" nvim-treesitter {{{
if has('nvim-0.5')
lua <<EOF
local treesitter = require'nvim-treesitter.configs'

treesitter.setup {
  ensure_installed = {"typescript", "tsx", "json", "javascript", "html", "css" },
  highlight = {
    enable = true,
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      -- init_selection = "gnn",
      -- node_incremental = "grn",
      -- scope_incremental = "grc",
      -- node_decremental = "grm",
    },
  },
  indent = {
    enable = true
  },
  textobjects = {
    select = {
      enable = true,
      keymaps = {
        -- You can use the capture groups defined in textobjects.scm
        ["af"] = "@function.outer",
        ["if"] = "@function.inner",
        ["ac"] = "@class.outer",
        ["ic"] = "@class.inner",

        -- Or you can define your own textobjects like this
        -- ["iF"] = {
          -- python = "(function_definition) @function",
          -- cpp = "(function_definition) @function",
          -- c = "(function_definition) @function",
          -- java = "(method_declaration) @function",
        -- },
      },
    },
    move = {
      enable = true,
      goto_next_start = {
        ["]m"] = "@function.outer",
        ["]]"] = "@class.outer",
      },
      goto_next_end = {
        ["]M"] = "@function.outer",
        ["]["] = "@class.outer",
      },
      goto_previous_start = {
        ["[m"] = "@function.outer",
        ["[["] = "@class.outer",
      },
      goto_previous_end = {
        ["[M"] = "@function.outer",
        ["[]"] = "@class.outer",
      },
    },
  },
}
EOF

" Folding
set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()
set foldlevelstart=1
set foldnestmax=3
endif
" }}}

" nvim-lspconfig {{{
if has('nvim-0.5')
lua <<EOF

  local on_attach_vim = function()
    -- require'completion'.on_attach()
  end
  require'lspconfig'.tsserver.setup{on_attach=on_attach_vim}
  require'lspconfig'.pyls.setup{on_attach=on_attach_vim}
EOF

nnoremap <silent> gd    <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gD    <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> K     <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <c-]> <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> <c-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> 1gD   <cmd>lua vim.lsp.buf.type_definition()<CR>
nnoremap <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> g0    <cmd>lua vim.lsp.buf.document_symbol()<CR>
nnoremap <silent> gW    <cmd>lua vim.lsp.buf.workspace_symbol()<CR>
nnoremap <silent> ]]    <cmd>lua require'lsp-ext'.peek_definition()<cr>

" Diagnostics
sign define LspDiagnosticsSignError text= texthl=LspDiagnosticsSignError linehl= numhl=
sign define LspDiagnosticsSignWarning text= texthl=LspDiagnosticsSignWarning linehl= numhl=
sign define LspDiagnosticsSignInformation text= texthl=LspDiagnosticsSignInformation linehl= numhl=
sign define LspDiagnosticsSignHint text= texthl=LspDiagnosticsSignHint linehl= numhl=
"  

lua <<EOF
  local lsp_status = require('lsp-status')
  lsp_status.register_progress()
EOF

" " Use <Tab> and <S-Tab> to navigate through popup menu
" inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
" inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" inoremap <silent><expr> <c-p> completion#trigger_completion()

" " Use <Tab> as trigger keys
" function! s:check_back_space() abort
"   let col = col('.') - 1
"   return !col || getline('.')[col - 1]  =~# '\s'
" endfunction

" inoremap <silent><expr> <TAB>
"   \ pumvisible() ? "\<C-n>" :
"   \ <SID>check_back_space() ? "\<TAB>" :
"   \ completion#trigger_completion()

" " Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

" " Avoid showing message extra message when using completion
set shortmess+=c

" " Snippet support
" let g:completion_enable_snippet = 'vim-vsnip'

" " Change completion confirm key (default <CR>)
" " let g:completion_confirm_key = "\<C-y>"

" " Enable/Disable auto hover
" " let g:completion_enable_auto_hover = 0

" " Enable/Disable auto signature
" " let g:completion_enable_auto_signature = 0

" " Sorting completion items (possible value: 'length', 'alphabet', 'none')
" " let g:completion_sorting = "length"

" " Matching Strategy (default 'exact')
" let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']
" let g:completion_matching_ignore_case = 1

" " Trigger Characters
" " let g:completion_trigger_character = ['.', '::']
" " For different trigger character for different languages
" " augroup CompletionTriggerCharacter
" "     autocmd!
" "     autocmd BufEnter * let g:completion_trigger_character = ['.']
" "     autocmd BufEnter *.c,*.cpp let g:completion_trigger_character = ['.', '::']
" " augroup end

" " Trigger keyword length
" " let g:completion_trigger_keyword_length = 3 " default = 1

" " Trigger on delete
" " let g:completion_trigger_on_delete = 1

" " Timer Adjustment
" " let g:completion_timer_cycle = 200 "default value is 80

" " For nvim-completion
" imap <C-j> <Plug>(completion_next_source)
" imap <C-k> <Plug>(completion_prev_source)


" " diagnostic-nvim
" " let g:diagnostic_enable_virtual_text = 1
" " let g:diagnostic_virtual_text_prefix = ' '
" " let g:diagnostic_trimmed_virtual_text = '20'
" " let g:space_before_virtual_text = 5
" " let g:diagnostic_show_sign = 0
" " let g:diagnostic_sign_priority = 20
" call sign_define("LspDiagnosticsErrorSign", {"text" : "✗", "texthl" : "LspDiagnosticsError"})
" call sign_define("LspDiagnosticsWarningSign", {"text" : "∆", "texthl" : "LspDiagnosticsWarning"})
" " call sign_define("LspDiagnosticsInformationSign", {"text" : "I", "texthl" : "LspDiagnosticsInformation"})
" " call sign_define("LspDiagnosticsHintSign", {"text" : "H", "texthl" : "LspDiagnosticsHint"})
" let g:diagnostic_enable_underline = 0
" " let g:diagnostic_auto_popup_while_jump = 0
" " let g:diagnostic_insert_delay = 1

" " nnoremap ]g <cmd>NextDiagnostic<cr>
" " nnoremap [g <cmd>PrevDiagnostic<cr>
" nnoremap ]g <cmd>NextDiagnosticCycle<cr>
" nnoremap [g <cmd>PrevDiagnosticCycle<cr>
" nnoremap <Leader>en <cmd>NextDiagnosticCycle<cr>
" nnoremap <Leader>ep <cmd>PrevDiagnosticCycle<cr>
" nnoremap <Leader>ee <cmd>OpenDiagnostic<cr>
endif
" }}}

" vsnip {{{
" hrsh7th/vim-vsnip

" NOTE: You can use other key to expand snippet.

" Expand
" imap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'
" smap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'

" Expand or jump (or trigger completion)
" imap <expr> <Tab>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : pumvisible() ? "\<C-n>" : completion#trigger_completion()
" smap <expr> <Tab>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<Tab>'

" Jump forward or backward
" imap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
" smap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'

" imap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : pumvisible() ? "\<C-p>" : '<S-Tab>'
" smap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : pumvisible() ? "\<C-p>" : '<S-Tab>'

" Select or cut text to use as $TM_SELECTED_TEXT in the next snippet.
" See https://github.com/hrsh7th/vim-vsnip/pull/50
" nmap        s   <Plug>(vsnip-select-text)
" xmap        s   <Plug>(vsnip-select-text)
" smap        s   <Plug>(vsnip-select-text)
" nmap        S   <Plug>(vsnip-cut-text)
" xmap        S   <Plug>(vsnip-cut-text)
" smap        S   <Plug>(vsnip-cut-text)

" If you want to use snippet for multiple filetypes, you can `g:vsip_filetypes` for it.
" let g:vsnip_filetypes = {}
" let g:vsnip_filetypes.javascriptreact = ['javascript']
" let g:vsnip_filetypes.typescriptreact = ['typescript']
" }}}

" ================= Vim-which-key ==================== {{{
autocmd! User vim-which-key call which_key#register('<Space>', 'g:which_key_map')
nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>

" Define prefix dictionary
let g:which_key_map =  {}

" =======================================================
" Mappings
" =======================================================

" Files maps {{{
let g:which_key_map.f = { 'name' : '+Files' }

let g:which_key_map.f.s = 'save-file'
let g:which_key_map.f.h = 'recent'
let g:which_key_map.f.f = 'open file'
let g:which_key_map.f.b = 'bookmarks'
let g:which_key_map.f.v = 'open vimrc'
" }}}

" Buffer maps {{{
" let g:which_key_map.b   = { 'name' : '+Buffers' }

" let g:which_key_map.b.b = ['Buffers'   , 'search']
" let g:which_key_map.b.d = ['bd'        , 'delete']
" let g:which_key_map.b.f = ['bfirst'    , 'first']
" let g:which_key_map.b.h = ['Startify'  , 'home/dashboard']
" let g:which_key_map.b.l = ['blast'     , 'last']
" let g:which_key_map.b.n = ['bnext'     , 'next']
" let g:which_key_map.b.p = ['bprevious' , 'previous']
" let g:which_key_map.b.c = 'clear empty buffers'
" }}}

" Project maps
" let g:which_key_map.p   = { 'name' : '+Projects' }

" Search related {{{
" let g:which_key_map.s = { 'name' : '+Search' }
" let g:which_key_map.s.p = 'projects'
" let g:which_key_map.s.f = 'files in directory'
" let g:which_key_map.s.d = 'lines in directory'
" let g:which_key_map.s.l = 'lines in current buffer'
" let g:which_key_map.s.L = 'lines in open buffers'
" let g:which_key_map.s.b = 'buffers'
" }}}

" let g:which_key_map.a = { 'name' : '+Applications' }
" let g:which_key_map.e = { 'name' : '+Errors' }

" Git related maps {{{
let g:which_key_map.g   = { 'name' : '+Git' }
let g:which_key_map.g.b = ['Gblame'              , 'Show blame']
let g:which_key_map.g.s = ['Gstatus'             , 'Show status']
let g:which_key_map.g.a = ['GitGutterStageHunk'  , 'Stage hunk']
let g:which_key_map.g.p = ['GitGutterPreviewHunk', 'Preview hunk']
let g:which_key_map.g.u = ['GitGutterUndoHunk'   , 'Undo hunk']
" }}}

let g:which_key_map.n = { 'name' : '+Narrow' }
let g:which_key_map.n.n = 'narrow-visual'

" move to language section
" let g:which_key_map.l = { 'name' : '+Language' }
" let g:which_key_map.l.f = 'format'

" TODO: change this
" nnoremap <silent> <leader>oq  :copen<CR>
" nnoremap <silent> <leader>ol  :lopen<CR>
" let g:which_key_map.o = {
"     \ 'name' : '+open',
"     \ 'q' : 'open-quickfix'    ,
"     \ 'l' : 'open-locationlist',
"     \ }
" ====================================================== }}}

" Statusline
" source ~/.config/statusline.vim

" Check this out
" https://github.com/itchyny/calendar.vim
" https://github.com/blueyed/vim-diminactive
" https://github.com/pechorin/any-jump.vim
" https://github.com/wellle/context.vim
" https://github.com/mhinz/vim-grepper
" https://github.com/mhinz/vim-sayonara
" https://github.com/tpope/vim-rhubarb
" https://github.com/tpope/vim-projectionist
" let settings = {
          " \   "pyls" : {
          " \     "enable" : v:true,
          " \     "trace" : { "server" : "verbose", },
          " \     "commandPath" : "",
          " \     "configurationSources" : [ "pycodestyle" ],
          " \     "plugins" : {
          " \       "jedi_completion" : { "enabled" : v:true, },
          " \       "jedi_hover" : { "enabled" : v:true, },
          " \       "jedi_references" : { "enabled" : v:true, },
          " \       "jedi_signature_help" : { "enabled" : v:true, },
          " \       "jedi_symbols" : {
          " \         "enabled" : v:true,
          " \         "all_scopes" : v:true,
          " \       },
          " \       "mccabe" : {
          " \         "enabled" : v:true,
          " \         "threshold" : 15,
          " \       },
          " \       "preload" : { "enabled" : v:true, },
          " \       "pycodestyle" : { "enabled" : v:true, },
          " \       "pydocstyle" : {
          " \         "enabled" : v:false,
          " \         "match" : "(?!test_).*\\.py",
          " \         "matchDir" : "[^\\.].*",
          " \       },
          " \       "pyflakes" : { "enabled" : v:true, },
          " \       "rope_completion" : { "enabled" : v:true, },
          " \       "yapf" : { "enabled" : v:true, },
          " \     }}}

