#!/bin/bash
exists() { type -t "$1" > /dev/null 2>&1; }

if ! exists brew ; then
    sudo /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update

echo "dev env setting up"

# install & update pip
sudo easy_install pip
sudo pip install --upgrade pip

# install command line tools
xcode-select --install

# install pip3
curl -O http://python-distribute.org/distribute_setup.py
curl -O https://raw.github.com/pypa/pip/master/contrib/get-pip.py
sudo python3 distribute_setup.py
sudo python3 get-pip.py
rm get-pip.py
rm distribute_setup.py

packages=(
    # dev tools
    ctags

    git
    hub

    python3

    ripgrep # <- silver searcher <- ack <- grep
    fzf

    tmux
    global # GNU tagging system

    # C++ library
    clang-format
    llvm

    # others
    brew-cask
    reattach-to-user-namespace # tmux-MacOSX-pasteboard

    # deprecated
    # ack
)

apps=(
    # software
    iterm2
    google-chrome
    google-drive
    evernote
    omnifocus

    # plug-in
    alfred
    flux
    spectacle

    # oper source software
    vlc
    thyme
    the-unarchiver

    # deprecated
    # visual-studio-code
)

echo "brew installing"
for element in ${packages[@]}
do
    brew install ${element}
done

echo "Cask installing"
for element in ${apps[@]}
do
    brew cask install ${element}
done

echo "Cask cleanup"
brew cask cleanup

echo "Installing zsh"
brew install zsh zsh-completions
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
chsh -s /usr/local/bin/zsh

echo "Installing neovim"
brew install neovim/neovim/neovim
pip install neovim
pip3 install neovim

echo "Linking config files"
ln $HOME/.myconfig/tmux/.tmux.conf $HOME/
ln $HOME/.myconfig/zsh/.zshrc $HOME/

mkdir -p $HOME/.config/nvim
ln $HOME/.myconfig/neovim/init.vim $HOME/.config/nvim

echo "Installing dev env -- pip"
sudo pip install jedi
sudo pip install autopep8
sudo pip install hacking
sudo pip install pylint
sudo pip install pipreqs

# Powerline font install
pip install --user powerline-status
