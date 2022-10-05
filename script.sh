#!/usr/bin/env bash

if [ "$1" == "-all" ]; then
    ln -s ~/.dotfiles/shells/.zshrc ~/.zshrc
    ln -s ~/.dotfiles/shells/.bashrc ~/.bashrc
    ln -s ~/.dotfiles/tmux/.tmux.conf ~/.tmux.conf
    ln -s ~/.dotfiles/nvim/init.vim ~/.config/nvim/init.vim
    ln -s ~/.dotfiles/nvim/.vimrc ~/.vimrc
    echo "Dotfiles were created for neovim, vim, zsh, bash and tmux"

elif [ "$1" == "-bash" ]; then
    ln -s ~/.dotfiles/shells/.bashrc ~/.bashrc
    ln -s ~/.dotfiles/nvim/.vimrc ~/.vimrc
    echo "Dotfiles were created for vim and bash"

elif [ "$1" == "-zsh" ]; then
    ln -s ~/.dotfiles/shells/.zshrc ~/.zshrc
    ln -s ~/.dotfiles/tmux/.tmux.conf ~/.tmux.conf
    ln -s ~/.dotfiles/nvim/init.vim ~/.config/nvim/init.vim
    echo "Dotfiles were created for neovim, zsh and tmux"
    
else
    echo "Wrong argument"
fi

