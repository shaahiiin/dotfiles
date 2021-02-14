" ================= Vista ============================ {{{
" liuchengxu/vista.vim
" nnoremap <F3> :Vista!!<CR>
let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
let g:vista_default_executive = 'ctags'
let g:vista#renderer#enable_icon = 1
let g:vista#renderer#icons = {
\   "function": "\uf794",
\   "variable": "\uf71b",
\  }
nnoremap <silent> st :Vista finder<CR>
" ==================================================== }}}
