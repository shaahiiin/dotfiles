-- Only required if you have packer in your `opt` pack
local packer_exists = pcall(vim.cmd, [[packadd packer.nvim]])

if not packer_exists then
  -- TODO: Maybe handle windows better?
  if vim.fn.input("Download Packer? (y for yes)") ~= "y" then
    return
  end

  local directory = string.format(
    '%s/site/pack/packer/opt/',
    vim.fn.stdpath('data')
  )

  vim.fn.mkdir(directory, 'p')

  local out = vim.fn.system(string.format(
    'git clone %s %s',
    'https://github.com/wbthomason/packer.nvim',
    directory .. '/packer.nvim'
  ))

  print(out)
  print("Downloading packer.nvim...")

  return
end

vim.cmd [[ autocmd BufWritePost plugins.lua PackerCompile ]]


return require('packer').startup(function()
  -- Packer can manage itself as an optional plugin
  use {'wbthomason/packer.nvim', opt = true}

  use 'tpope/vim-commentary'
  use 'tpope/vim-surround'
  use 'ghifarit53/tokyonight-vim'
  -- use 'glepnir/zephyr-nvim'
  use { 'wfxr/minimap.vim' }
  use 'justinmk/vim-dirvish'
  --use 'airblade/vim-rooter'
  -- use 'airblade/vim-gitgutter'
  use {
    'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    },
    config = require('plugins/gitsigns')
  }
  use 'chrisbra/NrrwRgn'
  -- use 'simnalamburt/vim-mundo'
  use { 'mhinz/vim-sayonara'}
  use 'psliwka/vim-smoothie'
  -- use {'dracula/vim', as = 'dracula' }
  -- use { 'kyazdani42/nvim-tree.lua', config = require('plugins/nvim-tree'), requires = {'kyazdani42/nvim-web-devicons', opt = true} }
  use {
    'glepnir/galaxyline.nvim',
    branch = 'main',
    config = require('plugins/galaxyline'),
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }

  -- TreeSitter
  use {
     'nvim-treesitter/nvim-treesitter',
     run = function() vim.cmd [[TSUpdate]] end,
     config = require('plugins/treesitter')
  }
  use {
    'romgrk/nvim-treesitter-context',
    requires = 'nvim-treesitter/nvim-treesitter'
  }
  -- causing 'cannot close last window' bug

  use {
    'nvim-treesitter/nvim-treesitter-textobjects',
    requires = 'nvim-treesitter/nvim-treesitter'
  }

  --Telescope (fuzzy finder)
  use {
    'nvim-telescope/telescope.nvim',
    requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}},
    config = require('plugins/telescope')
  }
  -- TODO Enable at the end
  --  Completions (for lsp)
  -- use 'nvim-lua/completion-nvim'

end)



-- graveyard
  -- use 'tommcdo/vim-lion' -- load this lazily?
  -- use 'rhysd/clever-f.vim'

  -- use {'ms-jpq/chadtree', branch = 'chad', run = 'UpdateRemotePlugins', cmd = 'CHADOpen'} -- too slow for my files
  -- use {'liuchengxu/vista.vim', 'on'= 'Vista' }
  -- use 'Yggdroot/indentLine'
  -- use 'ayu-theme/ayu-vim'
  -- use 'gruvbox-community/gruvbox'
  -- use {'dracula/vim', as = 'dracula' }
  -- use 'sbdchd/neoformat'
  -- use 'tpope/vim-fugitive'
  -- use 'airblade/vim-gitgutter'
  -- use '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
  -- use 'tpope/vim-dadbod'
  -- use 'kristijanhusak/vim-dadbod-ui'
  -- use 'takac/vim-hardtime'
  -- use 'chrisbra/NrrwRgn'
  -- use 'AndrewRadev/linediff.vim'
  -- use 'hrsh7th/vim-vsnip'
  -- use 'hrsh7th/vim-vsnip-integ'
  -- use 'simnalamburt/vim-mundo', {'on'= 'MundoToggle'}
  -- use 'liuchengxu/vim-which-key',{'on'= ['WhichKey', 'WhichKey!']}
  -- use 'itchyny/lightline.vim'
  -- use 'RRethy/vim-illuminate'
  -- use 'challenger-deep-theme/vim', { 'as'= 'challenger-deep' }
