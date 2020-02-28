
# Spaceship prompt
SPACESHIP_TIME_SHOW=true
autoload -U promptinit; promptinit
prompt spaceship

# Zsh
alias zshrc='vim ~/.zshrc && source ~/.zshrc'
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory
. /usr/local/etc/profile.d/z.sh

# Aliases
alias l='colorls --group-directories-first --almost-all'
alias ll='colorls --group-directories-first --almost-all --long' # detailed list view
alias tf="terraform"
alias tfs="terraform plan | grep \"# [module|resource|data|local]\""
alias k="kubectl"

# Git

alias gs="git status"
alias go='git checkout'
alias gb='git branch'
alias gls="git log --graph --pretty='%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset' --date=short -10"
alias gwip='git add -A; git rm $(git ls-files --deleted) 2> /dev/null; git commit --no-verify -m "--wip-- [skip ci]"'
alias gunwip='git log -n 1 | grep -q -c "\-\-wip\-\-" && git reset HEAD~1'
alias gwch='git whatchanged -p --abbrev-commit --pretty=medium

# jenv

if which jenv > /dev/null; 
	then eval "$(jenv init -)"; 
fi

mkcd ()
{
    mkdir -p -- "$1" &&
      cd -P -- "$1"
}
