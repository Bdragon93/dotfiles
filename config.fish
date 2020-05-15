alias python='python3'

alias vi 'nvim'
alias vimrc 'vi ~/.config/nvim/init.vim'
alias zshrc 'vi ~/.zshrc'
alias alarc 'vi ~/.config/alacritty/alacritty.yml'
alias trc 'vi ~/.tmux.conf'
alias frc 'nvim ~/.config/fish/config.fish'
alias tmux 'tmux -u'
alias q 'exit'
alias cl 'clear'

# goto
alias gofr "cd ~/Projects/lxp-web"
alias gom "cd ~/Projects/lxp-web-mobile"
alias gobe "cd ~/Projects/catlover"

# yarn
alias y "rm -rf node_modules && yarn"

# git
alias gpm "git checkout master && git pull origin master"
alias gpld "git checkout dev && git pull origin dev"
alias gpod "git push origin dev"
alias gco "git checkout"
alias gaa "git add -A"
alias ga "git add"
alias gcmm "git commit -m"
alias gpo "git push origin"
alias gplo "git pull origin"
alias gmo "git merge origin"
alias gfo "git fetch origin"
alias gmo "git merge origin"
alias gm "git merge"
alias glog "git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gacm "gaa && gcmm"

# echo fish_vi_key_bindings

# echo fish_vi_key_bindings
# alias unvm="rnvm"

# Use nvm
function rnvm 
  export NVM_DIR=~/.nvm
  source (brew --prefix nvm)/nvm.sh
end

# circleci
function ci
  open https://circleci.com/gh/LeapXpert/$argv[1]
end

function cc
  ci (basename $PWD)/tree/(string replace -- / %2F (git rev-parse --abbrev-ref HEAD))
end

if not set -q TMUX
  tmux attach -t base || tmux new -s base
end

set fish_greeting 'I am Bdragon' # turn off greeting

# Exports
set -x LC_ALL en_US.UTF-8
set -x LANG en_US.UTF-8
set -x LC_CTYPE en_US.UTF-8
set -gx EDITOR nvim
set -x VISUAL nvim

# Activate the default Ruby manually
set fish_color_command 'cyan'

set -gx PATH /Applications/Postgres.app/Contents/Versions/12/bin $PATH
# set -gx GOPATH /Users/bdragon/Projects/catlover
# set -gx GOBIN /Users/bdragon/Projects/catlover/bin
