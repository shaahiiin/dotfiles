autocmd! User vim-which-key call which_key#register('<Space>', 'g:which_key_map')
nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>

-- Define prefix dictionary
vim.g.which_key_map =  {}

-- =======================================================
-- Mappings
-- =======================================================

-- Files maps
vim.g.which_key_map.f = { 'name' : '+Files' }

vim.g.which_key_map.f.s = 'save-file'
vim.g.which_key_map.f.h = 'recent'
vim.g.which_key_map.f.f = 'open file'
vim.g.which_key_map.f.b = 'bookmarks'
vim.g.which_key_map.f.v = 'open vimrc'

-- Buffer maps
-- vim.g.which_key_map.b   = { 'name' : '+Buffers' }

-- vim.g.which_key_map.b.b = ['Buffers'   , 'search']
-- vim.g.which_key_map.b.d = ['bd'        , 'delete']
-- vim.g.which_key_map.b.f = ['bfirst'    , 'first']
-- vim.g.which_key_map.b.h = ['Startify'  , 'home/dashboard']
-- vim.g.which_key_map.b.l = ['blast'     , 'last']
-- vim.g.which_key_map.b.n = ['bnext'     , 'next']
-- vim.g.which_key_map.b.p = ['bprevious' , 'previous']
-- vim.g.which_key_map.b.c = 'clear empty buffers'

-- Project maps
-- vim.g.which_key_map.p   = { 'name' : '+Projects' }

-- Search related
-- vim.g.which_key_map.s = { 'name' : '+Search' }
-- vim.g.which_key_map.s.p = 'projects'
-- vim.g.which_key_map.s.f = 'files in directory'
-- vim.g.which_key_map.s.d = 'lines in directory'
-- vim.g.which_key_map.s.l = 'lines in current buffer'
-- vim.g.which_key_map.s.L = 'lines in open buffers'
-- vim.g.which_key_map.s.b = 'buffers'

-- vim.g.which_key_map.a = { 'name' : '+Applications' }
-- vim.g.which_key_map.e = { 'name' : '+Errors' }

-- Git related maps
vim.g.which_key_map.g   = { 'name' : '+Git' }
vim.g.which_key_map.g.b = ['Gblame'              , 'Show blame']
vim.g.which_key_map.g.s = ['Gstatus'             , 'Show status']
vim.g.which_key_map.g.a = ['GitGutterStageHunk'  , 'Stage hunk']
vim.g.which_key_map.g.p = ['GitGutterPreviewHunk', 'Preview hunk']
vim.g.which_key_map.g.u = ['GitGutterUndoHunk'   , 'Undo hunk']

vim.g.which_key_map.n = { 'name' : '+Narrow' }
vim.g.which_key_map.n.n = 'narrow-visual'

-- move to language
-- vim.g.which_key_map.l = { 'name' : '+Language' }
-- vim.g.which_key_map.l.f = 'format'

-- TODO: change this
-- nnoremap <silent> <leader>oq  :copen<CR>
-- nnoremap <silent> <leader>ol  :lopen<CR>
-- vim.g.which_key_map.o = {
--     \ 'name' : '+open',
--     \ 'q' : 'open-quickfix'    ,
--     \ 'l' : 'open-locationlist',
--     \ }
