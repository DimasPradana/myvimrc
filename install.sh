#!/bin/bash
# TODO dimas Kam 06 Jun 2019 10:45:50  WIB
# - cek vim and gvim are installed belum
echo "installing and configuring vim "
cp -r .vim ~ && mkdir ~/.vim/plugged
echo "1. copying folder .vim  to ~ is done"
cp .vimrc ~
echo "2. copying .vimrc to ~ is done"
ln -s .vimrc ~/.gvimrc
echo "3. make symlink is done"
# vim plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
echo "4. make autoload folder on .vim and downloading vim-plug are done"
vim +'PlugInstall --sync' +qa
echo"5. installing plugin on vimplug is done"
echo "6. checking if nvim is installed"
if [ -d "~/.config/nvim" ]
then
	echo "7. nvim detected and ready to  make symlink"
	ln -s .vimrc ~/.config/nvim/init.vim
	echo "8. make symlink is done"
else
	echo "7. nvim is not installed, will install it first then make symlink"
	sudo apt install nvim nvim-qt -y && ln -s .vimrc ~/.config/nvim/init.vim
	curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
		https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	echo "8. installing and configuring is done"
fi
