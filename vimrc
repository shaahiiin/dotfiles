" ================ Vim config ========================

" For python / ruby plugin
let g:loaded_python_provider = 0
let g:python3_host_prog='/usr/local/bin/python3'
let g:ruby_host_prog='/usr/bin/ruby'

" ================ General Config ==================== {{{
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

set clipboard=unnamed   " share system clipboard with vim register
if (has('mouse'))
    set mouse=a         " mouse support in vim (:h mouse)
endif
" set scrolloff=2       " set scroll offset at end of page

set backspace=indent,eol,start  " normal backspace behaviour

" Appearance {{{
set number              " show line numbers (if relative number is set, shows line number on current line)
" set relativenumber    " set relative line numbering (for easier jumping with j and k)
set cursorline          " show cursor line
set synmaxcol=0         " set syntax highlighting for long columns (> 3000 column length)
set showcmd             " Show incomplete cmds down the bottom
set noshowmode          " Do not show current mode (airline handles it)
set lazyredraw          " redraw only when we need to.
" }}}

" Searching {{{
set ignorecase          " ignore case for search
set wildignorecase      " ignore case for filename completions (cmd mode)
set smartcase           " if search string contains uppercase, switch to case sensitive search
set hlsearch            " highlight search results
set incsearch           " set incremental search, like modern browsers
set magic               " Set magic on, for regex (avoid lot of backslash escapes)
if (has('nvim'))
    set inccommand=nosplit " Shows the effects of a substitution incrementally as you type, but don't open split
endif
" }}}

" Buffers {{{
set autoread            " Reload files changed outside vim
set hidden              " allow multiple buffers to be loaded
" }}}

" Disable some in built plugins completely {{{
let g:loaded_netrw            = 1
let g:loaded_netrwPlugin      = 1
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

" }}}

" Leader {{{
let mapleader = ","
" }}}

" ================ Plugins =========================== {{{
call plug#begin('~/.local/share/nvim/plugged')

" Edits {{{
" Plug 'scrooloose/nerdcommenter'                             " easy commenting
Plug 'tpope/vim-commentary'                                   " easy commenting
Plug 'tpope/vim-surround'                                     " quoting/parenthesizing
" Plug 'tpope/vim-abolish'                                    " coercion (change case of a text)
Plug 'jiangmiao/auto-pairs'                                   " automatically open brackets in pairs
" Plug 'gcmt/wildfire.vim'                                    " smart select inner text objects
" Plug 'terryma/vim-multiple-cursors'                         " multiple cursor editing like sublime
" }}}

" Motions {{{
Plug 'easymotion/vim-easymotion'                              " easy motions
" }}}

" Code structure {{{
Plug 'tmhedberg/SimpylFold', { 'for': 'python' }              " python fold support
Plug 'scrooloose/nerdtree'                                    " show folder structure in vim
" Plug 'majutsushi/tagbar'                                    " view tags of file
Plug 'kshenoy/vim-signature'                                  " better management of marks
" Plug 'mcchrish/nnn.vim'                                     " vim plugin for nnn - file browser
" }}}

" Themes / Colorschemes {{{
Plug 'ayu-theme/ayu-vim'
" Plug 'whatyouhide/vim-gotham'
" Plug 'danilo-augusto/vim-afterglow'
" Plug 'mhartington/oceanic-next'
" Plug 'cocopon/iceberg.vim/'
" Plug 'arcticicestudio/nord-vim'
" Plug 'gruvbox-community/gruvbox'
" Plug 'liuchengxu/space-vim-dark'
" Plug 'dracula/vim', { 'as': 'dracula' }
" }}}

" Appearance {{{
" Plug 'altercation/vim-colors-solarized'                     " solarized theme
Plug 'vim-airline/vim-airline'                                " status line
Plug 'vim-airline/vim-airline-themes'                         " themes for airline
Plug 'psliwka/vim-smoothie'                                   " Smooth scrolling
" Plug 'Yggdroot/indentLine'                                  " Indent guides
Plug 'google/vim-searchindex'                                 " show result count while searching
" Plug 'chrisbra/Colorizer'                                   " display css colors
" Plug 'severin-lemaignan/vim-minimap'                        " minimap like SublimeText (NOT WORKING)
" Plug 'sjl/gundo.vim'                                        " Visualise the undo tree
Plug 'ryanoasis/vim-devicons'
" Plug 'luochen1990/rainbow'                                  " diff level of parentheses in diff color
" }}}

