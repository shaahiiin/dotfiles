" ================ Functions and augroups ============
" Delete trailing whitespaces
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\v\s+$//ge
  exe "normal `z"
  delmarks z
endfunc

nnoremap <leader>os :call DeleteTrailingWS()<CR>

" Delete empty buffers (buffers with title "[No Name]")
" function! s:CleanEmptyBuffers()
"     let buffers = filter(range(1, bufnr('$')), 'buflisted(v:val) && empty(bufname(v:val)) && bufwinnr(v:val)<0 && !getbufvar(v:val, "&mod")')
"     if !empty(buffers)
"         exe 'bw ' . join(buffers, ' ')
"     endif
" endfunction

" nnoremap <leader>bc :call DeleteEmptyBuffers()<CR>

" autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Highlight yanked text briefly
augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank {higroup="IncSearch", timeout=150}
augroup END

let s:hidden_all = 0
let s:scl = &signcolumn
function! ZenMode()
    if s:hidden_all  == 0
        let s:hidden_all = 1
        set laststatus=0
        set showtabline=0
        set nonumber
        GitGutterDisable
        set signcolumn=no
    else
        let s:hidden_all = 0
        set laststatus=2
        set showtabline=1
        set number
        GitGutterEnable
        set signcolumn="s:scl"
    endif
endfunction

nnoremap <leader>tz :call ZenMode()<CR>
