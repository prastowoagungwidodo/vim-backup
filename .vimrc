execute pathogen#infect()
autocmd! GUIEnter * set vb t_vb=
set guioptions+=a
"indents
set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab
set autoindent
set hidden
set autoread

set splitright
set completeopt-=preview

let g:ycm_filepath_blacklist = {}

" Font
set guifont=Fira\ Code:h12
" Syntax highlight
syntax on

" Theme
colorscheme onedark
hi VertSplit guibg=bg guifg=#444444
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
let g:NERDTreeIgnore = ['^node_modules$']
" END NerdTree Configuration

" Vim Airline
let g:airline_theme='minimalist'
let g:airline_powerline_fonts = 1
let g:airline#extensions#ale#enabled = 1
" Enable the list of buffers
"let g:airline#extensions#tabline#enabled = 1
" Show just the filename
"let g:airline#extensions#tabline#fnamemod = ':t'
" END Vim Airline


let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint'],
\   'javascript.jsx': ['eslint'],
\   'php': ['phpcbf'],
\}

let g:ale_linters = {
\   'javascript': ['eslint'],
\   'javascript.jsx': ['eslint'],
\   'php': ['phpcs'],
\}

nnoremap  <silent>   <A-tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bnext<CR>
nnoremap  <silent> <A-s-tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bprevious<CR>

" IndentLine
" let g:indentLine_setColors = 0
let g:vim_json_syntax_conceal = 0

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","
set backspace=eol,start,indent
" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500
