" ================= Lightline ========================== {{{
let g:lightline = {}
let g:lightline.colorscheme = 'tokyonight'
" let g:lightline.mode_map = {
"   \   'n' : 'N',
"   \   'i' : 'I',
"   \   'R' : 'R',
"   \   'v' : 'V',
"   \   'V' : 'VL',
"   \   "\<C-v>": 'VB',
"   \   'c' : 'C',
"   \   's' : 'S',
"   \   'S' : 'SL',
"   \   "\<C-s>": 'SB',
"   \   't': 'T',
"   \ }
" let g:lightline.active = {
"   \   'left': [ [ 'mode', 'paste' ],
"   \             [ 'gitbranch', 'readonly'],
"   \             [ 'filename' ] ],
"   \   'right': [ [ 'lineinfo', 'percent' ],
"   \              [ '' ],
"   \              [ 'filetype' ] ] ,
"   \ }
let g:lightline.active = {
  \   'left': [ [ 'filename' ],
  \             [ 'gitbranch', 'readonly'],
  \             [ '' ] ],
  \   'right': [ [ 'lineinfo' ],
  \              [ '' ],
  \              [ 'lsp_status' ] ] ,
  \ }
let g:lightline.component = {
  \   'lineinfo': ' %3l:%-2v',
  \ }
" let g:lightline.component_expand = {
"   \   'lsp_status': 'LspStatus',
"   \ }
" let g:lightline.component_visible_condition = {
"   \   'lsp_status': 'lua not vim.tbl_isempty(vim.lsp.buf_get_clients(0))',
"   \ }
let g:lightline.component_function = {
  \   'gitbranch'  : 'LightlineBranch',
  \   'gitblame'   : 'LightlineBlame',
  \   'gitstatus'  : 'LightlineGitStatus',
  \   'readonly'   : 'LightlineReadonly',
  \   'filename'   : 'LightlineFilename',
  \   'lsp_status' : 'LspStatus',
  \   'treesitter' : 'LightlineTreesitter',
  \ }
let g:lightline.separator = {
  \   'left': '', 'right': ''
  \ }
let g:lightline.subseparator = {
  \   'left': '', 'right': ''
  \ }
function! LightlineBranch()
  let branch = get(b:,'gitsigns_head','')
  return branch !=# '' ? ' '.branch : ''
endfunction

" function! LightlineBlame() abort
"   let blame = get(b:, '', '')
"   " return blame
"   return winwidth(0) > 120 ? blame : ''
" endfunction

function! LightlineGitStatus()
  let [a,m,r] = GitGutterGetHunkSummary()
  return printf('+%d ~%d -%d', a, m, r)
  return get(b:,'gitsigns_head','')
endfunction

" function! LspStatus() abort
"   if luaeval('not vim.tbl_isempty(vim.lsp.buf_get_clients(0))')
"      return luaeval("require('lsp-status').status()")
"   else
"      return ''
"   endif
" endfunction

" LSP
function! LspStatus() abort
  if luaeval('#vim.lsp.buf_get_clients() > 0')
    return luaeval("require('lsp-status').status()")
  endif

  return ''
endfunction


" function! LightlineTreesitter()
"   if g:loaded_nvim_treesitter
"       return nvim_treesitter#statusline(50, ['class', 'function', 'method'], function('s:Fun'), ' | ')
"   endif
"   return ''
" endfunction

" function! s:Fun(line) abort
"   return luaeval("_A:gsub('%s*[%[%(%{]*%s*$', '')", line)
" endfunction

function! LightlineReadonly()
  return &readonly ? '' : ''
endfunction

function! LightlineFilename()
  let filename = expand('%:t') !=# '' ? expand('%:t') : '[No Name]'
  let modified = &modified ? ' +' : ''
  return filename . modified
endfunction

command! LightlineReload call LightlineReload()

function! LightlineReload()
  call lightline#init()
  call lightline#colorscheme()
  call lightline#update()
endfunction
" ==================================================== }}}
