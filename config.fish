alias python='python3'

alias vi 'nvim'
alias vimrc 'vi ~/.vimrc'
alias zshrc 'vi ~/.zshrc'
alias alarc 'vi ~/.config/alacritty/alacritty.yml'
alias trc 'vi ~/.tmux.conf'
alias frc 'nvim ~/.config/fish/config.fish'
alias tmux 'tmux -u'
alias q 'exit'
alias cl 'clear'

# goto
alias gofr "cd ~/Projects/frontend-core"
alias goeh "cd ~/Projects/employment-hero"
alias gove "cd ~/Projects/react-velonic"
alias gorb "cd ~/Projects/report-board"
alias goau "cd ~/Projects/auth"
alias gosq "cd ~/Projects/squad-health-check/frontend"

# yarn
alias y "rm -rf node_modules && yarn"

# git
alias gpm "git checkout master && git pull origin master"
alias gpld "git checkout development && git pull origin development"
alias gco "git checkout"
alias gaa "git add -A"
alias ga "git add"
alias gcmm "git commit -m"
alias gpo "git push origin"
alias gplo "git pull origin"
alias gmo "git merge origin"
alias gfo "git fetch origin"
alias gmo "git merge origin"
alias glog "git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gacm "gaa && gcmm"

# echo fish_vi_key_bindings
# alias unvm="rnvm"

# Use nvm
# function rnvm 
  # export NVM_DIR=~/.nvm
  # source (brew --prefix nvm)/nvm.sh
# end

# circleci
function ci
  open https://circleci.com/gh/Thinkei/$argv[1]
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
