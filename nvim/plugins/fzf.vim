" ================= FZF ==============================
" junegunn/fzf.vim
"
" TODO: 
" lsp
" treesitter
" live grepping
" colors

" Default FZF layout
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.9, 'border': 'rounded' } }
" let g:fzf_layout = { 'down': '~25%' }

let g:fzf_preview_window = ['right:50%:noborder', 'ctrl-/']

" let g:fzf_colors =
" \ { 'fg':      ['fg', 'Normal'],
"   \ 'bg':      ['bg', 'Normal'],
"   \ 'hl':      ['fg', 'Comment'],
"   \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
"   \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
"   \ 'hl+':     ['fg', 'Statement'],
"   \ 'info':    ['fg', 'PreProc'],
"   \ 'border':  ['fg', 'Ignore'],
"   \ 'prompt':  ['fg', 'Conditional'],
"   \ 'pointer': ['fg', 'Exception'],
"   \ 'marker':  ['fg', 'Keyword'],
"   \ 'spinner': ['fg', 'Label'],
"   \ 'header':  ['fg', 'Comment'] }

" Add FZF results to quickfix list
" CTRL-A to select all
" CTRL-Q to build quickfix list with selected items
function! s:build_quickfix_list(lines)
  call setqflist(map(copy(a:lines), '{ "filename": v:val }'))
  copen
  cc
endfunction

let g:fzf_action = {
  \ 'ctrl-q': function('s:build_quickfix_list'),
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" TODO: enable live grep using this
" INITIAL_QUERY=""
" RG_PREFIX="rg --column --line-number --no-heading --color=always --smart-case "
" FZF_DEFAULT_COMMAND="$RG_PREFIX '$INITIAL_QUERY'" \
"   fzf --bind "change:reload:$RG_PREFIX {q} || true" \
"       --ansi --disabled --query "$INITIAL_QUERY" \
"       --height=50% --layout=reverse

" layout for :GFiles
" command! -bang GFiles
" \ call fzf#vim#git_files({  }, <bang>0)

" Change layout for :Commands
command! -bang Commands
\ call fzf#vim#commands({ 'window': { 'width': 1, 'height': 0.33, 'xoffset': 0, 'yoffset': 1, 'border': 'sharp' } }, <bang>0)

" Change layout for :BLines
command! -bang BLines
\ call fzf#vim#buffer_lines({ 'window': { 'width': 1, 'height': 0.33, 'xoffset': 0, 'yoffset': 1, 'border': 'sharp' } }, <bang>0)

" Change layout for :Lines
command! -bang Lines
\ call fzf#vim#lines({ 'window': { 'width': 1, 'height': 0.33, 'xoffset': 0, 'yoffset': 1, 'border': 'sharp' } }, <bang>0)

command! ListFiles execute (len(system('git rev-parse'))) ? ':Files' : ':GFiles'
nnoremap <silent> sf <cmd>ListFiles<CR>
" nnoremap <silent> sp <cmd>FZFSearchProject<CR>
nnoremap <silent> sg <cmd>Rg<CR>
" nnoremap <silent> sd <cmd>Dirvish<CR> " use default -
nnoremap <silent> sl <cmd>BLines<CR>
nnoremap <silent> sL <cmd>Lines<CR>
nnoremap <silent> sb <cmd>Buffers<CR>
nnoremap <silent> sh <cmd>History<CR>
" nnoremap <silent> sc <cmd>Colors<CR>
nnoremap <silent> sm <cmd>Marks<CR>
nnoremap <silent> <F1> <cmd>Helptags<CR>

imap <c-x><c-k> <plug>(fzf-complete-word)
" imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-l> <plug>(fzf-complete-line)

