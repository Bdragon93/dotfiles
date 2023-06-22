alias python='python3'

# alias vi '/opt/homebrew/bin/nvim'
alias vi 'nvim'
alias vimrc 'vi ~/.config/nvim/init.vim'
alias zshrc 'vi ~/.zshrc'
alias alarc 'vi ~/.config/alacritty/alacritty.yml'
alias trc 'vi ~/.tmux.conf'
alias frc 'vi ~/.config/fish/config.fish'
# alias tmux '/opt/homebrew/bin/tmux'
alias q 'exit'
alias cl 'clear'

# yarn
alias y "rm -rf node_modules && yarn"

# git
alias gco "git checkout"
alias gpo "git push origin"
alias gplo "git pull origin"
alias gpd "gco develop && gplo develop"
alias gpm "gco master && gplo master"
alias ga "git add"
alias gaa "ga -A"
alias gcmm "git commit -m"
alias gm "git merge"
alias gmo "git merge origin"
alias gmom "git merge origin/master"
alias gfo "git fetch origin"
alias glog "git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gacm "gaa && gcmm"
alias grbd "git rebase -i develop"
alias grbm "git rebase -i master"
alias gp "gpo HEAD"

alias gfs "git flow feature start"

# goto
alias gofe "cd ~/sweet/auctions-frontend"
alias gonhl "cd ~/sweet/nhl-frontend"
alias goop "cd ~/sweet/sfs-pack-opening"

alias goom "cd ~/ikonia/mauer-web"
alias gowl "cd ~/ikonia/wallet"
alias goeb "cd ~/ikonia/pay"
alias goiw "cd ~/ikonia/ikonia-web"
alias goik "cd ~/ikonia/mauer"
alias gosl "cd ~/ikonia/foyer-web"
alias gofu "cd ~/ikonia/4ukraine"
alias gopt "cd ~/ikonia/plantae"
alias gomp "cd ~/ikonia/mushroom-player-prototype"

# kill port 3000
alias krp "lsof -ti tcp:3000 | xargs kill"

# Use nvm
# function unvm 
  # export NVM_DIR=~/.nvm
  # source (brew --prefix nvm)/nvm.sh
# end


# circleci
# function ci
  # open https://circleci.com/gh/LeapXpert/$argv[1]
# end

# function cc
  # ci (basename $PWD)/tree/(string replace -- / %2F (git rev-parse --abbrev-ref HEAD))
# end

set fish_greeting 'Welcome Bdragon!'
echo 'node' (node -v)

# Exports
set -x LC_ALL en_US.UTF-8
set -x LANG en_US.UTF-8
set -x LC_CTYPE en_US.UTF-8
set -gx EDITOR nvim
set -x VISUAL nvim

# Activate the default Ruby manually
set fish_color_command 'cyan'

# test -s /Users/bdragon/.nvm/nvm.fish; and source /Users/bdragon/.nvm/nvm.fish
fish_add_path /usr/local/opt/crowdin@3/bin
fish_add_path /usr/local/bin

# AWS
set -x AWS_DEFAULT_REGION "us-east-1"
set -x AWS_PROFILE "sweet-playground"
set -x AWS_DEFAULT_PROFILE "playground"

alias aws-dev "python3 ~/aws-mfa/aws-mfa --duration 9900 --profile base_playground"
