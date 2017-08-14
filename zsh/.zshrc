# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

########################################################################
#             zsh setting
########################################################################

ZSH_THEME="af-magic"        # themes, located in ~/.oh-my-zsh/themes/
DEFAULT_USER="zetao_wang"   # default username

########################################################################
#             env variable setting
########################################################################

# True color for iterm2 + tmux + neovim
export TERM=screen-256color

# editor overwrite default value
export EDITOR="vim"

# dev env path setting for airbnb projects
export TREEHOUSE_PATH="$HOME/airlab/repos/treehouse"
export JAVA7_HOME='/Library/Java/JavaVirtualMachines/jdk1.7.0_80.jdk/Contents/Home'
export JAVA8_HOME='/Library/Java/JavaVirtualMachines/jdk1.8.0_131.jdk/Contents/Home'
export JAVA_HOME=$JAVA8_HOME

# airbnb dev env
export AWS=inst.aws.us-east-1.prod.musta.ch

# path setting
export PATH=$JAVA_HOME/bin:$PATH
export PATH="$PATH:$HOME/sysops/optica_tools"


########################################################################
#             alias setting
########################################################################

alias vim="nvim"

########################################################################
#             plugins
########################################################################
plugins=(git zsh-syntax-highlighting z osx)

########################################################################
#             other setting
########################################################################

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

eval "$(hub alias -s)"


########################################################################
#             source files
########################################################################

source $ZSH/oh-my-zsh.sh # reload
source $HOME/air_config/publish.sh
source $HOME/air_config/optica_alias.sh

