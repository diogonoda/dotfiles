set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Usability plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'elixir-editors/vim-elixir'
Plugin 'valloric/youcompleteme'
Plugin 'tpope/vim-rails'
Plugin 'dominikduda/vim_current_word'
" Plugin 'garbas/vim-snipmate'
" Plugin 'honza/vim-snippets'

" JavaScript
Plugin 'sheerun/vim-polyglot'


call vundle#end()
filetype plugin indent on

" lightline configurations
set laststatus=2
let g:lightline = {
    \ 'colorscheme': 'wombat',
    \ }

set tabstop=2 softtabstop=1 expandtab shiftwidth=2 smarttab
set nu
set relativenumber
set omnifunc=htmlcomplete#CompleteTags

" nnoremap <C-n> :NERDTreeFocus<CR>
" nnoremap <C-e> :NERDTree<CR>

let mapleader = "-"

noremap <leader>n :NERDTreeFocus<cr>
noremap <leader>h <c-w>h
noremap <leader>j <c-w>j
noremap <leader>k <c-w>k
noremap <leader>l <c-w>l
noremap <leader>i :vertical resize +10<cr>
noremap <leader>d :vertical resize -10<cr>

set noswapfile

" ===== Seeing Is Believing =====
" " Annotate every line
"
nmap <leader>b :%!seeing_is_believing --timeout 12 --line-length 500 --number-of-captures 300 --alignment-strategy chunk<CR>;
"
"  " Annotate marked lines
"
nmap <leader>s :%.!seeing_is_believing --timeout 12 --line-length 500 --number-of-captures 300 --alignment-strategy chunk --xmpfilter-style<CR>;
"
"  " Remove annotations
"
nmap <leader>c :%.!seeing_is_believing --clean<CR>;
"
"  " Mark the current line for annotation
"
nmap <leader>m A # => <Esc>
"
"  " Mark the highlighted lines for annotation
"
vmap <leader>m :norm A # => <Esc>

" vim_current_word
hi CurrentWord ctermbg=53
hi CurrentWordTwins ctermbg=237
