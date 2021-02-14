-- nvim-telescope/telescope.nvim

require('telescope').load_extension('fzy_native')

nnoremap(":"   ,   "<cmd>lua require('telescope.builtin').commands()<cr>")
nnoremap("sf"  ,   "<cmd>lua require('telescope.builtin').find_files()<cr>")
nnoremap("sg"  ,   "<cmd>lua require('telescope.builtin').grep_string()<cr>")
nnoremap("sG"  ,   "<cmd>lua require('telescope.builtin').live_grep()<cr>")
nnoremap("sb"  ,   "<cmd>lua require('telescope.builtin').buffers()<cr>")
nnoremap("<f1>",   "<cmd>lua require('telescope.builtin').help_tags()<cr>")
nnoremap("sl"  ,   "<cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<cr>")
nnoremap("sm"  ,   "<cmd>lua require('telescope.builtin').marks()<cr>")
nnoremap("sh"  ,   "<cmd>lua require('telescope.builtin').oldfiles()<cr>")

nnoremap(",s"  ,   "<cmd>lua require('telescope.builtin').lsp_document_symbols()<cr>")
