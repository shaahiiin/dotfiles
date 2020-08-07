" ================ Vim config ========================

" For python / ruby plugin
let g:loaded_python_provider = 0
let g:python3_host_prog='/usr/local/bin/python3'
let g:ruby_host_prog='/usr/bin/ruby'

" ================ Plugins =========================== {{{
call plug#begin('~/.local/share/nvim/plugged')

" ================ Operators / Editing =============== {{{
" Plug 'scrooloose/nerdcommenter'                             " easy commenting
Plug 'tpope/vim-commentary'                                   " easy commenting
Plug 'tpope/vim-surround'                                     " quoting/parenthesizing
" Plug 'tpope/vim-abolish'                                    " coercion (change case of a text)
" Plug 'jiangmiao/auto-pairs'                                   " automatically open brackets in pairs
" Plug 'gcmt/wildfire.vim'                                      " smart select inner text objects
" Plug 'terryma/vim-multiple-cursors'                           " multiple cursor editing like sublime
Plug 'tommcdo/vim-lion'                                       " aligning text around a char
" Plug 'machakann/vim-swap'                                     " swap func args left / right
" ==================================================== }}}

" ================ Motions =========================== {{{
" Plug 'easymotion/vim-easymotion'                              " easy motions
" Plug 'rhysd/clever-f.vim'                                     " use f / F motions without ; / ,
" Plug 'junegunn/vim-slash'                                     " improve search highlight
" ==================================================== }}}

" ================ Code structure ==================== {{{
" Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle','NERDTreeFind']}   " file explorer
" Plug 'preservim/nerdtree', { 'on': ['NERDTreeToggle','NERDTreeFind']}    " file explorer
" Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': ':UpdateRemotePlugins'} " file explorer
" Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'
" if has('nvim')
"   Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
" else
"   Plug 'Shougo/defx.nvim'
"   Plug 'roxma/nvim-yarp'
"   Plug 'roxma/vim-hug-neovim-rpc'
" endif
" Plug 'majutsushi/tagbar'                                      " view tags of file
Plug 'liuchengxu/vista.vim'                                   " view tags and LSP symbols
" Plug 'kshenoy/vim-signature'                                  " better management of marks
" Plug 'mcchrish/nnn.vim'                                       " vim plugin for nnn - file browser
Plug 'tmhedberg/SimpylFold', { 'for': 'python' }              " python fold support
" ==================================================== }}}

" ================ Colorschemes/Themes =============== {{{
Plug 'ayu-theme/ayu-vim'
" Plug 'rakr/vim-two-firewatch'
" Plug 'whatyouhide/vim-gotham'
" Plug 'danilo-augusto/vim-afterglow'
" Plug 'mhartington/oceanic-next'
" Plug 'cocopon/iceberg.vim/'
" Plug 'arcticicestudio/nord-vim'
" Plug 'gruvbox-community/gruvbox'
" Plug 'liuchengxu/space-vim-dark'
" Plug 'dracula/vim', { 'as': 'dracula' }
" Plug 'skbolton/embark'
" Plug 'chuling/equinusocio-material.vim'
" Plug 'NLKNguyen/papercolor-theme'
" Plug 'kyoz/purify', { 'rtp': 'vim' }
" Plug 'liuchengxu/space-vim-dark'
" Plug 'Badacadabra/vim-archery'
" Plug 'kyazdani42/blue-moon'
" ==================================================== }}}

" ================ Appearance ======================== {{{
Plug 'itchyny/lightline.vim'                                  " status line
Plug 'mengelbrecht/lightline-bufferline'                      " bufferline
" Plug 'vim-airline/vim-airline'                                " status line
" Plug 'vim-airline/vim-airline-themes'                         " themes for airline
" Plug 'Yggdroot/indentLine'                                  " Indent guides
" Plug 'google/vim-searchindex'                                 " show result count while searching
" Plug 'chrisbra/Colorizer'                                   " display css colors
" Plug 'severin-lemaignan/vim-minimap'                        " minimap like SublimeText (NOT WORKING)
Plug 'ryanoasis/vim-devicons'                                 " support file icons, etc
" Plug 'luochen1990/rainbow'                                  " different parentheses in different color
" Plug 'RRethy/vim-illuminate'                                  " highlight word under cursor (like vscode)
" Plug 'junegunn/goyo.vim'                                      " remove distractions
" Plug 'junegunn/limelight.vim'                                 " fade surrounding text (used with goyo)
Plug 'TaDaa/vimade'                                           " fade inactive windows
" Plug 'DanilaMihailov/beacon.nvim'                             " ping cursor location after every jump
" ==================================================== }}}

