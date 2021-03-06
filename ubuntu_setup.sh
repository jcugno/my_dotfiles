#! /bin/bash

cd $HOME

sudo apt-get install gcc libncurses5-dev ctags tmux rake -y

 wget http://www.zsh.org/pub/zsh.tar.bz2 && tar xvjf zsh.tar.bz2 && cd zsh*
 ./configure && make && sudo make install
echo "/usr/local/bin/zsh" | sudo tee -a /etc/shells

sudo mkdir -p /private/etc/shells
echo "/usr/local/bin/zsh" | sudo tee -a /private/etc/shells

cd $HOME

sh -c "`curl -fsSL https://raw.githubusercontent.com/skwp/dotfiles/master/install.sh`"

git clone http://github.com/jcugno/dot_vim.git

rm -rf .vim

pwd

mv dot_vim .vim

rm .vimrc

ln -s $HOME/.vim/vimrc .vimrc

cd $HOME/.vim

git clone http://github.com/gmarik/vundle.git bundle/vundle

vim --noplugin -N \"+set hidden\" \"+syntax on\" +BundleClean +BundleInstall +qall

cd $HOME

rm .dir_colors
rm .hushlogin
rm .jshintrc
rm .tmux.conf
rm .wgetrc
rm .vrapperrc

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

sudo chsh -s /usr/local/bin/zsh jcugno
