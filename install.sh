#!/bin/bash
# TODO dimas Kam 06 Jun 2019 10:45:50  WIB
# - cek vim and gvim are installed belum
echo -e "\e[32minstalling and configuring vim \e[0m"
cp -r .vim ~ && mkdir ~/.vim/plugged
echo "\e[32m1. copying folder .vim  to ~ is done \e[0m"
cp .vimrc ~
echo "\e[32m2. copying .vimrc to ~ is done \e[0m"
ln -s .vimrc ~/.gvimrc
echo "\e[32m3. make symlink is done \e[0m"
# vim plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
echo "\e[32m4. make autoload folder on .vim and downloading vim-plug are done \e[0m"
vim +'PlugInstall --sync' +qa
echo "\e[32m5. installing plugin on vimplug is done \e[0m"
sudo apt install build-essential cmake python3-dev -y && cd ~/.vim/plugged/youcompleteme && python3 install.py --clang-completer
echo "\e[32m5.a. install requirement for youcompleteme is done \e[0m"
echo "\e[32m6. checking if nvim is installed \e[0m"
if [ -d "~/.config/nvim" ]
then
	echo "\e[32m7. nvim detected and ready to  make symlink \e[0m"
	ln -s .vimrc ~/.config/nvim/init.vim
	echo "\e[32m8. make symlink is done \e[0m"
else
	echo "\e[32m7. nvim is not installed, will install it first then make symlink \e[0m"
	sudo apt install nvim nvim-qt neovim -y && ln -s .vimrc ~/.config/nvim/init.vim
	curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
		https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	echo "\e[32m8. installing and configuring is done \e[0m"
fi