" ================ Language ========================== {{{
" Plug 'dense-analysis/ale'                                     " syntax plugin
" Plug 'peitalin/vim-jsx-typescript'                            " tsx syntax highlighting
" Plug 'leafgarland/typescript-vim'                             " typescript syntax highlighting
Plug 'HerringtonDarkholme/yats.vim'                           " typescript syntax file (dependency for below)
" Plug 'mhartington/nvim-typescript', {'do': ':!install.sh \| UpdateRemotePlugins'}
Plug 'vim-python/python-syntax', { 'for': 'python' }          " python syntax highlighting
" Plug 'python-mode/python-mode',{ 'branch': 'develop' }        " python support - NOT WORKING
" Plug 'pangloss/vim-javascript'                                " js syntax highlighting
" Plug 'sheerun/vim-polyglot'                                   " language packs
Plug 'neoclide/coc.nvim', {'branch': 'release'}               " completion engine
" Plug 'psf/black', { 'for': 'python' }                         " plugin for black (python code formatter)
Plug 'sbdchd/neoformat'                                       " code formatter
" ==================================================== }}}

" ================ Utility / Tools =================== {{{
Plug 'tpope/vim-fugitive'                                     " git wrapper
" Plug 'lambdalisue/gina.vim'                                   " git wrapper
Plug 'airblade/vim-gitgutter'                                 " show git diff in gutter
" Plug 'christoomey/vim-tmux-navigator'                         " vim - tmux pane switching
" Plug 'ctrlpvim/ctrlp.vim'                                     " fuzzy file/buffer/mru/tag search
Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'           " fuzzy search tool (cmd line tool - installed with homebrew)
" Plug 'tpope/vim-dadbod'                                       " db conn with vim
" Plug 'psliwka/vim-smoothie'                                   " Smooth scrolling
" Plug 'takac/vim-hardtime'                                     " add delay on hjkl keys (easier hardmode)
" Plug 'tpope/vim-obsession'                                    " Easy vim session
Plug 'mhinz/vim-startify'                                     " custom start screen, session management
" Plug 'hardcoreplayers/dashboard-nvim'                         " vim dashboard
Plug 'chrisbra/NrrwRgn'                                       " narrow region like emacs
Plug 'AndrewRadev/linediff.vim'                               " narrow region two blocks of code
" Plug 'wakatime/vim-wakatime'                                  " Coding time stat tracker
" Plug 'gioele/vim-autoswap'                                    " Smartly deal with swap files
" Plug 'thaerkh/vim-workspace'                                  " Manage sessions in workspaces
" Plug 'SirVer/ultisnips'                                       " Snippet engine
" Plug 'honza/vim-snippets'                                     " Snippet files repository
Plug 'simnalamburt/vim-mundo'                                 " undo tree plugin
Plug 'liuchengxu/vim-which-key',{'on': ['WhichKey', 'WhichKey!']} " interactively show mappings
Plug 'justinmk/vim-dirvish'                                   " browse directory / files
" Plug 'lfv89/vim-interestingwords'                             " highlight different words throughout the buffer
Plug 'airblade/vim-rooter'                                    " change pwd to project root if exists
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

set clipboard+=unnamedplus   " share system clipboard with vim register
if (has('mouse'))
    set mouse=a         " mouse support in all modes (:h mouse)
endif

set scrolloff=1         " set scroll offset at end of page

set backspace=indent,eol,start  " normal backspace behaviour

" Appearance {{{
set number              " show line numbers (if relative number is set, shows line number on current line)
" set relativenumber    " set relative line numbering (for easier jumping with j and k)
" set cursorline          " show cursor line TODO: does this slow down vim perf
" set synmaxcol=0         " set syntax highlighting for long columns (> 3000 column length)
set showcmd             " Show incomplete cmds down the bottom
set noshowmode          " Do not show current mode (statusline handles it)
set lazyredraw          " redraw only when we need to
set nowrap

if (has('nvim'))
    set pumblend=20         " transparency in pop-up menu
    set winblend=20         " transparency in floating window
endif
" }}}

" Searching {{{
set ignorecase          " ignore case for search
set wildignorecase      " ignore case for filename completions (cmd mode)
set smartcase           " if search string contains uppercase, switch to case sensitive search
set nohlsearch          " don't highlight search results
set incsearch           " set incremental search, like modern browsers
set magic               " Set magic on, for regex (avoid lot of backslash escapes)
if (has('nvim'))
    set inccommand=nosplit " Shows the effects of a substitution incrementally as you type, but don't open split
endif
set shortmess-=S
" }}}

" Buffers {{{
set showtabline=2       " Always show tabline
set autoread            " Reload files changed outside vim
set hidden              " allow multiple buffers to be loaded

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
" modelines are dangerous
set modelines=0
set nomodeline
" }}}

" ==================================================== }}}

" ================ Basic mappings ==================== {{{

" Leader {{{
let mapleader = " "
" }}}

" Disable accidental Ex mode
" nnoremap Q <Nop>
nnoremap q <Nop>

