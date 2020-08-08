# Path to your oh-my-zsh installation.
ZSH=~/.oh-my-zsh/
export ALTERNATE_EDITOR=""
export EDITOR="emacsclient -t"
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="gianu"
ZSH_THEME="agnoster"
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
ENABLE_CORRECTION="true"

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

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git web-search)


bindkey "^P" up-line-or-beginning-search
bindkey "^N" down-line-or-beginning-search

# bindkey "^P" up-line-or-search
# bindkey "^N" down-line-or-search
# User configuration

export PATH="/home/gabo/.cask/bin:/home/gabo/my_scripts:$PATH"
  # export PATH="/home/gabo/.cask/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

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
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
export TERM=xterm-256color
export HISTSIZE=10000
export HISTFILESIZE=${HISTSIZE}
export HISTCONTROL=ignoreboth

alias e='emacsclient -t'
# alias ls='ls --group-directories-first --time-style=+"%d.%m.%y %h:%m" --color=auto -f'
# alias ll='ls -l --group-directories-first --time-style=+"%d.%m.%y %h:%m" --color=auto -f'
# alias la='ls -la --group-directories-first --time-style=+"%d.%m.%y %h:%m" --color=auto -f'
alias grep='grep --color=tty -d skip'
alias cp="cp -i"                          # confirm before overwriting something
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in mb
alias np='nano pkgbuild'
#alias emacs='emacs -nw'
alias shared='cd /mnt/Shared'
alias dbox='cd /mnt/Shared/Dropbox'
alias open='xdg-open'
alias ldir='ls -d */'
#alias rm='rm -i'
alias artisan='php artisan'
alias processing='/mnt/shared/processing-2.2.1/processing'
alias ofnew='/mnt/shared/programs/openframeworks_0.8.4/apps/projectgenerator/projectgeneratorsimple/bin/projectgeneratorsimple'
alias swapcaps='/usr/bin/setxkbmap -option "ctrl:swapcaps"'
alias guitarpro='wine ~/.wine/drive_c/Program\ Files/Guitar\ Pro\ 6/GuitarPro.exe'

open_mute (){
    xdg-open $1 > /dev/null 2>&1 &
}
# ex - archive extractor
# usage: ex <file>
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.tar.xz)    tar -xvf $1  ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1     ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

neofetch
# better yaourt colors
export YAOURT_COLORS="nb=1:pkg=1:ver=1;32:lver=1;45:installed=1;42:grp=1;34:od=1;41;5:votes=1;44:dsc=0:other=1;35"

# #[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# alias arduino='/mnt/Shared/arduino-1.5.6-r2/arduino'
# alias lampp='sudo /opt/lampp/lampp'
# alias lamppdir='cd /opt/lampp'
# alias pentahoserver='sudo /opt/Pentaho/ctlscript.sh'
# alias pentahodir='cd /opt/Pentaho'
# alias dev_appserver.py='python2 /mnt/Shared/google_appengine/dev_appserver.py'
# alias android-studio='/mnt/Shared/Programs/android-studio/bin/studio.sh'
#export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
#export PATH="$PATH:/opt/lampp/bin" # Add lampp bin to PATH
# export PATH="$PATH:$HOME/.config/composer/vendor/bin:/opt/spring/bin" # php composer commands
#export LD_LIBRARY_PATH=/usr/local/lib
eval "$(fasd --init auto)"
alias o="a -e xdg-open"
alias feh="feh -."
# export PATH="/home/gabo/.pyenv/bin:$PATH:/home/gabo/go/bin"
# eval "$(pyenv init -)"
# eval "$(pyenv virtualenv-init -)"

export WORKON_HOME=$HOME/virtualenvs
export PROJECT_HOME=$HOME/Devel
source /usr/bin/virtualenvwrapper.sh
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

## fzf fuzzy finder
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh
export FZF_DEFAULT_COMMAND='fd --type f'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
#If you want the command to follow symbolic links, and don't want it to exclude hidden files, use the following command:
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
