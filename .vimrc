" ========= Viet's Vim Configuration ========= "

" Automatically install Plugged "
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" === Plug ==="
call plug#begin('~/.vim/plugged')

Plug 'junegunn/vim-plug'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-commentary'
Plug 'terryma/vim-expand-region'
Plug 'terryma/vim-multiple-cursors'
Plug 'michaeljsmith/vim-indent-object'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'
Plug 'dracula/vim',{'as':'dracula'}
Plug 'vim-python/python-syntax'
Plug 'davidhalter/jedi-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'matze/vim-move'
Plug 'junegunn/vim-easy-align'
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

call plug#end()

" === Nerd-Tree ==="
" Auto close Nerd-Tree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" === Configuration ==="
set nocompatible
set ai
set mousemodel=extend
set number
set ruler
set splitbelow
set splitright
set showcmd
set noshowmode
set mouse=a
set clipboard=unnamedplus
set cursorline
set nowrap
set virtualedit=block
set scrolloff=5
" ================== "
set completeopt=menu
set completeopt+=menuone
set completeopt+=noinsert
" ================== "
set wildmenu
set wildmode=longest:list,full
" ================== "
set wrap
set linebreak
set textwidth=0
set wrapmargin=0
" ================== "
set tabstop=2
set shiftwidth=2
set smarttab
set expandtab
set softtabstop=2
" ================== "
set cindent
set autoindent
set smartindent
" ================== "
set ignorecase
set smartcase
set incsearch
set hlsearch
" ================== " 
let g:python_highlight_all=1
" ================== " 
syntax enable
set encoding=utf-8
" ===== Themes ======== " 
set termguicolors
set laststatus=2
set t_Co=256
let g:lightline = {
      \ 'colorscheme': 'one',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified', 'helloworld' ] ]
      \ },
			\ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ 'component': {
      \   'helloworld': 'Viet Do | iNCSL | Sejong University'
      \ },
      \ }
let g:dracula_colorterm=0
colorscheme dracula
set background=dark

" === Command ==="
command! PU PlugUpdate | PlugUpgrade

" === Key Binding ==="
" Navigate Vim window 'Ctrl + h/j/k/l'
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Open/Close Nerd-Tree using 'Ctrl + x'
map <C-x> :NERDTreeToggle<CR>

" =========================================== "
inoremap {<cr> {<cr>}<c-o><s-o>

"This unsets the "last search pattern" register by hitting return
nnoremap <CR> :noh<CR><CR>

" Add a new line without enter insert mode using Ctrl + j/k 
nnoremap <C-J> o<Esc>
nnoremap <C-k> O<Esc>

" Expand smartcase to * and #
nnoremap * /\<<C-R>=expand('<cword>')<CR>\><CR>
:nnoremap # ?\<<C-R>=expand('<cword>')<CR>\><CR>
