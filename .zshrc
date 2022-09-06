export ZSH="/Users/katsukiniwa/.oh-my-zsh"

ZSH_THEME="robbyrussell"

# update automatically without asking
zstyle ':omz:update' mode auto

plugins=(git zsh-completions zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

alias v="vim"

alias ls='lsd'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'

alias rm='rm -i'

# Rails
alias rs='rails s'
alias rmg='rails db:migrate'
alias rsed='rails db:seed'
alias rc='rails console'
alias bi='bundle install'

# Docker
alias d='docker'
alias dc='docker compose'
alias dcup='docker compose up --build -d'
alias dcps='docker compose ps'
alias dps='docker ps'
alias dcd='docker compose down'

# Git
alias ga='git add'
alias gb='git branch'
alias gc='git commit'
alias gph='git push origin HEAD'
alias gs='git status'
alias gf='git fetch'
alias gst='git stash'
alias gsw='git switch'
alias gpl='git pull origin'

# Laravel
alias pmg='php artisan migrate'
alias psed='php artisan migrate:fresh --seed'

# npm
alias n="npm"
alias ni='npm install'
alias nid='npm install --save-dev'

# yarn
alias y='yarn'
alias ya='yarn add'
alias yad='yarn add -D'

# tmux
alias t='tmux'
alias ta='tmux attach'
alias td='tmux detach'
alias tk='tmux kill-server'
alias tl='tmux ls'

alias ide='~/.scripts/ide.sh'

# terraform
alias tr="terraform"
alias tra="terraform apply"
alias trd="terraform destroy"
alias trp="terraform plan"
alias trf="terraform fmt"

# kubectl
alias ku='kubectl'
alias kua='kubectl apply'
alias kuc='kubectl config'
alias kud='kubectl describe'
alias kug='kubectl get'

dcbash () {
 echo -n "🐳  enter container name to attach: "
 read name
 docker compose exec $name bash;
}

weather () {
  curl wttr.in;
}

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
# export SDKMAN_DIR="$HOME/.sdkman"
# [[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

source /usr/local/etc/zsh-kubectl-prompt/kubectl.zsh
RPROMPT='%{$fg[blue]%}($ZSH_KUBECTL_PROMPT)%{$reset_color%}'

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/katsukiniwa/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/katsukiniwa/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/katsukiniwa/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/katsukiniwa/google-cloud-sdk/completion.zsh.inc'; fi

source /Users/katsukiniwa/google-cloud-sdk/path.zsh.inc
export USE_GKE_GCLOUD_AUTH_PLUGIN=True

# Settings for fzf
export PATH="$PATH:$HOME/.fzf/bin"
export FZF_DEFAULT_COMMAND='rg --files --hidden --glob "!.git"'
export FZF_DEFAULT_OPTS='--height 30% --border'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export GOPATH="$HOME/go"
export PATH="$PATH:$GOPATH/bin"
export PATH="$HOME/.phpenv/bin:$PATH"
eval "$(phpenv init -)"
export PATH="/usr/local/opt/bzip2/bin:$PATH"

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
