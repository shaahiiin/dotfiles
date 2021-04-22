" ================ Vim config ========================

let g:loaded_python_provider = 0
let g:python3_host_prog='/usr/local/bin/python3'
let g:ruby_host_prog='/usr/bin/ruby'
" let s:project_directories=['~/work', '~/code']

let g:vsnip_snippet_dir = '~/.config/vsnip'

runtime plugins/plug.vim

runtime settings.vim
runtime functions.vim
runtime mappings.vim

runtime plugins/fzf.vim
runtime plugins/gitgutter.vim
runtime plugins/neoformat.vim
runtime plugins/lightline.vim
runtime plugins/mundo.vim
runtime plugins/colors.vim
runtime plugins/smoothie.vim

if has('nvim-0.5')
  lua require('utils')
  " lua require('plugins/galaxyline')
  lua require('plugins/treesitter')
  lua require('plugins/lsp')
  " lua require('plugins/telescope')
  runtime plugins/nvim-compe.vim
endif

" runtime plugins/vsnip.vim
" runtime plugins/whichkey.vim
