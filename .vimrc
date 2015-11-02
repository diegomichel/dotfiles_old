scriptencoding utf-8
set nocompatible        " Use Vim defaults (much better!)
set backspace=2                " Allow backspacing over everything in insert mode
set autoindent                  " Auto-indenting off to allow pasting to work by de
set history=10000          " keep 50 lines of command history
set undolevels=10000
set ruler               " Show the cursor position all the time
set expandtab
set ts=2 sw=2
set smarttab
set number
syntax on

set rtp+=~/.fzf
set background=dark
color molokai
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
set showcmd
noremap h <NOP>
noremap j <NOP>
noremap k <NOP>
noremap l <NOP>
set vb t_vb=
execute pathogen#infect() 
" change the mapleader from \ to ,
let mapleader=","
nmap <silent> <leader>ev :e $MYVIMRC<CR>    " edit vimrc
nmap <silent> <leader>sv :so $MYVIMRC<CR>   " source vimrc
nmap <silent> <leader>h :noh<CR>   " turn off highlight
set showmatch
set ignorecase
set smartcase
set incsearch
set hlsearch
set wildignore=*.swp,*.bak,*.pyc,*.class
set nobackup
filetype plugin indent on
set list
set listchars=tab:>☠,trail:♥
" Shows a characters after column 80 with different color
augroup vimrc_autocmds
  autocmd BufEnter * highlight OverLength ctermbg=yellow guibg=#592929
  autocmd BufEnter * match OverLength /\%80v.*/
augroup END
set pastetoggle=<F2>
nnoremap . :
" Use Q for formatting the current paragraph (or selection)
"vmap Q gq
"nmap Q gqap
cmap w!! w !sudo tee % >/dev/null   " Save with sudo using double !!
" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
