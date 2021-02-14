-- kyazdani42/nvim-tree.lua

vim.g.lua_tree_width = 40
vim.g.lua_tree_ignore = { '.git', 'node_modules', '.cache' }
vim.g.lua_tree_auto_open = 1
vim.g.lua_tree_auto_close = 1
-- vim.g.lua_tree_quit_on_open = 1
vim.g.lua_tree_follow = 1
vim.g.lua_tree_indent_markers = 1
-- vim.g.lua_tree_hide_dotfiles = 1
vim.g.lua_tree_git_hl = 1
vim.g.lua_tree_root_folder_modifier = ':~'
vim.g.lua_tree_tab_open = 1
vim.g.lua_tree_width_allow_resize  = 1
-- vim.g.lua_tree_show_icons = {
--   git: 1,
--   folders: 1,
--   files: 1,
-- }

-- You can edit keybindings be defining this variable
-- You don't have to define all keys.
-- NOTE: the 'edit' key will wrap/unwrap a folder and open a file
vim.g.lua_tree_bindings = {
  edit =           {'<CR>', 'o'},
  edit_vsplit =    '<C-v>',
  edit_split =     '<C-x>',
  edit_tab =       '<C-t>',
  close_node =     {'<S-CR>', '<BS>'},
  toggle_ignored = 'I',
  toggle_dotfiles ='H',
  refresh =        'R',
  preview =        '<Tab>',
  cd =             '<C-]>',
  create =         'a',
  remove =         'd',
  rename =         'r',
  cut =            'x',
  copy =           'c',
  paste =          'p',
  prev_git_item =  '[c',
  next_git_item =  ']c',
}

-- let vim.g.lua_tree_disable_keybindings=1

-- default will show icon by default if no icon is provided
-- default shows no icon by default
vim.g.lua_tree_icons = {
  default = '',
  symlink = '',
  git = {
    unstaged = "✗",
    staged = "✓",
    unmerged = "",
    renamed = "➜",
    untracked = "★"
  },
  folder = {
    default = "",
    open = "",
    symlink = "",
  }
}

nnoremap('<F2>', '<cmd>NvimTreeToggle<CR>')
-- nnoremap('<leader>r',':LuaTreeRefresh<CR>')
-- nnoremap('<leader>n',':LuaTreeFindFile<CR>')
-- LuaTreeOpen and LuaTreeClose are also available if you need them

-- a list of groups can be found at `:help lua_tree_highlight`
--vim.cmd [[highlight LuaTreeFolderIcon guibg=blue]]
