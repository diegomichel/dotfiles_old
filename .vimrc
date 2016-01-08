scriptencoding utf-8
set t_Co=256
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
let mapleader="\<Space>"

" za toggles folding, zR for all folds
" Common actions with leader {{{
  " use leader p to open ctlrp
  nnoremap <Leader>p :CtrlP<CR>
  " saves with leader w
  nnoremap <Leader>w :w<CR>
  " Copy and paste with leader y, p and d
  vmap <Leader>y "+y
  vmap <Leader>d "+d
  nmap <Leader>p "+p
  nmap <Leader>P "+P
  vmap <Leader>p "+p
  vmap <Leader>P "+P
" }}}

" Buffers {{{
nmap <leader>b :CtrlPBuffer<CR>
nmap <leader>c :bd<CR>
" nmap <leader>o :enew<CR>
nmap <leader>h :bnext<CR>
nmap <leader>l :bprevious<CR>
nmap <leader>lb :ls<CR>
" }}}
" Theming {{{
set background=dark
color molokai
" }}}
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
" CtrlP {{{
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
" }}}
nnoremap <silent> <Leader><Leader> :FZF -m<CR>
nnoremap <silent> <Leader>v :call fzf#run({ 'tmux_width': winwidth('.') / 2, 'sink': 'vertical botright split' })<CR>
nmap <silent> <leader>ev :e $MYVIMRC<CR>    " edit vimrc
nmap <silent> <leader>sv :so $MYVIMRC<CR>   " source vimrc
nmap <silent> <leader><space> :noh<CR>   " turn off highlight
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
" augroup vimrc_autocmds
"  autocmd BufEnter * highlight OverLength ctermbg=yellow guibg=#592929
"  autocmd BufEnter * match OverLength /\%80v.*/
" augroup END
set pastetoggle=<F2>
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
let g:airline_detect_modified=1
let g:airline_detect_paste=1
let g:airline_detect_iminsert=1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#buffer_min_count = 0
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_theme             = 'powerlineish'
let g:airline_powerline_fonts = 1
set hidden " Allow switch buffers if one is modified and it ain't saved.
augroup reload_vimrc " {
  autocmd!
  autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }
silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)
nnoremap . :

" syntastic options
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
set wildmenu
set ttyfast
" Selects the last inserted test
nnoremap gV `[v`]
" Gundo requires vim w python 2.4
"nnoremap <leader>u :GundoToggle<CR>
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

" Plugin: vim-indent-guides <leader>ig
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1

" Press C-c after delimitMate autocompletes quotes...
imap <C-c> <CR><Esc>O

set modelines=1
" vim:foldmethod=marker:foldlevel=0
