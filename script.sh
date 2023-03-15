# clone the necessary repo from github
# https://github.com/zsh-users/zsh-syntax-highlighting.git
# https://github.com/zsh-users/zsh-autosuggestions.git
# put these in the respective directory
ln -svf $PWD/zsh/zshenv $HOME/.zshenv

# after this we will have a XDOTDIR defined
# clone the above repo inside plugin directory of ZDOTDIR
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZDOTDIR/plugin/zsh-syntax-highlighting/
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZDOTDIR/plugin/zsh-autosuggestions/

# after clone is succcesful, link the .zshrc to $ZDOTDIR/.zshrc

ln -s $PWD/zsh/zshrc $ZDOTDIR/.zshrc
ln -s $PWD/zsh/zshalias $ZDOTDIR/.zshalias
ln -s $PWD/zsh/zshpath $ZDOTDIR/.zshpath