" Syntax check / language packs / code completion {{{
" Plug 'dense-analysis/ale'                                   " syntax plugin
" Plug 'peitalin/vim-jsx-typescript'                          " tsx syntax highlighting
" Plug 'leafgarland/typescript-vim'                           " typescript syntax highlighting
Plug 'HerringtonDarkholme/yats.vim'                           " typescript syntax file (dependency for below)
" Plug 'mhartington/nvim-typescript', {'do': ':!install.sh \| UpdateRemotePlugins'}
Plug 'vim-python/python-syntax', { 'for': 'python' }          " python syntax highlighting
" Plug 'python-mode/python-mode',{ 'branch': 'develop' }      " python support - NOT WORKING
" Plug 'pangloss/vim-javascript'                              " js syntax highlighting
" Plug 'sheerun/vim-polyglot'                                 " language packs
Plug 'neoclide/coc.nvim', {'branch': 'release'}               " completion engine
" Plug 'psf/black', { 'for': 'python' }                       " plugin for black (python code formatter)
" }}}

" Utility / Tools {{{
Plug 'tpope/vim-fugitive'                                     " git wrapper
" Plug 'airblade/vim-gitgutter'                               " show git diff in gutter
" Plug 'christoomey/vim-tmux-navigator'                       " vim - tmux pane switching
" Plug 'ctrlpvim/ctrlp.vim'                                   " fuzzy file/buffer/mru/tag search
Plug '/usr/local/opt/fzf'                                     " fuzzy file/buffer/mru/tag search (cmd line tool - installed with homebrew)
Plug 'junegunn/fzf.vim'                                       " vim plugin
" Plug 'tpope/vim-dadbod'                                     " db conn with vim
Plug 'takac/vim-hardtime'                                     " add delay on hjkl keys (easier hardmode)
" Plug 'tpope/vim-obsession'                                  " Easy vim session
Plug 'mhinz/vim-startify'                                     " custom start screen
Plug 'chrisbra/NrrwRgn'                                       " narrow region like emacs
" Plug 'wakatime/vim-wakatime'                                " Coding time stat tracker
" Plug 'AndrewRadev/linediff.vim'                             " Diff two blocks of code in same file
" Plug 'gioele/vim-autoswap'                                  " Smartly deal with swap files
" Plug 'thaerkh/vim-workspace'                                " Manage sessions in workspaces
" Plug 'SirVer/ultisnips'                                     " Snippet engine
" Plug 'honza/vim-snippets'                                   " Snippet files repository
" }}}

" Fun {{{
" Plug 'johngrib/vim-game-code-break'                         " vim game code break
" Plug 'skywind3000/vim-keysound'                             " play typewriter sounds on keystroke in insert mode
" }}}

call plug#end()
" }}}

" Basic key maps {{{
" Disable accidental Ex mode
nnoremap Q <Nop>

" Close current buffer (safely)
nnoremap <C-q> :bd<CR>
" Easy tab switching

map <C-Tab> :bn<CR>
map <C-S-Tab> :bp<CR>
" Save file/buffer
nnoremap <silent> <C-s> :update<CR>

" Y should work like C and D
nnoremap Y y$

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

" toggle folds
nnoremap <space> za
" highlight last inserted text
nnoremap gV `[v`]
" }}}

" Functions {{{
" Delete trailnig whitespaces
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\v\s+$//ge
  exe "normal `z"
  delmarks z
endfunc

noremap <leader>os :call DeleteTrailingWS()<CR>
" }}}

" EasyMotion {{{
" map s <Plug>(easymotion-prefix)
let g:EasyMotion_do_mapping = 0 " disable default mappings
let g:EasyMotion_smartcase = 1
let g:EasyMotion_use_upper = 1
let g:EasyMotion_keys = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ;'
let g:EasyMotion_space_jump_first = 1
let g:EasyMotion_enter_jump_first = 1

