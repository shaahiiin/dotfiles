" ================= Colorschemes/Themes ============== {{{
if (has("termguicolors"))
  set termguicolors
  hi LineNr ctermbg=NONE guibg=NONE
endif

" let ayucolor="mirage"
" colo ayu

" colo embark

" set bg=light
" let g:gruvbox_italic=1
" colo gruvbox

" Make background transparent
" hi Normal     ctermbg=NONE guibg=NONE
" hi LineNr     ctermbg=NONE guibg=NONE
" hi SignColumn ctermbg=NONE guibg=NONE

" let g:nvcode_termcolors=256
" syntax on
" colorscheme aurora

colorscheme zephyr

" Remove ~ chars from end of file (set after colorscheme set)
" -doesn't always work
"highlight NonText guifg=bg
" comments should be italic
" highlight Comment cterm=italic gui=italic
" ==================================================== }}}
