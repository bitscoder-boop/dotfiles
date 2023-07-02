source $ZDOTDIR/.zshpath

HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

bindkey -v
export KEYTIMEOUT=1


export RANGER_LOAD_DEFAULT_RC=FALSE


export VISUAL=~/.local/nvim/bin/nvim
export EDITOR=/usr/bin/nvim

# plugins
source $ZDOTDIR/plugin/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZDOTDIR/plugin/zsh-vi-mode/zsh-vi-mode.plugin.zsh

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)
eval "$(starship init zsh)"

source $ZDOTDIR/.zshalias
source $ZDOTDIR/.zshvi

source $ZDOTDIR/plugin/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export ATUIN_NOBIND="true"
eval "$(atuin init zsh)"
bindkey '^o' _atuin_search_widget
