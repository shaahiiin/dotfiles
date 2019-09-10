##### Setup Zsh
# install zsh using brew
brew install zsh

# set zsh as the default shell
sudo dscl . -create /Users/$USER UserShell /usr/local/bin/zsh

##### Setup Oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

##### Setup Vim
brew install neovim

# install vim plug (plugin manager for vim)
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

##### Setup tmux
brew install tmux

# install Tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