" numbers and symbols swap {{{
nnoremap 1 !
nnoremap 2 @
nnoremap 3 #
nnoremap 4 $
nnoremap 5 %
nnoremap 6 ^
nnoremap 7 &
nnoremap 8 *
nnoremap 9 (
           
nnoremap ! 1
nnoremap @ 2
nnoremap # 3
nnoremap $ 4
nnoremap % 5
nnoremap ^ 6
nnoremap & 7
nnoremap * 8
nnoremap ( 9
" }}}

" Emacs style bindings in command mode
cnoremap <C-a> <C-b>

" Close current buffer (safely)
nnoremap q :confirm bd<CR>
nnoremap Q :confirm qa<CR>

" give it a try and you will like it
nnoremap ; :
vnoremap ; :

" switch buffer
if (has("gui_running"))
    map <C-Tab> :bn<CR>
    map <C-S-Tab> :bp<CR>
endif

nnoremap U <C-r>

nnoremap ]b :bn<CR>
nnoremap [b :bp<CR>

nnoremap ]q :cn<CR>
nnoremap [q :cp<CR>

" Easy window switching
" nnoremap <Tab> <C-w><C-w>
" nnoremap <S-Tab> <C-w><C-w>
" Save file/buffer
nnoremap <silent> <S-s> :update<CR>:echo 'Saved..'<CR>

" Y should work like C and D
nnoremap Y y$

" Toggle relative numbers
nnoremap <leader>tn :set rnu!<CR>:set rnu?<CR>
" Toggle hl search
nnoremap <leader>th :set hls!<CR>:set hls?<CR>
" remove highlight from search
nnoremap <silent> <leader>oh :noh<CR>
" edit vimrc
nnoremap <leader>fve :e $MYVIMRC<CR>
" source vimrc
nnoremap <leader>fvs :source $MYVIMRC<CR>
" vim split keymap
" map <C-h> <C-w>h
" map <C-j> <C-w>j
" map <C-k> <C-w>k
" map <C-l> <C-w>l

nnoremap \ <C-w>w

" highlight last inserted text
nnoremap gV `[v`]

" Longer scrolls
" nnoremap <C-e> 3<C-e>
" nnoremap <C-y> 3<C-y>
" Easier indentation operations
nnoremap > >>
nnoremap < <<
vnoremap > >gv
vnoremap < <gv

" Do exact string search
nnoremap g/ /\<\><left><left>
" Do exact string in visually selected text
vnoremap g/ /\%V\<\><left><left>

" Search withing visually selected text
vnoremap <M-/> <Esc>/\%V
" Search within screen
nnoremap <M-/> HVL<Esc>/\%V

" Substitutions
vnoremap gs "zy:%s/<C-r>"//gc<left><left><left>
nnoremap gs :%s/<C-r><C-w>//gc<left><left><left>

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
" Mapped in vim-which-key
function! s:CleanEmptyBuffers()
    let buffers = filter(range(1, bufnr('$')), 'buflisted(v:val) && empty(bufname(v:val)) && bufwinnr(v:val)<0 && !getbufvar(v:val, "&mod")')
    if !empty(buffers)
        exe 'bw ' . join(buffers, ' ')
    endif
endfunction

nnoremap <leader>bc :call DeleteEmptyBuffers()<CR>

" autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Highlight yanked text briefly
augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank("IncSearch", 100)
augroup END
" ==================================================== }}}

" ================ Narrow region =====================  {{{
" chrisbra/NrrwRgn

" Disable default maps
let g:nrrw_rgn_nomap_nr = 1
let g:nrrw_rgn_nomap_Nr = 1

" All maps will use buffers instead of windows
" mappings at vim-which-key section

" ==================================================== }}}

" ================ illuminate ======================== {{{
" RRethy/vim-illuminate
" let g:Illuminate_ftblacklist = ['nerdtree', 'dashboard', '__vista__']
" let g:Illuminate_ftwhitelist = ['vim', 'sh', 'python']
" ==================================================== }}}

" ================= vim-rooter ======================= {{{
" airblade/vim-rooter
" let g:rooter_patterns = ['Rakefile', '.git/']
" ==================================================== }}}

" ================= LuaTree ========================== {{{
"" kyazdani42/nvim-tree.lua

" let g:lua_tree_side = 'right' " 'right' | 'left' left by default
" let g:lua_tree_size = 40 "30 by default
let g:lua_tree_ignore = [ '.git', 'node_modules', '.cache' ] "empty by default
" let g:lua_tree_auto_open = 1 "0 by default, opens the tree when typing `vim $DIR` or `vim`
let g:lua_tree_auto_close = 1 "0 by default, closes the tree when it's the last window
let g:lua_tree_follow = 1 "0 by default, this option allows the cursor to be updated when entering a buffer
" let g:lua_tree_indent_markers = 1 "0 by default, this option shows indent markers when folders are open
" let g:lua_tree_show_icons = {
"     \ 'git': 1,
"     \ 'folders': 1,
"     \ 'files': 1,
"     \ }
"If 0, do not show the icons for one of 'git' 'folder' and 'files'
"1 by default, notice that if 'files' is 1, it will only display
"if nvim-web-devicons is installed and on your runtimepath

" You can edit keybindings be defining this variable
" You don't have to define all keys.
" NOTE: the 'edit' key will wrap/unwrap a folder and open a file
let g:lua_tree_bindings = {
    \ 'edit':           '<CR>',
    \ 'edit_vsplit':    '<C-v>',
    \ 'edit_split':     '<C-x>',
    \ 'edit_tab':       '<C-t>',
    \ 'toggle_ignored': 'I',
    \ 'preview':        '<Tab>',
    \ 'cd':             '<C-]>',
    \ 'create':         'a',
    \ 'remove':         'd',
    \ 'rename':         'r',
    \ 'cut':            'x',
    \ 'copy':           'c',
    \ 'paste':          'p',
    \ 'prev_git_item':  '[c',
    \ 'next_git_item':  ']c',
    \ }

" Disable default mappings by plugin
" Bindings are enable by default, disabled on any non-zero value
" let lua_tree_disable_keybindings=1

" default will show icon by default if no icon is provided
" default shows no icon by default
let g:lua_tree_icons = {
    \ 'default': ' ',
    \ 'git': {
    \   'unstaged': "✗",
    \   'staged': "✓",
    \   'unmerged': "═",
    \   'renamed': "➜",
    \   'untracked': "★"
    \   },
    \ 'folder': {
    \   'default': "",
    \   'open': ""
    \   }
    \ }

nnoremap <F2> :LuaTreeToggle<CR>
" nnoremap <leader>r :LuaTreeRefresh<CR>
" nnoremap <S-<F2>> :LuaTreeFindFile<CR>
" LuaTreeOpen and LuaTreeClose are also available if you need them

" set termguicolors " this variable must be enabled for colors to be applied properly

" a list of groups can be found at `:help lua_tree_highlight`
" highlight LuaTreeFolderIcon guibg=blue
" ==================================================== }}}

" ================= CHADTree ========================= {{{
" ms-jpq/chadtree

" nnoremap <F2> <cmd>CHADopen<cr>

" ==================================================== }}}

" ================= Vista ============================ {{{
" liuchengxu/vista.vim
nnoremap <F3> :Vista!!<CR>
let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
let g:vista_default_executive = 'ctags'
let g:vista#renderer#enable_icon = 1
let g:vista#renderer#icons = {
\   "function": "\uf794",
\   "variable": "\uf71b",
\  }
nnoremap <silent> <Space>st :Vista finder ctags<CR>
" ==================================================== }}}