" nmap <leader>g <Plug>(easymotion-bd-w)
nmap s <Plug>(easymotion-s2)
map t <Plug>(easymotion-bd-t)
map f <Plug>(easymotion-bd-f)
" While doing an edit, f/t should work in line
omap t <Plug>(easymotion-tl)
omap f <Plug>(easymotion-fl)

" jk motions: line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
" }}}

" NrrwRgn {{{
vnoremap <leader>z :NR!<CR>
" TODO: add mappings for others too (:NRV!, :NRL!, :NRP, :NRM!)
" }}}

" NerdTree {{{
" map \ :NERDTreeToggle<CR>
" }}}

" FZF {{{
" Show FZF
nnoremap <C-g> :FZF<CR>
" Show Rg
nnoremap <M-g> :Rg<CR>
" show buffers
nnoremap gb :Buffers<CR>

let g:fzf_layout = { 'down': '~25%' }
" }}}

" coc.nvim {{{
" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

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
nmap <silent> <leader>cgd <Plug>(coc-definition)
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
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

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
nmap <silent> + <Plug>(coc-range-select)
xmap <silent> + <Plug>(coc-range-select)

nmap <silent> - <Plug>(coc-range-select-backward)
xmap <silent> - <Plug>(coc-range-select-backward)

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
" "" }}}

" UltiSnips {{{
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" " If you want :UltiSnipsEdit to split your window.
" let g:UltiSnipsEditSplit="vertical"
" }}}

" NerdCommenter {{{
let g:NERDSpaceDelims = 1
" }}}

" Themes / Colorschemes {{{
if (has("termguicolors"))
  set termguicolors
endif

" Ayu theme
let ayucolor="mirage"
colo ayu

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
" }}}

" Rainbow {{{
" let g:rainbow_active = 1
" }}}

" Airline {{{
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_format = '%s: '
" let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#fnamecollapse = 1
let g:airline#extensions#tabline#fnamemod = ':t'

let g:airline#extensions#branch#enabled = 1
let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]' " Don't show file encoding if utf8
let g:airline_skip_empty_sections = 1                        " Remove empty sections


" Coc airline {{{
let g:airline#extensions#coc#enabled = 1
let airline#extensions#coc#error_symbol = '✗'
let airline#extensions#coc#warning_symbol = '∆'
let airline#extensions#coc#stl_format_err = '%E{[%e(#%fe)]}'
let airline#extensions#coc#stl_format_warn = '%W{[%w(#%fw)]}'
" }}}

" Narrow region {{{
" let g:airline#extensions#nrrwrgn#enabled = 1
" }}}
" cursor mode
" let g:airline#extensions#cursormode#enabled = 1
" }}}

" HardTime {{{
let g:hardtime_default_on = 0
let g:hardtime_timeout = 1000
" let g:hardtime_showmsg = 1
" }}}

" Startify {{{
let g:ascii = [
        \]
" Don't change to directory when selecting a file
let g:startify_files_number = 5
let g:startify_change_to_dir = 0
let g:startify_custom_header = [ ]
let g:startify_relative_path = 1
let g:startify_use_env = 1

let g:startify_custom_header = 'map(g:ascii + startify#fortune#boxed(), "\"   \".v:val")'

function! s:list_commits()
    let git = 'git -C ' . getcwd()
    let commits = systemlist(git . ' log --oneline | grep -v "Merge" | head -n5')
    let git = 'G' . git[1:]
    return map(commits, '{"line": matchstr(v:val, "\\s\\zs.*"), "cmd": "'. git .' show ". matchstr(v:val, "^\\x\\+") }')
endfunction

" Custom startup list, only show MRU from current directory/project
let g:startify_lists = [
\  { 'type': 'dir',       'header': [ '    Files '. getcwd() ] },
\  { 'type': function('s:list_commits'), 'header': [ '     Recent Commits' ] },
\  { 'type': 'sessions',  'header': [ '    Sessions' ]       },
\  { 'type': 'bookmarks', 'header': [ '    Bookmarks' ]      },
\  { 'type': 'commands',  'header': [ '    Commands' ]       },
\ ]
let g:startify_commands = [
\   { 'up': [ 'Update Plugins', ':PlugUpdate' ] },
\   { 'ug': [ 'Upgrade Plugin Manager', ':PlugUpgrade' ] },
\ ]

