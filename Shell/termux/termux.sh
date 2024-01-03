#!/data/data/com.termux/files/usr/bin/bash

# Colors
NC="\e[0m"              # No Color
BLACK='\e[1;30m'        # Black
RED='\e[1;31m'          # Red
GREEN='\e[1;32m'        # Green
YELLOW='\e[1;33m'       # Yellow
BLUE='\e[0;34m'         # Blue
PURPLE='\e[1;35m'       # Purple
CYAN='\e[1;36m'         # Cyan
WHITE='\e[1;37m'        # White

# Functions
error   () { echo -e "${RED}${*}${NC}";exit 1;:; }
warning () { echo -e "${YELLOW}${*}${NC}";:; }
info    () { echo -e "${GREEN}-----";echo -e "# ${*}";echo -e "-----${NC}";:; }
log     () { echo -e "${BLUE}${*}${NC}";:; }

# Termux package update
info "Termux package update"

log "pkg up -y"
pkg up -y

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

# Change theme to dst
info "Change theme to dst"

log "sed -i 's/robbyrussell/dst/' ~/.zshrc"
sed -i 's/robbyrussell/dst/' ~/.zshrc

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

# Edit neovim config
info "Edit neovim config"

log "cp .vimrc '$HOME'"
cp .vimrc "$HOME"

