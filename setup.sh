#!/bin/bash

DOT_FILES=(.brewfile .bashrc .bash_profiles .vimrc .gitconfig .gitattributes .gitignore_global .zshrc .zsh)

for file in ${DOT_FILES[@]}
do
    ln -s ~/dotfiles/$file $HOME/$file
done

# Install Pathogon
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Download oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Change default shell
$ chsh -s /bin/zsh

# fonts
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts

# Solaized
git clone git://github.com/altercation/solarized.git

# Solaized for vim
cd ~/.vim/bundle
git clone git://github.com/altercation/vim-colors-solarized.git
cd ~/solaized
mv vim-colors-solarized ~/.vim/bundle/
cd 
rm -rf solarized

# Solaized for terminal
git clone https://github.com/tomislav/osx-terminal.app-colors-solarized.git
open ./Solarized\ Dark.terminal


# set up latest ruby version
rbenv install $(rbenv install -l | grep -v - | tail -1)
rbenv global $(rbenv install -l | grep -v - | tail -1)
rbenv rehash