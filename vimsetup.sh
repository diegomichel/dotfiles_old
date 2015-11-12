#!/bin/bash
function install_rubocop_for_vim {
  # Setups tmp directory for cloning
  rm -frv /tmp/vim-rubocop
  # Clone rubocop in .vim/ folder, It works oob
  git clone --depth=1 --branch=master https://github.com/ngmy/vim-rubocop.git /tmp/vim-rubocop
  cp -frv /tmp/vim-rubocop/* ~/.vim/
}



install_rubocop_for_vim &&


  echo "Everything went fine!!"
