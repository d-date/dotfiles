#!/bin/bash

DOT_FILES=(.bashrc .bash_profiles .vimrc .gitconfig .gitattributes .gitignore_global)

for file in ${DOT_FILES[@]}
do
  ln -s $HOME/dotfiles/$file $HOME/$file
done
