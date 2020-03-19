#!/bin/bash


sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)" && \
sed -i 's/font/powerline/g' ~/.bashrc

mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim && \
echo -e "\nsyntax on\nexecute pathogen#infect()\n" >> ~/.vimrc

git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline
git clone https://github.com/vim-airline/vim-airline-themes ~/.vim/bundle/vim-airline-themes

cd ~/.vim/bundle && \
git clone https://github.com/scrooloose/nerdtree

cd ~/.vim/bundle && \
git clone https://github.com/tpope/vim-fugitive

cd ~/.vim/bundle && \
git clone https://github.com/nathanaelkane/vim-indent-guides

cd ~/.vim/bundle && \
git clone https://github.com/kien/rainbow_parentheses.vim

cd ~/.vim/bundle && \
git clone https://github.com/sjl/badwolf


