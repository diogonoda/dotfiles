" Plugins
call plug#begin("~/.vim/plugged")
  " Colorizer
  Plug 'norcalli/nvim-colorizer.lua'
  " Colorscheme
  Plug 'dracula/vim'

  " ConquerOfCompletion
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  " Commenter
  Plug 'preservim/nerdcommenter'

  " File Explorer
  Plug 'scrooloose/nerdtree'
  Plug 'ryanoasis/vim-devicons'

  " Fzf
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'

  "Html snippets"
  Plug 'mattn/emmet-vim'
call plug#end()


" \/\/\/\/\/\/\/\/\/\/\/\/\/\/\/
"       Colorscheme setup
" /\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
if (has("termguicolors"))
  set termguicolors
endif

syntax enable
colorscheme dracula


" \/\/\/\/\/\/\/\/\/\/\/\/\/\/\/
"           Colorizer
" /\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
lua require 'colorizer'.setup()


" \/\/\/\/\/\/\/\/\/\/\/\/\/\/\/
"         NerdCommenter
" /\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
let g:NERDSpaceDelims = 1


" \/\/\/\/\/\/\/\/\/\/\/\/\/\/\/
"            NERDTree
" /\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
"   Key Remappings
noremap <leader>n :NERDTreeFocus<cr>
noremap <leader>nf :NERDTreeFind<cr>


" \/\/\/\/\/\/\/\/\/\/\/\/\/\/\/
"       ConquerOfCompletion
" /\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
let g:coc_global_extensions = ['coc-solargraph', 'coc-vetur']


" \/\/\/\/\/\/\/\/\/\/\/\/\/\/\/
"              Fzf
" /\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
"   Key Remappings
noremap <leader>f :Files<cr>
noremap <c-f> :FZF<cr>
"   Searches position at lower portion of screen
let g:fzf_layout = { 'down': '40%' }
" let g:fzf_preview_window = ['right:rounded', 'ctrl-/']
"   Make preview border visible and background of different color
let g:fzf_colors = { 'border': ['fg', 'Normal'], 'preview-bg': ['bg', 'Pmenu'] } 


" \/\/\/\/\/\/\/\/\/\/\/\/\/\/\/
"          Line Numbers
" /\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
"   Print the line number in front of each line
set number
"   Show the line number relative to the line with the cursor in front of each line
set relativenumber


" \/\/\/\/\/\/\/\/\/\/\/\/\/\/\/
"          Indentation
" /\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
"   Number of spaces that a <Tab> in the file counts for
set tabstop=2
"   Number of spaces that a <Tab> counts for while performing editing operations
set softtabstop=2
"   Number of spaces to use for each step of (auto)indent
set shiftwidth=2
"   Use the appropriate number of spaces to insert a <Tab>
set expandtab
"   Do smart autoindenting when starting a new line
set smartindent


" \/\/\/\/\/\/\/\/\/\/\/\/\/\/\/
"        Configurations
" /\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
" Buffers
"   Do not create a swapfile for the buffer
set noswapfile

" Search
"   While typing a search command, show where the pattern, as it was typed so far, matches
set incsearch

" Editor
"   Show a '·' on whitespaces
set listchars=space:·
set list


" \/\/\/\/\/\/\/\/\/\/\/\/\/\/\/
"      Seeing-is-Believing
" /\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
augroup seeingIsBelievingSettings
  autocmd!

  autocmd FileType ruby nmap <buffer> <Enter> :%!seeing_is_believing --timeout 12 --line-length 500 --number-of-captures 300 --alignment-strategy chunk<cr>
"  autocmd FileType ruby nmap <buffer> <Enter> <Plug>(seeing-is-believing-mark-and-run)
"  autocmd FileType ruby xmap <buffer> <Enter> <Plug>(seeing-is-believing-mark-and-run)

  autocmd FileType ruby nmap <buffer> <F4> :%!seeing_is_believing --clean<cr>
"  autocmd FileType ruby nmap <buffer> <F4> <Plug>(seeing-is-believing-mark)
"  autocmd FileType ruby xmap <buffer> <F4> <Plug>(seeing-is-believing-mark)
"  autocmd FileType ruby imap <buffer> <F4> <Plug>(seeing-is-believing-mark)

  autocmd FileType ruby nmap <buffer> <F5> <Plug>(seeing-is-believing-run)
  autocmd FileType ruby imap <buffer> <F5> <Plug>(seeing-is-believing-run)
augroup END


" \/\/\/\/\/\/\/\/\/\/\/\/\/\/\/
"         Key Remappings
" /\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
"   Enable some commands to run in insert mode
"     Run command `c` (change) with ctrl-c
imap kj <esc><esc>
"     Leave insert mode and save
imap kjw <esc><esc>:w<cr>
imap kjx <esc><esc>:x<cr>
"     Auto-close sections
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

"   File Actions
"     Save file
noremap <leader>w <esc><esc>:w<cr>
"     Close file
noremap <leader>q <esc>:q<cr>
"     Save and close file
noremap <leader>x <esc>:x<cr>
"     Reload file
noremap <leader>r <esc>:e!<cr>

"   Navigation
"     Disable directional keys
noremap <up> <esc>
noremap <down> <esc>
noremap <right> <esc>
noremap <left> <esc>

"   Apperance
"     Increase/Decrease panel vertical size
noremap <leader>d <esc>:vertical resize -10<cr>
noremap <leader>i <esc>:vertical resize +10<cr>
