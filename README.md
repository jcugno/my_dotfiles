Jared's Dotfiles
===========

If you're on ubuntu or amazon linux just run the corresponding .sh first

Please be sure to run:

1. `sudo useradd -m jcugno`
2. `sudo visudo`
3. And add: `jcugno ALL=NOPASSWD: ALL`

For vim please see: https://github.com/jcugno/dot_vim.git

I use yadr at the moment which is what the .zsh.after directory is for
https://github.com/skwp/dotfiles.git

This WILL move your .vim settings and directory to a backup folder so it'd be
better if you installed yadr first and then vim

First, rm all of the dupe sym links you see in your local directory.
Then ln -s the .dotfiles you see. Make sure you run .brew and .osx as well

Updated the .secrets file as noted as the yadr link

Also, copy in the prompt file to ~/.zprezto/modules/prompt/functions

I just found tldr which is npm and I don't have a great way of executing npm installs just yet
npm install -g tldr
npm install -g jshint
npm install eslint-plugin-react -g
npm install eslint-plugin-jsx-a11y -g
npm install eslint-plugin-import -g
npm install eslint-config-airbnb -g
npm install eslint_d -g
