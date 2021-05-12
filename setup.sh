#! /bin/bash

rm -r ~/.vim
rm ~/.vimrc

mkdir ~/.vim/undodir -p

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

cp vimrc ~/.vimrc

echo "Open Up ~/.vimrc"
echo "Run the commands:"
echo ":source %"
echo ":PlugInstall"
echo "python3 ~/.vim/plugged/YouCompleteMe/install.py --all"
