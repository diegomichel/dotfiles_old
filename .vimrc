scriptencoding utf-8
set nocompatible        " Use Vim defaults (much better!)
set bs=2                " Allow backspacing over everything in insert mode
set ai                  " Auto-indenting off to allow pasting to work by de
set history=255          " keep 50 lines of command history
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
