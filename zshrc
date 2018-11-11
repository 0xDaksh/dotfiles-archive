# zprezto
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi


# language
export LANG=en_US
neofetch | lolcat

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
alias kctl="kubectl"
# VIM ALIAS
alias vi="nvim"
alias vim="nvim"

# just some terminal aliases
alias LS="ls"
alias l="ls -la"
alias lclear="clear"
alias tmux "tmux -2 u $argv"

# path setups
export GOROOT="/usr/local/go"
export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$GOROOT/bin:$PATH"
export TERM="xterm-256color"
export PATH="/home/daksh/anaconda3/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/daksh/google-cloud-sdk/path.bash.inc' ]; then source '/home/daksh/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/daksh/google-cloud-sdk/completion.bash.inc' ]; then source '/home/daksh/google-cloud-sdk/completion.bash.inc'; fi

autoload -Uz promptinit
promptinit
prompt steeef
