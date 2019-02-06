" search
set hlsearch " enable highlight for all searched matches
set incsearch

" backspace key to work in insert mode
set backspace=indent,eol,start

" key mappings
nnoremap <silent> <F8> :TlistToggle<CR>
nnoremap <esc><esc> :noh<return>
nnoremap <Leader>f :ALEFix<CR>
nmap <silent> <leader>aj :ALENext<CR>
nmap <silent> <leader>ak :ALEPrevious<CR>
set pastetoggle=<F3>
nmap <silent> <F9> :MarkdownPreview<CR>
nmap <silent> <F10> :StopMarkdownPreview<CR>

" customize plugins
let g:ale_fixers={'python': ['autopep8'], 'cpp': ['clang-format']}
let g:python_highlight_all = 1
let g:AutoPairsShortcutToggle = '<Leader>b'
let $PYTHONUNBUFFERED=1
" Enable list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'
" disable LaTeX-Box in polyglot so as to use vimtex
let g:polyglot_disabled = ['latex']

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
set foldcolumn=4
set ttymouse=xterm2
set mouse=a