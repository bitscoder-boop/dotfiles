# clone the necessary repo from github
# https://github.com/zsh-users/zsh-syntax-highlighting.git
# https://github.com/zsh-users/zsh-autosuggestions.git
# put these in the respective directory
ln -svf $PWD/zsh/.zshenv $HOME/.zshenv

# after this we will have a XDOTDIR defined
# clone the above repo inside plugin directory of ZDOTDIR
# git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZDOTDIR/plugin/zsh-syntax-highlighting/
# git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZDOTDIR/plugin/zsh-autosuggestions/
# git clone https://github.com/jeffreytse/zsh-vi-mode.git $ZDOTDIR/plugin/zsh-vi-mode

# after clone is succcesful, link the .zshrc to $ZDOTDIR/.zshrc

ln -sf $PWD/zsh/.zshrc $ZDOTDIR/.zshrc
ln -sf $PWD/zsh/.zshalias $ZDOTDIR/.zshalias
ln -sf $PWD/zsh/.zshpath $ZDOTDIR/.zshpath
ln -sf $PWD/zsh/.zshvi $ZDOTDIR/.zshvi
ln -sf $PWD/nvim $HOME/.config/nvim 
ln -sf $PWD/i3 $HOME/.config/i3
ln -sf $PWD/i3blocks $HOME/.config/i3blocks
ln -sf $PWD/kitty $HOME/.config/kitty
ln -sf $PWD/ranger $HOME/.config/ranger