" ================= FZF ============================== {{{
" junegunn/fzf.vim

" let g:fzf_layout = { 'down': '~25%' }
" let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6, 'highlight': 'Todo', 'border': 'sharp' } }
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6, 'border': 'sharp' } }

" Add FZF results to quickfix list
" CTRL-A to select all
" CTRL-Q to build quickfix list
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

command! -bang Commands
\ call fzf#vim#commands({ 'window': { 'width': 1, 'height': 0.33, 'xoffset': 0, 'yoffset': 1, 'border': 'sharp' } }, <bang>0)
" call fzf#run({'source': 'git ls-files', 'sink': 'e'})

command! FZFSearchProject call fzf#run(fzf#wrap({
\   'source': 'bash -c "'.
\             'fd -H -d 3 -t d "^.git$" ~/work ~/code -x echo {//}'.
\              '"',
\   'sink' : 'cd',
\   'options' : "--preview",
\   }))
" \ 'dir' : g:projectroot,
nnoremap <silent> <leader>i :call Fzf_dev()<CR>

" TODO: use this and do something....
" ripgrep
if executable('rg')
  let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --follow --glob "!.git/*"'
  set grepprg=rg\ --vimgrep
  command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>).'| tr -d "\017"', 1, <bang>0)
endif

" Files + devicons
function! Fzf_dev()
  let l:fzf_files_options = '--preview "bat --theme="OneHalfDark" --style=numbers,changes --color always {2..-1} | head -'.&lines.'"'

  function! s:files()
    let l:files = split(system($FZF_DEFAULT_COMMAND), '\n')
    return s:prepend_icon(l:files)
  endfunction

  function! s:prepend_icon(candidates)
    let l:result = []
    for l:candidate in a:candidates
      let l:filename = fnamemodify(l:candidate, ':p:t')
      let l:icon = WebDevIconsGetFileTypeSymbol(l:filename, isdirectory(l:filename))
      call add(l:result, printf('%s %s', l:icon, l:candidate))
    endfor

    return l:result
  endfunction

  function! s:edit_file(item)
    let l:pos = stridx(a:item, ' ')
    let l:file_path = a:item[pos+1:-1]
    execute 'silent e' l:file_path
  endfunction

  call fzf#run({
        \ 'source': <sid>files(),
        \ 'sink':   function('s:edit_file'),
        \ 'options': '-m ' . l:fzf_files_options,
        \ 'down':    '40%' })
