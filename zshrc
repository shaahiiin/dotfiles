# If you come from bash you might have to change your $PATH.
#PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="$HOME/bin:/usr/local/bin:/usr/local/sbin:/Users/shahinsali/Library/Python/2.7/bin:$PATH"
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export EDITOR='nvim'
stty -ixon

# Path to your oh-my-zsh installation.
export ZSH=/Users/shahinsali/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME=agnoster

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

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
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# plugins can be found in ~/.oh-my-zsh/plugins/*
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  web-search
  zsh-syntax-highlighting
  zsh-autosuggestions
)
source $ZSH/oh-my-zsh.sh

# Set zsh-autosuggestions color (solarized theme on iTerm2 shadows the default color)
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=23'

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

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
# prompt_context() {
#   if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
#     prompt_segment black default "%(!.%{%F{yellow}%}.)"
#   fi
# }

### Aliases and other customisations are added here to make it easier to source control
alias c='clear'
alias v='nvim'
alias vim='nvim'
alias weather='curl -4 wttr.in/bangalore'
alias tmuxpanetitle='printf "\033]2;%s\033\\" '

## Print a horizontal rule
rule () {
    printf "%$(tput cols)s\n"|tr " " "─"
}

### fzf file search command
export FZF_DEFAULT_COMMAND='ag --nocolor --ignore node_modules -g ""'


# function scptal() {
  # #TODO: Add $5
  # # $1: talend-zip-file
  # # $2: ssh string
  # # $3: path to jobs folder
  # # $4: path to 'talend-setup.sh'
  # # $5: talend folder name (optional)
  # if [[ $# -lt 4 ]]; then echo "Please pass args\nUSAGE: scptal <talend-zip-file> <server-ip-string> <target-dir> <path-to-'talend-setup.sh'> [OPTIONAL <talend-job-folder-name>]"; return 1; fi
  # FNAME=$(basename $1)
  # scp "$1" "${2}:${3}" && ssh $2 "bash $4 ${3}/${FNAME} $5"
# }
prompt_context() {
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
      prompt_segment black default "%(!.%{%F{yellow}%}.)"
  fi
}