let g:startify_bookmarks = [
    \ { 'v': '~/.config/nvim/init.vim' },
    \ { 'g': '~/.gitconfig' },
    \ { 'z': '~/.zshrc' },
    \ { 'c': '~/.config/nvim/coc-settings.json' }
\ ]

autocmd User Startified setlocal cursorline
nmap <leader>st :Startify<cr>
" }}}

" WakaTime {{{
let g:wakatime_PythonBinary='/usr/local/bin/python3'
" }}}

" indentLine {{{
" let g:indentLine_char = '▏'
let g:indentLine_char = '┊'
let g:indentLine_first_char = '┊'
let g:indentLine_showFirstIndentLevel = 1
" let g:indentLine_setColors = 0
" }}}

" vim-smoothie {{{
let g:smoothie_no_default_mappings=1

silent! nmap <unique> <C-D> <Plug>(SmoothieDownwards)
silent! nmap <unique> <C-U> <Plug>(SmoothieUpwards)
" silent! nmap <unique> <C-B> <Plug>(SmoothieBackwards)
" silent! nmap <unique> <C-F> <Plug>(SmoothieForwards)

let g:smoothie_update_interval=10
let g:smoothie_base_speed=25

" }}}

" Unused {{{

" Map directional keys
" nmap <Right> >>
" nmap <Left> <<
" nmap <Down> ddp
" nmap <Up> ddkP


" Enable j/k to work on wrapped lines
" noremap j gj
" noremap k gk
" Swap ' and `
" nnoremap ' `
" nnoremap ` '

" Format json file [TODO: Run only on .json extension files]
" nnoremap <leader>fj :exe '%!python -m json.tool'<CR>

" Tagbar {{{
" nnoremap <F8> :TagbarToggle<CR>

" Set default width
" let g:tagbar_width = 30
" }}}

" vim javascript {{{
  " let g:javascript_conceal_function             = "ƒ"
  " let g:javascript_conceal_null                 = "ø"
  " let g:javascript_conceal_this                 = "@"
  " let g:javascript_conceal_return               = "⇚"
  " let g:javascript_conceal_undefined            = "¿"
  " let g:javascript_conceal_NaN                  = "ℕ"
  " let g:javascript_conceal_prototype            = "¶"
  " let g:javascript_conceal_static               = "•"
  " let g:javascript_conceal_super                = "Ω"
  " let g:javascript_conceal_arrow_function       = "⇒"
  " let g:javascript_conceal_noarg_arrow_function = "🞅"
  " let g:javascript_conceal_underscore_arrow_function = "🞅"
" }}}

" vim-jsx-typescript {{{
" set filetypes as typescript.tsx
" autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescript.tsx
" }}}

" Manually enable hard mode
" nnoremap h <nop>
" nnoremap j <nop>
" nnoremap k <nop>
" nnoremap l <nop>

" Comfortable motion {{{
" let g:comfortable_motion_interval = 250.0 / 60
" }}}

" Keysound {{{
" let g:keysound_theme = 'default'
" let g:keysound_volume = 1000
" }}}

" CtrlP {{{
" Ignore these directories
" set wildignore+=*/node_modules/*

" let g:ctrlp_open_multiple_files = 'i'
" }}}

" function! PlaySound()
  " silent! exec '!afplay ~/.local/share/nvim/plugged/vim-keysound/sounds/default/keyany.wav'
  " call jobstart('afplay ~/.local/share/nvim/plugged/vim-keysound/sounds/default/keyany.wav')

" endfunction
" autocmd CursorMovedI * call PlaySound()

" nnn.vim {{{
" Disable default mappings
" let g:nnn#set_default_mappings = 0
" Then set your own
" nnoremap <silent> <leader>nn :NnnPicker<CR>

" let g:nnn#command = 'nnn -e'
" Floating window (neovim latest and vim with patch 8.2.191)
" let g:nnn#layout = { 'window': { 'width': 0.9, 'height': 0.6, 'highlight': 'Debug' } }
" }}}

" Ack / Ag {{{
" if executable('ag')
  " let g:ackprg = 'ag --vimgrep --ignore node_modules'
" endif
" }}}


" }}}
