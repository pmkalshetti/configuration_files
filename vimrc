set encoding=utf-8
" color scheme
set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
set background=dark
colorscheme solarized8_high

" enable highlight for all searched matches
set hlsearch
set incsearch

" backspace key to work in insert mode
set backspace=indent,eol,start

" key mappings
nnoremap <esc><esc> :noh<return>
set pastetoggle=<Leader>p
nmap <Leader>n :NERDTreeToggle<CR>
nmap <Leader>t :TagbarToggle<CR>
nmap <Leader>g :YcmCompleter GoTo<CR>
nmap <Leader>d :YcmCompleter GetType<CR>
nmap <Leader>f :YcmCompleter FixIt<CR>
nmap <Leader>m :MarkdownPreview<CR>
let g:AutoPairsShortcutToggle='<Leader>a'

" customize plugins

let g:ale_fixers={'python': ['autopep8'], 'cpp': ['clang-format']}
let g:python_highlight_all = 1


" Enable list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'
" disable LaTeX-Box in polyglot so as to use vimtex
let g:polyglot_disabled = ['latex']

" youcompleteme completer configuration
let g:ycm_global_ycm_extra_conf = '~/.vim/pack/git-plugins/start/YouCompleteMe/.ycm_global_ycm_extra_conf.py'

" indent guide
let g:indent_guides_enable_on_vim_startup = 1

" disable LaTeX-Box in polyglot so as to use vimtex
let g:polyglot_disabled = ['latex']

" enable latex autocomplete with youcompleteme
if !exists('g:ycm_semantic_triggers')
    let g:ycm_semantic_triggers = {}
endif
au VimEnter * let g:ycm_semantic_triggers.tex=g:vimtex#re#youcompleteme

" vimtex place latex build files in separate dir
let g:vimtex_compiler_latexmk = {'build_dir': 'build'}

" miscellaneous
set nocompatible
filetype plugin indent on
syntax enable
set timeoutlen=5000
set history=200
set number
set fileformat=unix
set cursorline
set showmatch
set updatetime=100
set autoindent
set shiftwidth=2
set foldcolumn=4
set ttymouse=xterm2
set mouse=a
