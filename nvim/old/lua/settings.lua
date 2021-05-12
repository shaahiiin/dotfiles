vim.o.termguicolors = true

vim.cmd('colorscheme tokyonight')

-- tabs
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.smarttab = true
--vim.o.wrap = false

-- JS based filetypes
vim.cmd('au FileType javascript,typescript,typescript.tsx,typescriptreact setlocal ts=2 sts=2 sw=2')
-- vim files, fold on comments with triple curly braces
vim.cmd('au FileType vim setlocal foldmethod=marker')
-- Python PEP 8 indentation
vim.cmd [[
au FileType python
  \ setlocal tabstop=4 |
  \ setlocal softtabstop=4 |
  \ setlocal shiftwidth=4 |
  \ setlocal textwidth=79 |
  \ setlocal autoindent |
  \ setlocal fileformat=unix
]]

vim.o.clipboard = "unnamedplus"
vim.o.mouse = 'a'

-- vim.o.scrolloff=1

-- Appearance
vim.o.number = true
vim.o.relativenumber = false
vim.o.cursorline = false
vim.o.showcmd = true
vim.o.showmode = false
vim.o.lazyredraw = true
vim.o.wrap = true
vim.o.updatetime=100
vim.o.conceallevel=0

vim.o.pumblend=20
vim.o.winblend=20

vim.o.signcolumn = 'number'

-- Searching
vim.o.ignorecase = true
vim.o.wildmenu = true
vim.o.wildmode = 'longest:full,full'
vim.o.wildoptions = 'pum'
vim.o.wildignorecase = true
--vim.o.smartcase
vim.o.hlsearch = false
vim.o.incsearch = true

vim.o.inccommand = 'split'

-- show search result counts at the bottom
vim.cmd('set shortmess-=S')

-- Buffers
--vim.o.showtabline=2
vim.o.hidden = true
vim.o.autoread = true

-- swap files/backup
vim.o.swapfile = false
vim.o.backup = false
--vim.o.undodir = '//.nvim/undodir'
--vim.o.undofile = true

-- Restore last cursor position and marks on open
vim.cmd [[ au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") && &ft !~# 'commit' | exe "normal! g`\"" | endif ]]
-- Windows
vim.o.splitbelow = true
vim.o.splitright = true

-- Disable some in built plugins completely
-- let g:loaded_netrw            = 1
-- let g:loaded_netrwPlugin      = 1
vim.g.loaded_matchparen       = 1
vim.g.loaded_matchit          = 1
vim.g.loaded_2html_plugin     = 1
vim.g.loaded_getscriptPlugin  = 1
vim.g.loaded_gzip             = 1
vim.g.loaded_logipat          = 1
vim.g.loaded_rrhelper         = 1
vim.g.loaded_spellfile_plugin = 1
vim.g.loaded_tarPlugin        = 1
vim.g.loaded_vimballPlugin    = 1
vim.g.loaded_zipPlugin        = 1

-- display special chars
vim.o.listchars = 'tab:» ,extends:›,precedes:‹,nbsp:·,trail:·'
vim.o.list = true

-- Highlight yanked text briefly
vim.cmd [[augroup highlight_yank ]]
vim.cmd [[autocmd! ]]
vim.cmd [[autocmd TextYankPost * silent! lua vim.highlight.on_yank {higroup="IncSearch", timeout=150} ]]
vim.cmd [[augroup END ]]

-- terminal mode settings
vim.cmd [[augroup terminal_job ]]
  vim.cmd [[au! ]]
  vim.cmd [[au TermOpen * startinsert ]]
  vim.cmd [[au TermOpen * setlocal listchars= nonumber norelativenumber ]]
vim.cmd [[augroup END ]]
