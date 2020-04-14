" Vundle -----------------------------------------------------------------------
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree.git'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'davidhalter/jedi-vim'
Plugin 'benmills/vimux'
Plugin 'tmhedberg/SimpylFold'
Plugin 'tpope/vim-surround'
Plugin 'vim-scripts/vis'
Plugin 'easymotion/vim-easymotion'
Plugin 'sjl/gundo.vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'vim-scripts/AutoClose'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'tommcdo/vim-exchange'
Plugin 'flazz/vim-colorschemes'

call vundle#end()            " required
" Vundle -----------------------------------------------------------------------

" file type and syntax highlighting on
filetype plugin indent on
syntax on

" white spaces
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
highlight ExtraWhitespace ctermbg=cyan guibg=cyan
autocmd InsertLeave * redraw!
match ExtraWhitespace /\s\+$\| \+\ze\t/
autocmd BufWritePre * :%s/\s\+$//e

" color scheme
color molokai

" sessions
noremap <F1> :mksession! .vim.session <cr>
noremap <F2> :source .vim.session <cr>
noremap <F3> :! rm .vim.session <cr>

" for auto read to auto load
au FocusGained,BufEnter * :silent! !
au FocusLost,WinLeave * :silent! w

" Spellchecking
set spell
setlocal spell spelllang=en_gb

" specific settings
set fo+=t
set t_Co=256
set nocursorline
set title
set bs=2
set noautoindent
set ruler
set shortmess=aoOTI
set nocompatible
set showmode
set splitbelow
set nomodeline
set showcmd
set showmatch
set tabstop=2
set shiftwidth=2
set expandtab
set cinoptions=(0,m1,:1
"set tw=80
set formatoptions=tcqro2
set smartindent
set laststatus=2
set nomodeline
set clipboard=unnamed
set softtabstop=2
set showtabline=1
set sidescroll=5
set scrolloff=4
set hlsearch
set incsearch
set ignorecase
set smartcase
set foldmethod=marker
set ttyfast
set history=10000
set hidden
set colorcolumn=81
set number
set complete=.,w,b,u,t
set completeopt=longest,menuone,preview
set noswapfile
set foldlevelstart=0
set wildmenu
set wildmode=list:longest,full
set nowrap
set statusline=%{getcwd()}\/\%f%=%-14.(%l,%c%V%)\ %P
set autoread

" backup
set undodir=~/.vim/tmp/undo//
set backupdir=~/.vim/tmp/backup//
set directory=~/.vim/tmp/swap//

" make directories automatically if they don't already exist
if !isdirectory(expand(&undodir))
    call mkdir(expand(&undodir), "p")
endif
if !isdirectory(expand(&backupdir))
    call mkdir(expand(&backupdir), "p")
endif
if !isdirectory(expand(&directory))
    call mkdir(expand(&directory), "p")
endif

" close brackets
"":inoremap ( ()<Esc>i
"":inoremap < <><Esc>i
"":inoremap { {}<Esc>i
"":inoremap [ []<Esc>i
"":inoremap " ""<Esc>i
"":inoremap ' ''<Esc>i
"":inoremap ` ``<Esc>i


" Modify searching
set hlsearch
set ignorecase
set smartcase
set incsearch
nnoremap <silent> <C-l> :nohl<CR><C-l>
"Function for relative line numbering etc leader n

function! NumberToggle()
  if(&relativenumber == 1)
    set number
    set norelativenumber
  else
    set relativenumber
    set nonumber
  endif
endfunc

nnoremap <leader>n :call NumberToggle()<cr>

"Show leader and change leader
set showcmd
"let mapleader=","
map <Space> <Leader>

" moving up and down work as you would expect
nnoremap <silent> j gj
nnoremap <silent> k gk

" close NERDTree after a file is opened
let g:NERDTreeQuitOnOpen=0
" show hidden files in NERDTree
let NERDTreeShowHidden=1
" Toggle NERDTree
nnoremap <silent> <leader>k :NERDTreeToggle<cr>
" expand to the path of the file in the current buffer
nnoremap  <silent> <leader>y :NERDTreeFind<cr>
nnoremap <leader>s :w<cr>

" Gundo Mappings
nnoremap <leader>u :GundoToggle<CR>

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
let g:UltiSnipsSnippetDirectories = ['~/.vim/UltiSnips', 'UltiSnips']
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsListSnippets = "<leader><tab>"
" Line numbering
set nu
" Remove highlight
nnoremap <silent> <C-l> :nohl<CR><C-l>

"Function for relative line numbering etc leader n

function! NumberToggle()
  if(&relativenumber == 1)
    set number
    set norelativenumber
  else
    set relativenumber
    set nonumber
  endif
endfunc

nnoremap <leader>n :call NumberToggle()<cr>

"backspace fix
set backspace=2

" Show me the indentation level
:set list lcs=tab:\|\

" cursorline
au WinLeave * set nocursorline
au WinEnter * set cursorline
set cursorline

" add yaml stuffs
au! BufNewFile,BufReadPost *.{yaml,yml} set filetype=yaml foldmethod=indent
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
