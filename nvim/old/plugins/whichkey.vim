" ================= Vim-which-key ==================== {{{
autocmd! User vim-which-key call which_key#register('<Space>', 'g:which_key_map')
nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>

" Define prefix dictionary
let g:which_key_map =  {}

" =======================================================
" Mappings
" =======================================================

" Files maps {{{
let g:which_key_map.f = { 'name' : '+Files' }

let g:which_key_map.f.s = 'save-file'
let g:which_key_map.f.h = 'recent'
let g:which_key_map.f.f = 'open file'
let g:which_key_map.f.b = 'bookmarks'
let g:which_key_map.f.v = 'open vimrc'
" }}}

" Buffer maps {{{
" let g:which_key_map.b   = { 'name' : '+Buffers' }

" let g:which_key_map.b.b = ['Buffers'   , 'search']
" let g:which_key_map.b.d = ['bd'        , 'delete']
" let g:which_key_map.b.f = ['bfirst'    , 'first']
" let g:which_key_map.b.h = ['Startify'  , 'home/dashboard']
" let g:which_key_map.b.l = ['blast'     , 'last']
" let g:which_key_map.b.n = ['bnext'     , 'next']
" let g:which_key_map.b.p = ['bprevious' , 'previous']
" let g:which_key_map.b.c = 'clear empty buffers'
" }}}

" Project maps
" let g:which_key_map.p   = { 'name' : '+Projects' }

" Search related {{{
" let g:which_key_map.s = { 'name' : '+Search' }
" let g:which_key_map.s.p = 'projects'
" let g:which_key_map.s.f = 'files in directory'
" let g:which_key_map.s.d = 'lines in directory'
" let g:which_key_map.s.l = 'lines in current buffer'
" let g:which_key_map.s.L = 'lines in open buffers'
" let g:which_key_map.s.b = 'buffers'
" }}}

" let g:which_key_map.a = { 'name' : '+Applications' }
" let g:which_key_map.e = { 'name' : '+Errors' }

" Git related maps {{{
let g:which_key_map.g   = { 'name' : '+Git' }
let g:which_key_map.g.b = ['Gblame'              , 'Show blame']
let g:which_key_map.g.s = ['Gstatus'             , 'Show status']
let g:which_key_map.g.a = ['GitGutterStageHunk'  , 'Stage hunk']
let g:which_key_map.g.p = ['GitGutterPreviewHunk', 'Preview hunk']
let g:which_key_map.g.u = ['GitGutterUndoHunk'   , 'Undo hunk']
" }}}

let g:which_key_map.n = { 'name' : '+Narrow' }
let g:which_key_map.n.n = 'narrow-visual'

" move to language section
" let g:which_key_map.l = { 'name' : '+Language' }
" let g:which_key_map.l.f = 'format'

" TODO: change this
" nnoremap <silent> <leader>oq  :copen<CR>
" nnoremap <silent> <leader>ol  :lopen<CR>
" let g:which_key_map.o = {
"     \ 'name' : '+open',
"     \ 'q' : 'open-quickfix'    ,
"     \ 'l' : 'open-locationlist',
"     \ }
" ====================================================== }}}
