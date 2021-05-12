-- liuchengxu/vista.vim

-- nnoremap <F3> :Vista!!<CR>
vim.g.vista_icon_indent = ["╰─▸ ", "├─▸ "]
vim.g.vista_default_executive = 'ctags'
vim.g.vista#renderer#enable_icon = 1
vim.g.vista#renderer#icons = {
\   "function": "\uf794",
\   "variable": "\uf71b",
\  }
--nnoremap <silent> st :Vista finder<CR>
