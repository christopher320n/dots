# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh
eval "$(/opt/homebrew/bin/brew shellenv)"
eval 
. "$HOME/.cargo/env"
export PATH="~/.local/bin:$PATH"
export BASH_SILENCE_DEPRECATION_WARNING=1
export PATH="/Users/christopher/.local/share/apache-maven-3.9.6/bin:$PATH"
export JDTLS_JVM_ARGS="-javaagent:$HOME/.local/share/java/lombok.jar"

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

export PATH=~/.npm-global/bin:$PATH
export JAVA_HOME=$(/usr/libexec/java_home -v 21.0.2)
export M2_HOME=/opt/apache-maven-3.9.6
export PATH=$JAVA_HOME/bin:$PATH/bin:$M2_HOME/bin

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Load Angular CLI autocompletion.
source <(ng completion script)

# PL10K
source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export PATH="/opt/homebrew/bin:/bin:/usr/bin"

# Alias
alias "reload"="source ~/.zshrc; clear"
alias "esh"="nvim ~/.zshrc"
alias "forcepush"="git push --force-with-lease"
alias "econf"="nvim ~/.config/"
alias "main"="cd ~/Desktop/Main/"
alias "ic"="cd '/Users/christopher/Library/Mobile Documents/com~apple~CloudDocs/Main - iCloud'"
alias "scratch"="nvim '/Users/christopher/Library/Mobile Documents/com~apple~CloudDocs/Main - iCloud/misc/scratchpad.md'"
alias "gdev"="cd ~/Desktop/Main/UnityProjects/Pinetown\ Trail/ && nvim"
alias "dt"="cd ~/Desktop/"
alias "cc"="clear"
alias "esc"="tmux kill-server"
alias "vim"="nvim"
alias "videos"="cd '/Users/christopher/Library/Mobile Documents/com~apple~CloudDocs/Main - iCloud/misc/YouTube'"

export DOTNET_ROOT=/usr/local/share/dotnet
export PATH=$DOTNET_ROOT:$PATH
export PATH=$PATH:/Users/christopher/.spicetify
export PATH="$HOME/.config/scripts:$PATH"
export PATH="${HOME}/.local/bin":${PATH}



GITSTATUS_LOG_LEVEL=DEBUG
export PATH="$PATH:/sbin"