endfunction
command! ListFiles execute (len(system('git rev-parse'))) ? ':Files' : ':GFiles'
nnoremap <Space>ff :ListFiles<CR>
nnoremap <silent> <Space>sp :FZFSearchProject<CR>
nnoremap <silent> <Space>sd :Rg<CR>
nnoremap <silent> <Space>sl :BLines<CR>
nnoremap <silent> <Space>sL :Lines<CR>
nnoremap <silent> <Space>sb :Buffers<CR>
nnoremap <silent> <Space>bb :Buffers<CR>
nnoremap <silent> <Space>fh :History<CR>
nnoremap <silent> <Space>tc :Colors<CR>
" nnoremap <silent> <Space>fa :Rg<CR>
nnoremap <silent> <Space>fb :Marks<CR>
nnoremap <silent> <F1>      :Helptags<CR>

nnoremap : :Commands<CR>

imap <c-x><c-k> <plug>(fzf-complete-word)
" imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-l> <plug>(fzf-complete-line)
" ==================================================== }}}

" ================= coc.nvim ========================= {{{
" neoclide/coc.nvim
" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
" set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

let g:coc_start_at_startup = 0

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
" inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[g` and `]g` to navigate error diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev-error)
nmap <silent> ]g <Plug>(coc-diagnostic-next-error)
nmap <silent> [G <Plug>(coc-diagnostic-prev)
nmap <silent> ]G <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> <leader>cgy <Plug>(coc-type-definition)
nmap <silent> <leader>cgi <Plug>(coc-implementation)
nmap <silent> <leader>cgr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>crn <Plug>(coc-rename)

" Remap for format selected region
" xmap <leader>f  <Plug>(coc-format-selected)
" nmap <leader>f  <Plug>(coc-format-selected)

augroup cocMyGroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ca  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Create mappings for function text object, requires document symbols feature of languageserver.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" To select selections ranges (like wildfire.vim), needs server support, like: coc-tsserver, coc-python
" nmap <silent> + <Plug>(coc-range-select)
" xmap <silent> + <Plug>(coc-range-select)

" nmap <silent> - <Plug>(coc-range-select-backward)
" xmap <silent> - <Plug>(coc-range-select-backward)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Using CocList
" Show all diagnostics
nnoremap <silent> <leader>cld  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <leader>cle  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <leader>clc  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <leader>clo  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <leader>cls  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <leader>cj  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <leader>ck  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <leader>clp  :<C-u>CocListResume<CR>

autocmd FileType json syntax match Comment +\/\/.\+$+
" ==================================================== }}}

" ================= GitGutter ======================== {{{
" nnoremap ]h :GitGutterNextHunk<CR>
" nnoremap [h :GitGutterPrevHunk<CR>
" ==================================================== }}}

" ================= Neoformat ======================== {{{
" sbdchd/neoformat
nnoremap = :Neoformat<CR>
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

nnoremap <F4> :MundoToggle<CR>
let g:mundo_right = 1
" ==================================================== }}}

" ================= Themes/Colorschemes ============== {{{
if (has("termguicolors"))
  set termguicolors
endif

let ayucolor="mirage"
colorscheme ayu

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
highlight NonText guifg=bg
" comments should be italic
highlight Comment cterm=italic gui=italic
" ==================================================== }}}

" ================= Rainbow ========================== {{{
" luochen1990/rainbow

" let g:rainbow_active = 1
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
let g:lightline#bufferline#show_number  = 1
let g:lightline#bufferline#shorten_path = 1
let g:lightline#bufferline#unnamed      = '[No Name]'
let g:lightline#bufferline#show_number  = 2
let g:lightline#bufferline#number_separator = '│'
let g:lightline#bufferline#enable_devicons = 1
let g:lightline#bufferline#unicode_symbols = 1
let g:lightline#bufferline#clickable = 1
let g:lightline#bufferline#filename_modifier = ':t'

let g:lightline = {}
let g:lightline.colorscheme = 'ayu'
let g:lightline.mode_map = {
    \   'n' : 'N',
    \   'i' : 'I',
    \   'R' : 'R',
    \   'v' : 'V',
    \   'V' : 'VL',
    \   "\<C-v>": 'VB',
    \   'c' : 'C',
    \   's' : 'S',
    \   'S' : 'SL',
    \   "\<C-s>": 'SB',
    \   't': 'T',
    \ }
let g:lightline.active = {
    \   'left': [ [ 'mode', 'paste' ],
    \             [ 'gitbranch', 'filename', 'readonly', 'blame' ] ],
    \   'right': [ [ 'lineinfo' ],
    \              [ 'percent' ],
    \              [ 'filetype' ] ] ,
    \ }
let g:lightline.tabline = {
    \   'left': [ ['buffers'] ],
    \   'right': [ ['close'] ]
    \ }
let g:lightline.component = {
    \   'lineinfo': ' %3l:%-2v',
    \ }
