nnoremap(';', ':')

vim.g.mapleader = ' '

-- Disable accidental Ex mode
--nnoremap Q <nop>

--nnoremap s <nop>
--nnoremap S <nop>

-- Emacs style bindings
-- go to start of line
inoremap('<C-a>', '<Esc>I')
cnoremap('<C-a>', '<C-b>')

vim.fn.nvim_set_keymap(
  'n',
  '<C-a>',
  [[getline('.')[: col('.') - 2] =~ '^\s*$' ? '0' : '0^']],
  {expr = true}
) -- switch between start of line and text (0 and ^)
--tnoremap <C-a> <C-b>
-- go to end of line
nnoremap('<C-e>', '$')
inoremap('<C-e>', '<Esc>A')

-- move word forward/backward
nnoremap('<M-b>', 'b')
inoremap('<M-b>', '<C-o>b')
nnoremap('<M-f>', 'e')
inoremap('<M-f>', '<C-o>e')

-- Close current buffer (safely)
nnoremap('q', '<cmd>confirm bd<CR>')
nnoremap('Q', '<cmd>confirm qa<CR>')
--nnoremap <C-q> :confirm :q<CR> " Doesn't work in windows os

-- enter command mode easily; this is used a lot
nnoremap(';', ':')
vnoremap(';', ':')

nnoremap('U', '<C-r>')

-- nnoremap(']b', ':bn<CR>')
-- nnoremap('[b', ':bp<CR>')

nnoremap(']q', ':cn<CR>')
nnoremap('[q', ':cp<CR>')

-- Save file/buffer
-- nnoremap('<silent>', '<S-s> :update<CR>:echo 'File Saved'<CR>')

-- Y should work like C and D
nnoremap('Y', 'y$')

-- Toggle hl search
nnoremap('<leader>th', ':set hls!<CR>:set hls?<CR>')
-- remove highlight from search
nnoremap('<silent>', '<leader>oh :noh<CR>')

-- highlight last inserted text
nnoremap('gV', '`[v`]')

-- Longer scrolls
-- nnoremap <C-e> 3<C-e>
-- nnoremap <C-y> 3<C-y>

-- Easier indenting
nnoremap('>', '>>')
nnoremap('<', '<<')
vnoremap('>', '>gv')
vnoremap('<', '<gv')

-- Search withing visually selected text
vnoremap('<M-/>', [[<Esc>/\%V]])
-- Search within screen (messed up by scrolloff, need a better method)
nnoremap('<M-/>', [[LVH<Esc>/\%V]])

-- Substitutions
vnoremap('gs', '"zy:%s/<C-r>"//gc<left><left><left>')
nnoremap('gs', ':%s/<C-r><C-w>//gc<left><left><left>')

-- Remap 'search mode' maps -
vim.cmd [[set wildcharm=<C-z>]]
cnoremap('<expr>', [[<Tab>   getcmdtype() =~ "[\/?]" ? "<C-g>" : "<C-z>"]])
cnoremap('<expr>', [[<S-Tab> getcmdtype() =~ "[\/?]" ? "<C-t>" : "<S-Tab>"]])

-- Terminal mode
-- nnoremap('<F6>', ':let $VIM_DIR=expand('%:p:h')<CR>:vs\|:te<CR>cd $VIM_DIR<CR>')
-- tnoremap <Esc> <C-\><C-n> " messes with fzf floating window search

-- Quickfix " TODO: add easier bindings for cycle commands
--[[
-- Open the quickfix window
nnoremap('<Leader>qo', '<cmd>copen<CR>')
-- Close it
nnoremap('<Leader>qc', '<cmd>cclose<CR>')
-- Open it if there are 'errors', close it otherwise (some people prefer this)
nnoremap('<Leader>qw', '<cmd>cwindow<CR>')
-- Go to the next error in the window
nnoremap('<Leader>qn', '<cmd>cnext<CR>')
nnoremap('<F4>', '      <cmd>cnext<CR>')
-- Go to the previous error in the window
nnoremap('<Leader>qp', '<cmd>cprevious<CR>')
nnoremap('<S-F4>', '    <cmd>cprevious<CR>')
-- Go to the first error in the next file
nnoremap('<Leader>qN', '<cmd>cnfile<CR>')
-- Go to the last error in the prev file
nnoremap('<Leader>qP', '<cmd>cpfile<CR>')
-- Go to error under cursor (if cursor is in quickfix window)
-- nnoremap <Leader>q. <cmd>.cc<CR>
--]]

-- Toggle all folds under cursor
nnoremap([[\]], 'zA')

-- ====================================================
-- TODO: convert to lua?
-- TODO: move out to separate file
-- Delete trailing whitespaces
vim.cmd [[
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\v\s+$//ge
  exe "normal `z"
  delmarks z
endfunc
nnoremap <leader>os :call DeleteTrailingWS()<CR>
]]
