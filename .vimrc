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
nnoremap <silent> <Leader><Leader> :FZF -m<CR>
nnoremap <silent> <Leader>s :call fzf#run({ 'tmux_height': winheight('.') / 2, 'sink': 'botright split' })<CR>
nnoremap <silent> <Leader>v :call fzf#run({ 'tmux_width': winwidth('.') / 2, 'sink': 'vertical botright split' })<CR>
nmap <silent> <leader>ev :e $MYVIMRC<CR>    " edit vimrc
nmap <silent> <leader>sv :so $MYVIMRC<CR>   " source vimrc
nmap <silent> <leader>h :noh<CR>   " turn off highlight
nmap <leader>o :enew<CR>
nmap <leader>h :bnext<CR>
nmap <leader>l :bprevious<CR>
nmap <leader>lb :ls<CR>
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
" map <C-h> <C-w>h
" map <C-j> <C-w>j
" map <C-k> <C-w>k
" map <C-l> <C-w>l
imap jk <ESC>
let g:airline_left_sep='>'
let g:airline_right_sep='<'
let g:airline_detect_modified=1
let g:airline_detect_paste=1
let g:airline_detect_iminsert=1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#buffer_min_count = 0
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme             = 'powerlineish'
set hidden " Allow switch buffers if one is modified and it ain't saved.
augroup reload_vimrc " {
  autocmd!
  autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }
