" ================ Narrow region =====================  {{{
" chrisbra/NrrwRgn

" Disable default maps
let g:nrrw_rgn_nomap_nr = 1
let g:nrrw_rgn_nomap_Nr = 1

" All maps will use buffers instead of windows
" narrow selection
nnoremap <leader>nn :NR<CR>
vnoremap <leader>nn :NR<CR>
" open last visual selected
nnoremap <leader>nv :NRV<CR>
" load line to prepare multi open
vnoremap <leader>np :NRP<CR>
" clear prepared lines
nnoremap <leader>nc :NRP<CR>
" unload prepared line
nnoremap <leader>nu :NRU<CR>
" open all prepared lines
nnoremap <leader>nm :NRM<CR>
" open last narrowed selection
nnoremap <leader>nl :NRL<CR>
" ==================================================== }}}
