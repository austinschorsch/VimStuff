" My vim settings
" Last Updated : 10/21/15

" ========== Vim-Go Support ==========
set nocompatible
filetype off
set backspace=2
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'fatih/vim-go'

call vundle#end()
filetype plugin indent on

" ========== Pathogen/Neocomplete  ==========
call pathogen#infect()
"let g:neocomplete#enable_at_startup = 1

" ========== Basic Config ==========

syntax enable 				" Enable syntax processing
set number				    " Enable line numbers
set showcmd			    	" Show command in bottom bar
set cursorline				" Highlight current line
filetype indent on			" Load filetype-specific indent files
set wildmenu				" Visual automcomplete for command menu
set lazyredraw				" Redraw only when necessary
set showmatch				" Show matching braces
set mouse=a                 " Enable mouse click

" ========== Spaces & Tabs ========== 
set backspace=indent,eol,start		" Backspace in insert mode
set tabstop=4				" Number of spaces per TAB
set softtabstop=4			" Number of spaces in TAB when editing
set expandtab				" Tabs are spaces 

" ========== Colors ==========
colorscheme molokai

" ========== Searching ==========
set incsearch				" Search as characters are entered
set hlsearch				" Highlight matches

" ========== Folding ==========
set foldenable				" Enable folding
set foldlevelstart=10			" This opens most folds by default
set foldnestmax=10			" Nested fold max (10) 
nnoremap <space> za			" Space opens and closes folds
set foldmethod=indent			" Fold based on indent level

" ========== Movement ==========
nnoremap j gj				" Move vertically by visual line
nnoremap k gk
nnoremap gV `[v`]			" Highlight last inserted text
inoremap jk <esc>			" Make jk escape instead of ESC

" ========== Backups ==========
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

" ========== Toggles ==========
nnoremap tt :TagbarToggle<CR>       " Toggles the Tagbar
nnoremap rr :NERDTreeToggle<CR>     " Toggles the NERDTree

" ========== Ctags ==========
let g:tagbar_type_go = {  
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
    \ }
