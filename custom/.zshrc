# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=~/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
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

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(zsh_reload git z history django python ubuntu pip man go emacs autopep8 httpie brew docker docker-compose docker-machine iterm2 rust pipenv)

source $ZSH/oh-my-zsh.sh
source /etc/profile
source ~/.custom_zshrc

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
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export DEFAULT_USER="feng"

[[ -s /home/feng/.autojump/etc/profile.d/autojump.sh ]] && source /home/feng/.autojump/etc/profile.d/autojump.sh

# sudo apt-get install polipo
# sudo vim /etc/polipo/config
# socksParentProxy = "localhost:1080"
# socksProxyType = socks5
alias hp="http_proxy=http://localhost:8123"
alias hsp="https_proxy=http://localhost:8123"
hp=" -c http_proxy=http://localhost:8123"
alias ap="ALL_PROXY=socks5://127.0.0.1:1080"

alias http="http --style=monokai"


gpip() {
    PIP_REQUIRE_VIRTUALENV="false" pip "$@"
}
gpip3() {
    PIP_REQUIRE_VIRTUALENV="false" pip3 "$@"
}

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/pyenv
source /usr/local/bin/virtualenvwrapper.sh

if [ `uname -s` = "Darwin" ] ; then
    echo "macOS"
    export PATH="/usr/local/opt/freetds@0.91/bin:$PATH"
    export PATH="/usr/local/opt/icu4c/bin:$PATH"
    export PATH="/usr/local/opt/icu4c/sbin:$PATH"
    export PATH="$PATH:/usr/local/opt/openssl/bin"

    export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles
    alias emacs="/usr/local/Cellar/emacs/26.1_1/bin/emacs -nw"

    export PGDATA=/usr/local/var/postgres/

    export PATH="/usr/local/Cellar/go/1.12.5/bin:$PATH"
    export GOROOT=/usr/local/Cellar/go/1.12.5/libexec  # /usr/local/go
    export GOBIN=$GOROOT/bin
    export GOPATH=/Users/feng/go_work
    export PATH=$PATH:$GOBIN
    export GO111MODULE=on
    export PATH=/opt/local/bin:$PATH
    export PATH=/opt/local/sbin:$PATH
    export PATH="/usr/local/opt/node@8/bin:$PATH"
    
    export PATH="$PATH:/Users/feng/Public/flutter/bin"   # flutter sdk

    export PATH="$HOME/.cargo/bin:$PATH"  # rust

    alias swift="PATH=/usr/bin:$PATH swift"

else
    echo "Linux"
    export GOROOT=/usr/local/go
    export GOBIN=$GOROOT/bin
    export GOPATH=/home/feng/go_work
    export PATH=$PATH:$GOBIN
fi

alias emq="emacs -Q"

#alias for cnpm
alias cnpm="npm --registry=https://registry.npm.taobao.org \
  --cache=$HOME/.npm/.cache/cnpm \
  --disturl=https://npm.taobao.org/dist \
  --userconfig=$HOME/.cnpmrc"

alias ipy="python -c 'import IPython; IPython.terminal.ipapp.launch_new_instance()'"

# tabtab source for electron-forge package
# uninstall by removing these lines or running `tabtab uninstall electron-forge`
# [[ -f /usr/local/lib/node_modules/electron-forge/node_modules/tabtab/.completions/electron-forge.zsh ]] && . /usr/local/lib/node_modules/electron-forge/node_modules/tabtab/.completions/electron-forge.zshexport PATH="/usr/local/opt/curl/bin:$PATH"
