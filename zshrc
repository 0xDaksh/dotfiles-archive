# zprezto
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi


# language
export LANG=en_US.utf-8
neofetch

# microk8s
alias mkcl="microk8s.kubectl"
alias mkcl-start="snap enable microk8s"
alias mkcl-stop="snap disable microk8s"

# GIT ALIASES
alias gc="git clone"
alias ga="git add"
alias gcm="git commit -m"
alias gacm="git commit -am"
alias gpom="git push origin master"
alias grao="git remote add origin"
alias grro="git remote remove origin"
alias gdf="git diff"
alias gsu="git status"
alias gpo="git push origin"
alias kctl="kubectl"

# VIM ALIAS
alias vi="nvim"
alias vim="nvim"

# just some terminal aliases
alias LS="ls"
alias ltunnel="~/.nvm/versions/node/v10.8.0/bin/lt"
alias lclear="clear"
alias tmux "tmux -2 u $argv"

# path setups
export GOROOT="/usr/lib/go"
export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$GOROOT/bin:$PATH"
export TERM="xterm-256color"
export PATH="/home/daksh/anaconda3/bin:$PATH"

# nvm
[ -z "$NVM_DIR" ] && export NVM_DIR="$HOME/.nvm"
source /usr/share/nvm/nvm.sh
source /usr/share/nvm/bash_completion
source /usr/share/nvm/install-nvm-exec

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/daksh/google-cloud-sdk/path.zsh.inc' ]; then source '/home/daksh/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/daksh/google-cloud-sdk/completion.zsh.inc' ]; then source '/home/daksh/google-cloud-sdk/completion.zsh.inc'; fi

export PATH="$HOME/.cargo/bin:$PATH"
export ANDROID_HOME="$HOME/Android/Sdk"