let g:lightline.component_expand = {
    \   'buffers': 'lightline#bufferline#buffers'
    \ }
let g:lightline.component_type = {
    \   'buffers': 'tabsel'
    \ }
let g:lightline.component_function = {
    \   'blame'    : 'LightlineGitBlame',
    \   'gitbranch': 'fugitive#head',
    \   'readonly' : 'LightlineReadonly',
    \   'filename' : 'LightlineFilename',
    \ }
let g:lightline.component_raw = {
    \ 'buffers': 1
    \ }
let g:lightline.separator = {
    \   'left': '', 'right': ''
    \ }
let g:lightline.subseparator = {
    \   'left': '', 'right': '' 
    \ }

function! LightlineFugitive()
    if exists('*FugitiveHead')
        let branch = FugitiveHead()
        return branch !=# '' ? ''.branch : ''
    endif
    return ''
endfunction

function! LightlineGitBlame() abort
  let blame = get(b:, 'coc_git_blame', '')
  " return blame
  return winwidth(0) > 120 ? blame : ''
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
" mhinz/vim-startify
" let g:ascii = [
" \   '                                            ',
" \   '============================================',
" \   '                                            ',
" \ ]
let g:startify_files_number = 5
" Don't change to directory when selecting a file
let g:startify_change_to_dir = 0
" let g:startify_custom_header = [ ]
let g:startify_relative_path = 1
let g:startify_use_env = 1
let g:startify_change_to_vcs_root = 1
let g:startify_fortune_use_unicode = 1
let g:startify_padding_left = 4
let g:startify_enable_special = 0

" Sessions
" let g:startify_session_autoload = 0
let g:startify_session_persistence = 1
let g:startify_session_sort = 1
" let g:startify_session_number = 999
let g:startify_session_before_save = [
\   'echo "Cleaning up before saving.."',
\   'silent! NERDTreeClose',
\   'silent! Vista!',
\   'echo "Done"'
\ ]

" let g:startify_session_savevars = [
" \   'g:startify_session_savevars',
" \   'g:startify_session_savecmds',
" \   'g:random_plugin_use_feature'
" \ ]

" let g:startify_session_savecmds = [
" \   'silent !pdfreader ~/latexproject/main.pdf &'
" \ ]

let g:startify_custom_header = 'map(startify#fortune#boxed(), "\"   \".v:val")'
let s:footer_string = "Loaded ".len(keys(g:plugs))." plugins"
let g:startify_custom_footer = 'map(startify#fortune#boxed(["Loaded ".len(keys(g:plugs))." plugins"]), "\"   \".v:val")'

" Format the entries
function! StartifyEntryFormat()
    return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
endfunction

" List git commits
function! s:list_commits()
    if len(system('git rev-parse'))
        return []
    endif
    let commits = systemlist('git log --oneline | head -n5')
    return map(commits, '{"line": matchstr(v:val, "\\s\\zs.*"), "cmd": "Gedit " . matchstr(v:val, "^\\x\\+") }')
endfunction

" startup list
let g:startify_lists = [
\   { 'header': [ '    Sessions'         ], 'type': 'sessions',                  },
\   { 'header': [ '    Bookmarks'        ], 'type': 'bookmarks',                 },
\   { 'header': [ '    Commands'         ], 'type': 'commands',                  },
\ ]
" \   { 'header': [ '    Recent Commits'   ], 'type': function('s:list_commits'),  },

let g:startify_bookmarks = [
\   { 'v': '~/.config/nvim/init.vim' },
\   { 'a': '~/.config/alacritty/alacritty.yml' },
\   { 'r': '~/.config/karabiner/karabiner.json' },
\   { 'z': '~/.zshrc' },
\   { 'g': '~/.gitconfig' },
\   { 'c': '~/.config/nvim/coc-settings.json' },
\ ]

" autocmd User Startified setlocal cursorline

let g:startify_commands = [
\   { 'up': [ 'Update Plugins'        , ':PlugUpdate'  ] } ,
\   { 'ug': [ 'Upgrade Plugin Manager', ':PlugUpgrade' ] },
\ ]

" warning: this messes with git diff / git log if (neo)vim is set as the git pager
" augroup start_startify
"     autocmd!
"     autocmd VimEnter *
"     \    if !argc() | Startify | NERDTreeToggle | wincmd w | endif
" augroup END

" nnoremap <Space>bh :Startify<CR>
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

" ================= Vimade =========================== {{{
" 'TaDaa/vimade'                                           
let g:vimade_running = 0
" ====================================================== }}}

" ================= WakaTime ========================= {{{
" wakatime/vim-wakatime

let g:wakatime_PythonBinary='/usr/local/bin/python3'
" ====================================================== }}}

" ================= indentLine ======================= {{{
" Yggdroot/indentLine

" let g:indentLine_char = '▏'
let g:indentLine_char = '┊'
let g:indentLine_first_char = '┊'
let g:indentLine_showFirstIndentLevel = 1
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

