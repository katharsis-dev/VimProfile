#! /bin/bash

sudo apt install build-essential cmake vim-nox python3-dev -y
sudo apt install mono-complete golang nodejs default-jdk npm -y

rm -r ~/.vim
rm ~/.vimrc

mkdir ~/.vim/undodir -p

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

cp vimrc ~/.vimrc

echo "Open Up ~/.vimrc"
echo "Run the commands:"
echo "vim ~/.vimrc"
echo ":source %"
echo ":PlugInstall"
echo "python3 ~/.vim/plugged/YouCompleteMe/install.py --all"
