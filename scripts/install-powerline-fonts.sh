# clone
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts

# nerd fonts
brew tap homebrew/cask-fonts
brew cask install font-hack-nerd-font