" ================= Defx.nvim ======================== {{{
" Shougo/defx.nvim
"" let g:loaded_netrwPlugin = 1 " Disable netrw.vim

"" autocmd FileType defx call s:defx_my_settings()

"augroup defxConfig
"  autocmd!
"  autocmd FileType defx call s:defx_my_settings()
"augroup END


"function! s:defx_my_settings() abort
"  " Open commands
"  " nnoremap <silent><buffer><expr> <CR> defx#do_action('open')
"  nnoremap <silent><buffer><expr> <CR> defx#do_action('open', 'wincmd w \| drop')
"  nnoremap <silent><buffer><expr> l defx#do_action('open')
"  nnoremap <silent><buffer><expr> v defx#do_action('open', 'vsplit')
"  " Preview current file
"  " nnoremap <silent><buffer><expr> s defx#do_action('open', 'pedit')

"  " File manipulation
"  nnoremap <silent><buffer><expr> K defx#do_action('new_directory')
"  nnoremap <silent><buffer><expr> N defx#do_action('new_file')
"  nnoremap <silent><buffer><expr> M defx#do_action('new_multiple_files')
"  nnoremap <silent><buffer><expr> <Del> defx#do_action('remove')
"  nnoremap <silent><buffer><expr> r defx#do_action('rename')
"  nnoremap <silent><buffer><expr> yy defx#do_action('copy')
"  nnoremap <silent><buffer><expr> dd defx#do_action('move')
"  nnoremap <silent><buffer><expr> pp defx#do_action('paste')

"  "Navigation
"  nnoremap <silent><buffer><expr> - defx#do_action('cd', ['..'])
"  nnoremap <silent><buffer><expr> h defx#do_action('cd', ['..'])
"  nnoremap <silent><buffer><expr> j line('.') == line('$') ? 'gg' : 'j'
"  nnoremap <silent><buffer><expr> k line('.') == 1 ? 'G' : 'k'
"  nnoremap <silent><buffer><expr> ~ defx#do_action('cd', [getcwd()])

"  " Miscellaneous actions
"  nnoremap <silent><buffer><expr> . defx#do_action('toggle_ignored_files')
"  nnoremap <silent><buffer><expr> q defx#do_action('quit')
"  nnoremap <silent><buffer><expr> x defx#do_action('execute_system')
"  nnoremap <silent><buffer><expr> yp defx#do_action('yank_path')
"  nnoremap <silent><buffer><expr> <C-g> defx#do_action('print')
"  nnoremap <silent><buffer><expr> <C-l> defx#do_action('redraw') . ':nohlsearch<cr>:syntax sync fromstart<cr><c-l>'

"  nnoremap <silent><buffer><expr><nowait> <Space> defx#do_action('toggle_select') . 'j'
"  nnoremap <silent><buffer><expr> * defx#do_action('toggle_select_all')

"  nnoremap <silent><buffer><expr> C defx#do_action('toggle_columns', 'mark:filename:type:size:time')
"  nnoremap <silent><buffer><expr> S defx#do_action('toggle_sort', 'time')

"  " nnoremap <silent><buffer><expr>e defx#do_action('call', 'DefxExternalExplorer')
"  nnoremap <silent><buffer><expr> e defx#do_action('call', 'OpenRanger')
"endfunction

"" nnoremap <silent> <leader>o :call OpenRanger()<cr>
"nnoremap <Space>fn :Defx `expand('%:p:h')` -show-ignored-files -search=`expand('%:p')`<CR>
"nnoremap <F2> :Defx -split=vertical -winwidth=50 -direction=topleft<CR>

"function! s:defx_directory_from_context(context) abort
"  let l:target = a:context['targets'][0]
"  if a:context['cursor'] == 1
"    return l:target
"  endif
"  return fnamemodify(l:target, ':h')
"endfunction

"" Open file-explorer
"function! g:DefxExternalExplorer(context) abort
"  if executable('ranger')
"    let l:explorer = 'ranger'
"  endif
"  if empty('$KITTY_WINDOW_ID') || empty(l:explorer)
"    return
"  endif
"  let l:dir = s:defx_directory_from_context(context)
"  silent execute '!kitty @ new-window --new-tab  --title ranger ranger ' . shellescape(l:dir)
"endfunction

"function! g:OpenRanger(context) abort
"  let l:dir = s:defx_directory_from_context(a:context)
"  execute '-tabnew +set\ filetype=custom_term'
"  setlocal nonumber norelativenumber
"  call termopen('ranger ' . l:dir)
"  execute 'let b:term_title="ranger"'
"  execute 'startinsert'
"  execute 'autocmd TermClose <buffer> Sayonara'
"endfunction


" ==================================================== }}}

" ================= Vim-which-key ==================== {{{
autocmd! User vim-which-key call which_key#register('<Space>', 'g:which_key_map')
nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>

" Define prefix dictionary
let g:which_key_map =  {}

