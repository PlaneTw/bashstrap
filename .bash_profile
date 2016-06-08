BASH_COMPLETION=/usr/local/etc/BASH_COMPLETION.d/

# Command alias
source ~/.bash_alias

# Git completion
[ -f ${BASH_COMPLETION}git-completion.bash ] && source ${BASH_COMPLETION}git-completion.bash

# Git prompt
if [ -f ${BASH_COMPLETION}git-prompt.sh ]; then
    source ${BASH_COMPLETION}git-prompt.sh
fi

# NVM
if [ -f $(brew --prefix nvm)/nvm.sh ]; then
    export NVM_DIR="$HOME/.nvm"
    source $(brew --prefix nvm)/nvm.sh
fi

#
export PS1="[\u@ \[\033[1;32m\]\w\[\033[0m\]\[\033[1;36m\]\$(__git_ps1)\[\033[0m\]]$"
