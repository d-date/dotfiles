#!/bin/bash

DOT_FILES=(.bashrc .bash_profiles .vimrc .gitconfig .gitattributes .gitignore_global, .zshrc, .zsh)

for file in ${DOT_FILES[@]}
do
    ln -s ./$file $HOME/$file
done
