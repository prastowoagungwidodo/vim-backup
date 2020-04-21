execute pathogen#infect()
set guioptions=
"indents
set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab
set autoindent
set hidden

" Font
set guifont=Fira\ Code:h12
" Syntax highlight
syntax on

" Theme
colorscheme nord
let g:nord_italic = 1
let g:nord_cursor_line_number_background = 1

filetype plugin indent on

" Show line Number
set number

" buffer manager
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-l> <C-w>l
nmap + <C-w>+
nmap - <C-w>-
nmap = <C-w>=
nmap _ <C-w>_

"folding
set foldmethod=syntax
set nofoldenable

augroup FiletypeGroup
    autocmd!
    au BufNewFile,BufRead *.jsx set filetype=javascript.jsx
augroup END

" NerdTree Configuration
map <C-\> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeAutoDeleteBuffer = 1
" END NerdTree Configuration

" Vim Airline
let g:airline_theme='nord'
let g:airline_powerline_fonts = 1
let g:airline#extensions#ale#enabled = 1
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'
" END Vim Airline


let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint'],
\   'javascript.jsx': ['eslint'],
\}

let g:ale_linters = {
\   'javascript': ['eslint'],
\   'javascript.jsx': ['eslint'],
\}

nnoremap  <silent>   <A-tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bnext<CR>
nnoremap  <silent> <A-s-tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bprevious<CR>

" Javascript
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1

" IndentLine
" let g:indentLine_setColors = 0
let g:vim_json_syntax_conceal = 0
