-- hrsh7th/vim-vsnip

-- NOTE: You can use other key to expand snippet.

-- Expand
-- imap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'
-- smap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'

-- Expand or jump (or trigger completion)
-- imap <expr> <Tab>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : pumvisible() ? "\<C-n>" : completion#trigger_completion()
-- smap <expr> <Tab>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<Tab>'

-- Jump forward or backward
-- imap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
-- smap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'

-- imap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : pumvisible() ? "\<C-p>" : '<S-Tab>'
-- smap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : pumvisible() ? "\<C-p>" : '<S-Tab>'

-- Select or cut text to use as $TM_SELECTED_TEXT in the next snippet.
-- See https://github.com/hrsh7th/vim-vsnip/pull/50
-- nmap        s   <Plug>(vsnip-select-text)
-- xmap        s   <Plug>(vsnip-select-text)
-- smap        s   <Plug>(vsnip-select-text)
-- nmap        S   <Plug>(vsnip-cut-text)
-- xmap        S   <Plug>(vsnip-cut-text)
-- smap        S   <Plug>(vsnip-cut-text)

-- If you want to use snippet for multiple filetypes, you can `g:vsip_filetypes` for it.
-- vim.g.vsnip_filetypes = {}
-- vim.g.vsnip_filetypes.javascriptreact = ['javascript']
-- vim.g.vsnip_filetypes.typescriptreact = ['typescript']
-- 
