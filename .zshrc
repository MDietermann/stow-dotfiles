# If you come from bash you might have to change your $PATH.
# source ~/.bashrc

export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH="$HOME/.oh-my-zsh"
export PATH="$HOME/.cargo/bin:$PATH"
export EDITOR="NVIM_APPNAME=lazyvim-tex nvim"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion
. "$HOME/.cargo/env"

ZSH_THEME="sporty_256"

plugins=(
    git
    archlinux
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# --- Distro Detection (Ubuntu vs. Arch) ---
if [ -f /etc/os-release ]; then
    # Load the os-release file
    . /etc/os-release

    if [ "$ID" = "ubuntu" ]; then
        # Commands to run ONLY on Ubuntu
        echo "Hello from Ubuntu!"
        # Set-up icons for files/directories in terminal using lsd
        alias l='exa -la'
        alias la='ls -a'
        alias lla='ls -la'
        alias lt='exa --tree -L 3'
        # Example: Set an alias for apt
        # alias update='sudo apt update && sudo apt upgrade'
        neofetch

    elif [ "$ID" = "arch" ]; then
        echo "Hello from Arch!"
        # Check archlinux plugin commands here
        # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/archlinux

        # Set-up icons for files/directories in terminal using lsd
        alias l='lsd -l'
        alias la='ls -a'
        alias lla='ls -la'
        alias lt='ls --tree'
        # Display Pokemon-colorscripts
        # Project page: https://gitlab.com/phoneybadger/pokemon-colorscripts#on-other-distros-and-macos
        #pokemon-colorscripts --no-title -s -r #without fastfetch
        pokemon-colorscripts --no-title -s -r | fastfetch -c $HOME/.config/fastfetch/config-pokemon.jsonc --logo-type file-raw --logo-height 10 --logo-width 5 --logo -

        # fastfetch. Will be disabled if above colorscript was chosen to install
        #fastfetch -c $HOME/.config/fastfetch/config-compact.jsonc
    fi
else
    echo "Could not determine Linux distribution."
fi



# qemu-images
alias q-arch="qemu-system-x86_64 -enable-kvm -m 4096 -boot a -hda arch.img"
alias nvim-jonkero="NVIM_APPNAME=nvim-jonkero nvim"

# Nvim Config
alias lazyvim-tex="NVIM_APPNAME=lazyvim-tex nvim"

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

. "$HOME/.local/bin/env"
