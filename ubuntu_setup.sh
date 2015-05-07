#! /bin/bash

sudo apt-get install make rake -y

sh -c "`curl -fsSL https://raw.githubusercontent.com/skwp/dotfiles/master/install.sh`"

cd ..

git clone http://github.com/jcugno/dot_vim.git

mv .vim .vim-backup

mv dot_vim .vim

rm .vimrc

ln -s ~/.vim/vimrc .vimrc

cd .vim

git clone http://github.com/gmarik/vundle.git bundle/vundle

vim +BundleInstall +qall

cd ..

rm .dir_colors
rm .hushlogin
rm .jshintrc
rm .tmux.conf

rm -rf .zsh.after
rm -rf .zsh.prompts

ln -s my_dotfiles/.dir_colors .dir_colors
ln -s my_dotfiles/.hushlogin .hushlogin
ln -s my_dotfiles/.jshintrc .jshintrc
ln -s my_dotfiles/.tmux.conf .tmux.conf
ln -s my_dotfiles/.wgetrc .wgetrc
ln -s my_dotfiles/.vrapperrc .vrapperrc
ln -s my_dotfiles/.screenrc .screenrc
ln -s my_dotfiles/.zsh.after .zsh.after
ln -s my_dotfiles/.zsh.prompts .zsh.prompts

cp .zsh.prompts/prompt_jared_setup .zprezto/modules/prompt/functions/prompt_jared_setup

wget https://github.com/clvv/fasd/zipball/1.0.1
mv 1.0.1 fasd.zip
unzip fasd.zip
rm fasd.zip
cd clvv-fasd-4822024/
sudo make install

sudo usermod -a -G ubuntu jcugno

sudo apt-get install zsh -y
chsh -s `which zsh`
