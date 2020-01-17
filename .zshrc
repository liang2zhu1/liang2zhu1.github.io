# Windows compat
alias dir="CLICOLOR_FORCE=1 ls -lG"
alias md="mkdir"
alias del="rm"

# Path navigation 
alias gh="pushd ~/gh/github 2>&1 >nul"
alias up="cd .."
alias up2="cd ../.."
alias up3="cd ../../.."
alias up4="cd ../../../.."
alias up5="cd ../../../../.."
alias up6="cd ../../../../../.."
alias up7="cd ../../../../../../.."

# Git operation 
alias gf="git fetch"
alias gco="git checkout"
alias gp="git pull"
alias gbr="git branch -vv"
alias gs="git status"
alias ga="git add"
alias gaa="git add ."
alias gmt="git mergetool"
alias gcm="git commit"
alias g="git"
alias gl="git log --oneline --format=\"%C(auto) %h %d %ci %Cgreen%ce %Creset%<(100,trunc)%s\""
alias gl10="git log --oneline --format=\"%C(auto) %h %d %ci %Cgreen%ce %Creset%<(100,trunc)%s\" -n 10"
alias gcp="git cherry-pick"
alias gpush='__currentBranch=$(git rev-parse --abbrev-ref HEAD); git push --set-upstream origin $__currentBranch'
alias gclean="git clean -fd"
alias ggrb="ggext rb"



# Settings
export CLICOLOR=1
export PS1="[%~]$ "

# Git functions 
function ggc() 
{
    git grep -n "$1" -- "*.*" $2 $3 $4
}

function gg() 
{
    git grep -n -i "$1" -- "*.*" $2 $3 $4
}

function ggext()
{
    git grep -n -i "$2" -- "*.$1" $3 $4
}

# DIR functions
function dirs()
{
    find . -iname "$1" -exec ls -lah {} +
}

function dirw()
{
    ls -lrG 
}
