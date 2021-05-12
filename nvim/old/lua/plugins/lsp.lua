-- LSP related config

local nvim_lsp = require('lspconfig')
local lsp_status = require('lsp-status')

lsp_status.register_progress()

local function syntax_at_point()
    if vim.g.loaded_nvim_treesitter and vim.g.loaded_nvim_treesitter > 0 then
        local current_node = require('nvim-treesitter/ts_utils').get_node_at_cursor()
        if current_node then
            return current_node:type()
        end
    end
    -- fallback
    local pos = vim.api.nvim_win_get_cursor(0)
    return vim.fn.synIDattr(vim.fn.synID(pos[1], pos[2], 1), "name")
end

local function preview_location_callback(_, _, result)
  if result == nil or vim.tbl_isempty(result) then
    return nil
  end
  vim.lsp.util.preview_location(result[1])
end

function PeekDefinition()
  local params = vim.lsp.util.make_position_params()
  return vim.lsp.buf_request(0, 'textDocument/definition', params, preview_location_callback)
end

local on_attach = function(client, bufnr)
  lsp_status.on_attach(client)

  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  local opts = { noremap=true, silent=true }
  buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
  buf_set_keymap('n', ',k', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
  buf_set_keymap('n', ',i', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  buf_set_keymap('n', ',<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  buf_set_keymap('n', ',wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
  buf_set_keymap('n', ',wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
  buf_set_keymap('n', ',wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
  buf_set_keymap('n', ',t', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
  buf_set_keymap('n', ',r', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  buf_set_keymap('n', ',g', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  buf_set_keymap('n', ',d', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
  buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
  buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
  buf_set_keymap('n', ',D', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)

  buf_set_keymap('n', ',c', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)

  -- Set some keybinds conditional on server capabilities
  if client.resolved_capabilities.document_formatting then
    buf_set_keymap("n", "=", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
  elseif client.resolved_capabilities.document_range_formatting then
    buf_set_keymap("n", "=", "<cmd>lua vim.lsp.buf.range_formatting()<CR>", opts)
  end

  -- Set autocommands conditional on server_capabilities
  if client.resolved_capabilities.document_highlight then
    -- require('lspconfig').util.nvim_multiline_command [[
      vim.cmd('hi LspReferenceRead  cterm=bold guibg=#5c6370')
      vim.cmd('hi LspReferenceText  cterm=bold guibg=#5c6370')
      vim.cmd('hi LspReferenceWrite cterm=bold guibg=#5c6370')
      vim.cmd('augroup lsp_document_highlight')
        vim.cmd('autocmd!')
        vim.cmd('autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()')
        vim.cmd('autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()')
      vim.cmd('augroup END')
  end
end

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

-- Use a loop to conveniently both setup defined servers 
-- and map buffer local keybindings when the language server attaches
local servers = { "tsserver", "pyls", "jsonls" }
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup { on_attach = on_attach, capabilities = capabilities, }
end

-- lspsaga
-- local opts = {
--   code_action_icon = '   ',
--   definition_preview_icon = '    ',
--   -- 1: thin border | 2: rounded border | 3: thick border
--   border_style = 2,
-- }

-- vim.cmd [[nnoremap <silent> ,ca <cmd>lua require('lspsaga.codeaction').code_action()<CR>]]
-- vim.cmd [[nnoremap <silent> ,p <cmd>lua require'lspsaga.provider'.preview_definition()<CR>]]
-- vim.cmd [[nnoremap <silent> [d <cmd>lua require'lspsaga.diagnostic'.lsp_jump_diagnostic_prev()<CR>]]
-- vim.cmd [[nnoremap <silent> ]d <cmd>lua require'lspsaga.diagnostic'.lsp_jump_diagnostic_next()<CR>]]
require('lspkind').init()

---- https://github.com/nvim-lua/diagnostic-nvim/issues/73
-- diagnostics
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    -- Enable underline, use default values
    underline = true,
    -- Enable virtual text, override spacing to 4
    -- virtual_text = {
    --   spacing = 4,
    --   prefix = ' ',
    -- },
    virtual_text = false,
    -- Disable a feature
    update_in_insert = false,
  }
)

-- diagnostics signs
vim.cmd('sign define LspDiagnosticsSignError text= texthl=LspDiagnosticsSignError linehl= numhl=')
vim.cmd('sign define LspDiagnosticsSignWarning text= texthl=LspDiagnosticsSignWarning linehl= numhl=')
vim.cmd('sign define LspDiagnosticsSignInformation text= texthl=LspDiagnosticsSignInformation linehl= numhl=')
vim.cmd('sign define LspDiagnosticsSignHint text= texthl=LspDiagnosticsSignHint linehl= numhl=')
-- other usable signs: ✗ ∆  

-- lspfuzzy
-- require('lspfuzzy').setup {}

-- lspkind


