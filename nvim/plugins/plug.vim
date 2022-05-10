" ================ Plugins =========================== {{{
call plug#begin('~/.local/share/nvim/plugged')

" ================ Operators / Editing =============== {{{
Plug 'tpope/vim-commentary'                                   " commenting
" Plug 'b3nj5m1n/kommentary'
Plug 'tpope/vim-surround'                                     " quoting/parenthesizing
" Plug 'tommcdo/vim-lion'                                       " aligning text around a char
" Plug 'jiangmiao/auto-pairs'
Plug 'Raimondi/delimitMate'
" ==================================================== }}}

" ================ Motions =========================== {{{
" ==================================================== }}}

" ================ Code structure ==================== {{{
Plug 'justinmk/vim-dirvish'                                   " browse directory / files
" Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': ':UpdateRemotePlugins', 'on': 'CHADOpen'} " file explorer
" Plug 'kyazdani42/nvim-tree.lua'
" Plug 'liuchengxu/vista.vim', { 'on': 'Vista' }                " view tags and LSP symbols
" Plug 'kshenoy/vim-signature'                                  " better management of marks
" Plug 'Yggdroot/indentLine'                                    " indent lines
" ==================================================== }}}

" ================ Colorschemes/Themes =============== {{{
" Plug 'ayu-theme/ayu-vim'
" Plug 'whatyouhide/vim-gotham'
" Plug 'danilo-augusto/vim-afterglow'
" Plug 'mhartington/oceanic-next'
" Plug 'gruvbox-community/gruvbox'
" Plug 'liuchengxu/space-vim-dark'
" Plug 'dracula/vim', { 'as': 'dracula' }
" Plug 'skbolton/embark'
" Plug 'chuling/equinusocio-material.vim'
Plug 'NLKNguyen/papercolor-theme'
" Plug 'liuchengxu/space-vim-dark'
" Plug 'Badacadabra/vim-archery'
" Plug 'kyazdani42/blue-moon'
Plug 'ghifarit53/tokyonight-vim'
" Plug 'alexanderjeurissen/lumiere.vim'
" Plug 'foxbunny/vim-amber'
" Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
Plug 'glepnir/zephyr-nvim'
" Plug 'christianchiarulli/nvcode-color-schemes.vim'
" ==================================================== }}}

" ================ Appearance ======================== {{{
Plug 'itchyny/lightline.vim'                                  " status line
" Plug 'glepnir/galaxyline.nvim'                                  " status line
" Plug 'romgrk/barbar.nvim'                                       " bufferlist on tabline
" Plug 'ryanoasis/vim-devicons'                                 " support file icons, etc
" Plug 'kyazdani42/nvim-web-devicons'
" Plug 'RRethy/vim-illuminate'                                  " highlight word under cursor (lsp provides better highlight)
" Plug 'TaDaa/vimade'                                           " fade inactive windows
" Plug 'DanilaMihailov/beacon.nvim'                             " ping cursor location after every jump
" Plug 'Xuyuanp/scrollbar.nvim'                                 " scrollbar (disabled since this is based on cursor pos)
" Plug 'wfxr/minimap.vim'                                       " useful as a scrollbar
Plug 'dstein64/nvim-scrollview'
" ==================================================== }}}

" ================ Language ========================== {{{
" Plug 'sbdchd/neoformat'                                       " code formatter TODO: replace with inbuilt (formatprg)
" LSP
" Plug 'neovim/nvim-lspconfig'
" Plug 'nvim-lua/lsp-status.nvim'
" Plug 'ojroques/nvim-lspfuzzy'
" Plug 'onsails/lspkind-nvim'
" TreeSitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" Plug 'romgrk/nvim-treesitter-context'
Plug 'nvim-treesitter/nvim-treesitter-textobjects'
" Completion (with lsp/treesitter support)
" Plug 'hrsh7th/nvim-compe'
" Snippets
" Plug 'hrsh7th/vim-vsnip'
" Plug 'hrsh7th/vim-vsnip-integ'
" Telescope (fuzzy finder)
" Plug 'nvim-lua/popup.nvim'
" Plug 'nvim-lua/plenary.nvim'
" Plug 'nvim-telescope/telescope.nvim'
" Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', {'on': 'Telescope'}
" ==================================================== }}}

" ================ Utility =========================== {{{
" Plug 'tpope/vim-fugitive'                                     " git wrapper
Plug 'airblade/vim-gitgutter'                                 " git info in sign column + add hunk text object
Plug 'ruanyl/vim-gh-line'                                       " github link
" Plug 'mhinz/vim-signify'                                      " git info
" Plug 'lewis6991/gitsigns.nvim'
Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'           " fuzzy search tool (cmd line tool - installed with homebrew)
" Plug 'tpope/vim-dadbod'                                       " db conn with vim
" Plug 'kristijanhusak/vim-dadbod-ui'                           " dadbod ui
"Plug 'psliwka/vim-smoothie'                                   " Smooth scrolling
" Plug 'takac/vim-hardtime'                                     " add delay on hjkl keys (easier hardmode)
" Plug 'tpope/vim-obsession'                                    " Easier vim session management
" Plug 'hardcoreplayers/dashboard-nvim'                         " custom start screen (like doom emacs)
" Plug 'chrisbra/NrrwRgn'                                       " narrow region like emacs
" Plug 'AndrewRadev/linediff.vim'                               " narrow two blocks of text for diffing (use narrow region itself?)
" Plug 'gioele/vim-autoswap'                                    " Smartly deal with swap files
" Plug 'thaerkh/vim-workspace'                                  " Manage sessions in workspaces

Plug 'simnalamburt/vim-mundo', {'on': 'MundoToggle'}          " undo tree plugin
" Plug 'liuchengxu/vim-which-key',{'on': ['WhichKey', 'WhichKey!']} " interactively show mappings
" Plug 'lfv89/vim-interestingwords'                             " persist word highlight
Plug 'airblade/vim-rooter'                                    " change pwd to project root if exists
Plug 'tweekmonster/startuptime.vim', { 'on': 'StartupTime' }
" Plug 'Iron-E/nvim-libmodal'
" ==================================================== }}}

call plug#end()
" ==================================================== }}}
