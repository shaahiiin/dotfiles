-- nvim-treesitter/nvim-treesitter

local treesitter = require'nvim-treesitter.configs'

treesitter.setup {
  ensure_installed = {"typescript", "tsx", "json", "javascript", "html", "css", "lua", "python" },
  highlight = {
    enable = true,
  },
  incremental_selection = {
    enable = true,
    keymaps = { -- mappings for incremental selection (visual mappings)
      init_selection = '\\',    -- maps in normal mode to init the node/scope selection
      node_incremental = '\\',  -- increment to the upper named parent
      scope_incremental = '<M-e>', -- increment to the upper scope (as defined in locals.scm)
      node_decremental = '|',  -- decrement to the previous node
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
        ['aC'] = '@class.outer',
        ['iC'] = '@class.inner',
        ['ac'] = '@conditional.outer',
        ['ic'] = '@conditional.inner',
        ['ae'] = '@block.outer',
        ['ie'] = '@block.inner',
        ['al'] = '@loop.outer',
        ['il'] = '@loop.inner',
        ['is'] = '@statement.inner',
        ['as'] = '@statement.outer',
        ['ad'] = '@comment.outer',
        ['am'] = '@call.outer',
        ['im'] = '@call.inner',
      },
    },
    move = {
      enable = true,
      goto_next_start = {
        ["<c-j>"] = "@function.outer",
        ['<s-j>'] = '@statement.outer',
      },
      goto_previous_start = {
        ["<c-k>"] = "@function.outer",
        ['<s-k>'] = '@statement.outer',
      },
    },
    --[[ lsp_interop = {
      enable = true,
      peek_definition_code = {
        ["df"] = "@function.outer",
        ["dF"] = "@class.outer",
      },
    }, ]]
  },
}

-- Folding
vim.o.foldmethod = 'expr'
vim.cmd [[set foldexpr=nvim_treesitter#foldexpr()]]
vim.o.foldlevelstart = 99
vim.o.foldnestmax = 3
