" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

" Avoid showing message extra message when using completion
set shortmess+=c

"inoremap <silent><expr> <c-p> completion#trigger_completion()

imap <tab> <Plug>(completion_smart_tab)
imap <s-tab> <Plug>(completion_smart_s_tab)

" Use <Tab> as trigger keys
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <TAB>
  \ pumvisible() ? "\<C-n>" :
  \ <SID>check_back_space() ? "\<TAB>" :
  \ completion#trigger_completion()

" let g:completion_enable_snippet = 'vim-vsnip'
" let g:completion_confirm_key = "\<C-y>"
let g:completion_confirm_key = ""
imap <expr> <cr>  pumvisible() ? complete_info()["selected"] != "-1" ?
                 \ "\<Plug>(completion_confirm_completion)"  : "\<c-e>\<CR>" :  "\<CR>"

" let g:completion_enable_auto_hover = 0
" let g:completion_enable_auto_signature = 0
let g:completion_enable_auto_paren = 1

" Sorting completion items (possible value: 'length', 'alphabet', 'none')
" let g:completion_sorting = "length"

" Matching Strategy (default 'exact')
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy', 'all']
let g:completion_matching_ignore_case = 1
let g:completion_trigger_character = ['.']
" let g:completion_trigger_keyword_length = 3 " default = 1
" let g:completion_trigger_on_delete = 1
" let g:completion_timer_cycle = 200 "default value is 80

let g:completion_chain_complete_list = {
        \'default' : [
        \    {'complete_items': ['snippet', 'lsp']},
        \    {'complete_items': ['path'], 'triggered_only': ['/']},
        \]
        \}
imap <C-j> <Plug>(completion_next_source)
imap <C-k> <Plug>(completion_prev_source)
