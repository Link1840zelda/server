#!/data/data/com.termux/files/usr/bin/bash

# For 256-Color Terminals
BLACK='\e[38;5;0m'    # Black
RED='\e[38;5;196m'   # Red
GREEN='\e[38;5;46m'  # Green
YELLOW='\e[38;5;226m' # Yellow
BLUE='\e[38;5;21m'   # Blue
PURPLE='\e[38;5;129m' # Purple
CYAN='\e[38;5;51m'   # Cyan
WHITE='\e[38;5;15m'  # White
ORANGE='\e[38;5;208m' # Orange


# Functions
error   () { echo -e "${RED}${*}${NC}";exit 1;:; }
warning () { echo -e "${YELLOW}${*}${NC}";:; }
info    () { echo -e "${GREEN}-----";echo -e "# ${*}";echo -e "-----${NC}";:; }
log     () { echo -e "${CYAN}${*}${NC}";:; }

# Termux package update
info "Termux package update"

log "pkg update -y && pkg upgrade -y"
pkg update -y && pkg upgrade -y

# termux-setup-storage
info "termux-setup-storage"

log "termux-setup-storage"
termux-setup-storage

# Install packages
info "Install packages"

log "apt install -y git zsh neovim neofetch openssh aria2c exa zoxide"
apt update
apt install -y apt install -y git zsh neovim neofetch openssh aria2c exa zoxide

# Install oh-my-zsh
info "Install oh-my-zsh"

git clone https://github.com/ohmyzsh/ohmyzsh.git "$HOME/.oh-my-zsh" --depth 1
aria2c -o .zshrc https://raw.githubusercontent.com/Link1840zelda/server/main/zsh/termux/.zshrc

# Install oh-my-zsh plugins
info "Install oh-my-zsh plugins"

log "zsh-syntax-highlighting"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting --depth 1

log "zsh-autosuggestions"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions --depth 1

log "zsh-completions"
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions --depth 1

log "fzf"
git clone https://github.com/junegunn/fzf.git ~/.fzf --depth 1
~/.fzf/install --all

# Use plugins
info "Use plugins"

log "sed -i 's/(git)/(git zsh-autosuggestions zsh-syntax-highlighting zsh-completions)/' ~/.zshrc"
sed -i 's/(git)/(git zsh-autosuggestions zsh-syntax-highlighting zsh-completions)/' ~/.zshrc

# Change shell to zsh
info "Change shell to zsh"

log "chsh -s zsh"
chsh -s zsh

# Make config folder
info "Make config folder"

log "mkdir ~/.config"
mkdir ~/.config

# Edit neovim config
info "Edit neovim config"

log "aria2c -d ~/.config/nvim -o init.vim https://raw.githubusercontent.com/Link1840zelda/server/main/nvim/init.vim"
aria2c -d ~/.config/nvim -o init.vim https://raw.githubusercontent.com/Link1840zelda/server/main/nvim/init.vim


# Edit neofetch config
info "Edit neofetch config"
log "aria2c -d ~/.config/neofetch -o init.vim https://raw.githubusercontent.com/Link1840zelda/server/main/neofetch/config.conf"
aria2c -d ~/.config/neofetch -o init.vim https://raw.githubusercontent.com/Link1840zelda/server/main/neofetch/config.conf