" =======================================================
" Mappings
" =======================================================

" File maps
let g:which_key_map.f = { 'name' : '+Files' }

let g:which_key_map.f.s = 'save-file'
let g:which_key_map.f.d = 'open-vimrc'

" Buffer maps
let g:which_key_map.b   = { 'name' : '+Buffers' }

let g:which_key_map.b.b = ['Buffers'   , 'search']
let g:which_key_map.b.d = ['bd'        , 'delete']
let g:which_key_map.b.f = ['bfirst'    , 'first']
let g:which_key_map.b.h = ['Startify'  , 'home/dashboard']
let g:which_key_map.b.l = ['blast'     , 'last']
let g:which_key_map.b.n = ['bnext'     , 'next']
let g:which_key_map.b.p = ['bprevious' , 'previous']
let g:which_key_map.b.c = 'clear empty buffers'

let g:which_key_map.b.1 = ['<Plug>lightline#bufferline#go(1)' , 'which_key_ignore']
let g:which_key_map.b.2 = ['<Plug>lightline#bufferline#go(2)' , 'which_key_ignore']
let g:which_key_map.b.3 = ['<Plug>lightline#bufferline#go(3)' , 'which_key_ignore']
let g:which_key_map.b.4 = ['<Plug>lightline#bufferline#go(4)' , 'which_key_ignore']
let g:which_key_map.b.5 = ['<Plug>lightline#bufferline#go(5)' , 'which_key_ignore']
let g:which_key_map.b.6 = ['<Plug>lightline#bufferline#go(6)' , 'which_key_ignore']
let g:which_key_map.b.7 = ['<Plug>lightline#bufferline#go(7)' , 'which_key_ignore']
let g:which_key_map.b.8 = ['<Plug>lightline#bufferline#go(8)' , 'which_key_ignore']
let g:which_key_map.b.9 = ['<Plug>lightline#bufferline#go(9)' , 'which_key_ignore']

" Project maps
let g:which_key_map.p   = { 'name' : '+Projects' }

" let g:which_key_map.p.p = ['Buffers'   , 'fzf-buffer']

let g:which_key_map.s = { 'name' : '+Search' }

let g:which_key_map.s.b = ['Gblame'    , 'Git Blame']

" let g:which_key_map.a = { 'name' : '+Applications' }
let g:which_key_map.e = { 'name' : '+Errors' }

let g:which_key_map.g = { 'name' : '+Git' }
let g:which_key_map.g.b = ['Gblame'    , 'Git Blame']
let g:which_key_map.g.s = ['Gstatus'   , 'Git Status']
" let g:which_key_map.g.b = ['Gdiffsplit', 'git-blame']
" let g:which_key_map.g.b = ['GBlame'    , 'git-blame']
" let g:which_key_map.g.b = ['GBlame'    , 'git-blame']
" let g:which_key_map.g.b = ['GBlame'    , 'git-blame']
" let g:which_key_map.g.b = ['GBlame'    , 'git-blame']

let g:which_key_map.n = { 'name' : '+Narrow' }

let g:which_key_map.n.n = ['NR!'       , 'narrow-visual']
" open visually selected
vnoremap <leader>nn :NR!<CR>
" open last visual selected
nnoremap <leader>nv :NRV!<CR>
" load line to prepare multi open
vnoremap <leader>np :NRP<CR>
" clear prepared lines
nnoremap <leader>nc :NRP!<CR>
" unload prepared line
nnoremap <leader>nu :NRU<CR>
" open all prepared lines
nnoremap <leader>nm :NRM!<CR>
" open last narrowed selection
nnoremap <leader>nl :NRL!<CR>
let g:which_key_map.t = { 'name' : '+Toggles' }
" let g:which_key_map.w = { 'name' : '+Windows' }
let g:which_key_map.t = { 'name' : '+Text' }

" TODO: change this
nnoremap <silent> <leader>oq  :copen<CR>
nnoremap <silent> <leader>ol  :lopen<CR>
let g:which_key_map.o = {
    \ 'name' : '+open',
    \ 'q' : 'open-quickfix'    ,
    \ 'l' : 'open-locationlist',
    \ }
" ====================================================== }}}

" Statusline
" source ~/.config/statusline.vim

" Check this out
" Plug 'chxuan/change-colorscheme'
" https://github.com/itchyny/calendar.vim
" https://github.com/rhysd/clever-f.vim
" https://github.com/zhaocai/GoldenView.Vim
" https://github.com/kkoomen/vim-doge
" https://github.com/blueyed/vim-diminactive
" https://github.com/farmergreg/vim-lastplace
" https://github.com/pechorin/any-jump.vim
" https://github.com/wellle/context.vim
" https://github.com/MattesGroeger/vim-bookmarks
" https://github.com/mhinz/vim-grepper
" https://github.com/MattesGroeger/vim-bookmarks
" https://github.com/tpope/vim-rhubarb
" https://github.com/tpope/vim-projectionist
