" Set tab length to 2
set tabstop=2
set softtabstop=0 noexpandtab
set shiftwidth=2
set expandtab

set clipboard=unnamed "share clipboard with vim reg
set number "show line numbers (with relative number shows current line number)
"set relativenumber "set relative line numbering (for easier jumping)
set cursorline "highlight cursor line
set ignorecase "ignore case for search
set mouse=a "Mouse for scrolling and visual mode selection (lazy)

call plug#begin('~/.local/share/nvim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sheerun/vim-polyglot'
"Plug 'pangloss/vim-javascript'
Plug 'altercation/vim-colors-solarized'
Plug 'tpope/vim-fugitive'
"Plug 'majutsushi/tagbar'
Plug 'scrooloose/syntastic'
Plug 'majutsushi/tagbar'
Plug 'tasn/vim-tsx'

call plug#end()

nnoremap <Space> <nop>

" NerdTree {{{
map <C-n> :NERDTreeToggle<CR>
" }}}

" Tagbar {{{
nnoremap <F8> :TagbarToggle<CR>

" Set default width
let g:tagbar_width = 30
" }}}

" Leader {{{
let mapleader = " "
"}}}

map  <leader>h <Esc>:noh<CR>

colorscheme solarized "Set color scheme
set t_Co=256
set encoding=utf8
syntax enable "Enable syntax highlighting
set background=dark "Set dark background

" Airline.vim {{{
augroup airline_config
	autocmd!
	let g:airline_powerline_fonts = 1
	" let g:airline_enable_syntastic = 1
augroup END
" }}}

" Delete trailing whitespaces {{{
func! DeleteTrailingWS()
	exe "normal mz"
	%s/\s\+$//ge
	exe "normal `z"
	delmarks z
endfunc
noremap <leader>o :call DeleteTrailingWS()<CR>
" }}}

set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·
set list
