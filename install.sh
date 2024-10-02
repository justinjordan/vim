#!/bin/bash

# Install Pathogen
rm -rf ~/.vim/autoload ~/.vim/bundle
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Install NERDTree
rm -rf ~/.vim/bundle/nerdtree
git clone https://github.com/preservim/nerdtree.git ~/.vim/bundle/nerdtree
rm ~/.vimrc
echo "call pathogen#infect()" >> ~/.vimrc
echo "syntax on" >> ~/.vimrc
echo "filetype plugin indent on" >> ~/.vimrc
echo "\" Start NERDTree and put the cursor back in the other window." >> ~/.vimrc
echo "autocmd VimEnter * NERDTree | wincmd p" >> ~/.vimrc

# Configure Vim
echo "set number" >> ~/.vimrc
