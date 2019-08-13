# Git 
alias gs="git status"
alias go='git checkout'
__git_complete go _git_checkout
alias gb='git branch'
alias gls="git log --graph --pretty='%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset' --date=short -10"
alias gwip='git add -A; git rm $(git ls-files --deleted) 2> /dev/null; git commit --no-verify -m "--wip-- [skip ci]"'
alias gunwip='git log -n 1 | grep -q -c "\-\-wip\-\-" && git reset HEAD~1'
alias gwch='git whatchanged -p --abbrev-commit --pretty=medium'

# Bash
alias bashrc="vim ~/.bashrc && source ~/.bashrc"
alias ll="ls -lhA"
