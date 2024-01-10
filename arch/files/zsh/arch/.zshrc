# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
#ZSH_CUSTOM=~/.oh-my-zsh
export ZSH="$HOME/.oh-my-zsh"


# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="dst"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
  	zsh-completions
)

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

## nvim
alias vinit="nvim ~/.config/nvim/init.vim"
alias zs="nvim ~/.zshrc"

## Wireguard
alias wg1u="sudo wg-quick up wg1"
alias wg1d="sudo wg-quick down wg1"

## System
alias rb="sudo reboot"
alias up="sudo pacman -Syu"
alias yup="yay -Syu"
alias neo="neofetch"
alias cpua="mpstat -P ALL"
alias cpu="mpstat"
alias swap="cd ~/.local/share/nvim/swap"
alias ipmi='nohup javaws -nosecurity ~/Downloads/jviewer.jnlp &'
alias rmipmi='rm ~/Downloads/jviewer*'
alias conssh='nvim ~/.ssh/config'
alias kssh='nvim ~/.ssh/known_hosts'
alias sc="sudo yay -Sc"
alias one="nohup rclone mount OneDrive: ~/OneDrive > /dev/null 2>&1 &"
alias uone="fusermount -u ~/OneDrive && fusermount -u ~/OneDrive "

## ADB
alias dev="adb devices"
alias tab="nohup scrcpy -s R54T103KDFP -m 1728 --no-audio > /dev/null 2>&1 &"
alias xzp="nohup scrcpy -s CB512EBY5C > /dev/null 2>&1 &"
alias lg="nohup scrcpy -s LGV533718f6604 -m 1728 --no-audio &"
alias s8="nohup scrcpy -s ce041714a0e8962a02 --no-audio &"
alias a7="nohup scrcpy -s R9TT102KAQA > /dev/null 2>&1 &"

## Python
alias pup="pip install --upgrade pip"
alias venv="virtualenv .venv -p 3.11"
alias ac="source .venv/bin/activate"
alias de="deactivate"

## ETC
alias we="curl wttr.in"
alias app="nohup /opt/android-studio/bin/studio.sh &"
alias db="mysql -h 192.168.1.202 -P 13306 -p"
alias pb="wl-copy <"
alias amd="amdgpu_top"
alias aa="exa -al --group-directories-first --sort=extension"

ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

source $ZSH/oh-my-zsh.sh

eval "$(ssh-agent)"
eval "$(zoxide init zsh)"
neofetch
