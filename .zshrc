# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/home/layo/.oh-my-zsh

# Enable awesome-fonts
POWERLEVEL9K_MODE="nerdfont-complete"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

## POWERLEVEL9K customization
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(kubecontext virtualenv newline context dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status background_jobs command_execution_time time)
# vcs/git colors
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND="006"
# virtualenv indicator colors
POWERLEVEL9K_VIRTUALENV_BACKGROUND="104"
POWERLEVEL9K_VIRTUALENV_FOREGROUND="015"
# command_execution_time indicator colors
POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND="243"
# time colors
POWERLEVEL9K_TIME_BACKGROUND="252"


# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Hide default user field on prompt
DEFAULT_USER=`whoami`

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  fzf
  # pass
  # kubectl
  helm
)

source $ZSH/oh-my-zsh.sh

# User configuration

# Disables ZSH shared history among terminals
unsetopt share_history

# Enables ZSH special dirs tab-completion
zstyle ':completion:*' special-dirs true

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias doco="docker-compose"
alias docob="docker-compose build"
alias docou="docker-compose up -d"
alias docol="docker-compose logs -f"
alias docos="docker-compose stop"
alias docoe="docker-compose exec"
alias docor="docker-compose run --rm"
alias docod="docker-compose down"


alias weather="curl wttr.in/~Barcelona"

alias l='ll'
alias ll='ls -l --group-directories-first'
alias la='ls -lA --group-directories-first'


######## APPLICATIONS ENV ###########
### PyCharm
# export PATH=/opt/pycharm-2018/bin:$PATH

### Google Cloud SDK
## The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/layo/google-cloud-sdk/path.zsh.inc' ]; then source '/home/layo/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/layo/google-cloud-sdk/completion.zsh.inc' ]; then source '/home/layo/google-cloud-sdk/completion.zsh.inc'; fi

# enables experimental support for python 3.x
export CLOUDSDK_PYTHON=python3

### fzf
export FZF_BASE=/home/layo/.fzf

### virtualenv
# Disable venv prompt so powerlevel9k handles it
VIRTUAL_ENV_DISABLE_PROMPT=1

### pipenv
# disable emoji
# export PIPENV_HIDE_EMOJIS=1
