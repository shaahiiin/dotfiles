" ================ Basic mappings ====================

let mapleader = " "

nnoremap s <nop>
nnoremap S <nop>

" go to start of line
cnoremap <C-a> <C-b>
" nnoremap <C-a> 0
inoremap <C-a> <Esc>I
" tnoremap <C-a> <C-b>
" go to end of line
" nnoremap <C-e> $
inoremap <C-e> <Esc>A

" move word forward/backward
nnoremap <M-b> b
inoremap <M-b> <C-o>b
nnoremap <M-f> e
inoremap <M-f> <C-o>e

" Close current buffer (safely)
" nnoremap q <cmd>confirm bd<CR>
" nnoremap Q <cmd>confirm qa<CR>
nnoremap q <cmd>bd<CR>
nnoremap Q <cmd>bp\|bd \#<CR>
" nnoremap <C-q> :confirm :q<CR> " Doesn't work in windows os

" give it a try and you will like it
nnoremap ; :
vnoremap ; :

" 0 switches between start of line and text (0 and ^)
nnoremap <expr> 0 getline('.')[: col('.') - 2] =~ '^\s*$' ? '0' : '0^'

nnoremap U <C-r>

nnoremap ]b :bn<CR>
nnoremap [b :bp<CR>

nnoremap ]q :cn<CR>
nnoremap [q :cp<CR>

" Y should work like C and D
nnoremap Y y$

" Toggle hl search
nnoremap <leader>th :set hls!<CR>:set hls?<CR>
" remove highlight from search
nnoremap <silent> <leader>oh :noh<CR>

" highlight last inserted text
nnoremap gV `[v`]

" Easier indenting
nnoremap > >>
nnoremap < <<
vnoremap > >gv
vnoremap < <gv

" Do exact string search
" nnoremap g/ /\M
" Do exact string in visually selected text
" vnoremap g/ <Esc>/\%V\M

" Search withing visually selected text
vnoremap <M-/> <Esc>/\%V
" Search within screen
nnoremap <M-/> LVH<Esc>/\%V

" Substitutions
vnoremap gs "zy:%s/<C-r>"//gc<left><left><left>
nnoremap gs :%s/<C-r><C-w>//gc<left><left><left>

" Remap 'search mode' maps
set wildcharm=<C-z>
cnoremap <expr> <Tab>   getcmdtype() =~ '[\/?]' ? "<C-g>" : "<C-z>"
cnoremap <expr> <S-Tab> getcmdtype() =~ '[\/?]' ? "<C-t>" : "<S-Tab>"

" Terminal mode
nnoremap <F6> :let $VIM_DIR=expand('%:p:h')<CR>:vs\|:te<CR>cd $VIM_DIR<CR>
" tnoremap <Esc> <C-\><C-n> " messes with fzf floating window search

" Quickfix " TODO: add easier bindings for cycle commands
" Open the quickfix window
nnoremap <Leader>qo <cmd>copen<CR>
" Close it
nnoremap <Leader>qc <cmd>cclose<CR>
" Open it if there are 'errors', close it otherwise (some people prefer this)
nnoremap <Leader>qw <cmd>cwindow<CR>
" Go to the next error in the window
nnoremap <Leader>qn <cmd>cnext<CR>
" Go to the previous error in the window
nnoremap <Leader>qp <cmd>cprevious<CR>
" Go to the first error in the next file
nnoremap <Leader>qN <cmd>cnfile<CR>
" Go to the last error in the prev file
nnoremap <Leader>qP <cmd>cpfile<CR>
" Go to error under cursor (if cursor is in quickfix window)
" nnoremap <Leader>q. <cmd>.cc<CR>

" Toggle all folds under cursor
" nnoremap \ zA

nnoremap <leader>ev <cmd>tab split $MYVIMRC<CR>
nnoremap <leader>sv <cmd>so $MYVIMRC<CR>

nnoremap <Esc> <Esc><cmd>noh<CR>

