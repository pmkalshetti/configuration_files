" search
set hlsearch " enable highlight for all searched matches
set incsearch

" key mappings
nnoremap <silent> <F8> :TlistToggle<CR>
nnoremap <esc><esc> :noh<return>
nnoremap <Leader>f :ALEFix<CR>
set pastetoggle=<F3>
nmap <silent> <F9> :MarkdownPreview<CR>
nmap <silent> <F10> :StopMarkdownPreview<CR>

" customize plugins
let g:ale_fixers={'python': ['autopep8'], 'cpp': ['clang-format']}
let g:python_highlight_all = 1
let $PYTHONUNBUFFERED=1

" miscellaneous 
set nocompatible
filetype plugin indent on
syntax enable 
set timeoutlen=5000
set history=200
set number relativenumber
set fileformat=unix
set cursorline
set showmatch
set updatetime=100
set background=dark " required for colors in tmux
set t_Co=256
set autoindent
set shiftwidth=2
