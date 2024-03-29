# Start configuration added by Zim install {{{
#
# User configuration sourced by interactive shells
#

# -----------------
# Zsh configuration
# -----------------

#
# History
#

# Remove older command from the history if a duplicate is to be added.
setopt HIST_IGNORE_ALL_DUPS

#
# Input/output
#

# Set editor default keymap to emacs (`-e`) or vi (`-v`)
bindkey -e

# Prompt for spelling correction of commands.
#setopt CORRECT

# Customize spelling correction prompt.
#SPROMPT='zsh: correct %F{red}%R%f to %F{green}%r%f [nyae]? '

# Remove path separator from WORDCHARS.
WORDCHARS=${WORDCHARS//[\/]}


# --------------------
# Module configuration
# --------------------

#
# completion
#

# Set a custom path for the completion dump file.
# If none is provided, the default ${ZDOTDIR:-${HOME}}/.zcompdump is used.
#zstyle ':zim:completion' dumpfile "${ZDOTDIR:-${HOME}}/.zcompdump-${ZSH_VERSION}"

#
# git
#

# Set a custom prefix for the generated aliases. The default prefix is 'G'.
#zstyle ':zim:git' aliases-prefix 'g'

#
# input
#

# Append `../` to your input for each `.` you type after an initial `..`
#zstyle ':zim:input' double-dot-expand yes

#
# termtitle
#

# Set a custom terminal title format using prompt expansion escape sequences.
# See http://zsh.sourceforge.net/Doc/Release/Prompt-Expansion.html#Simple-Prompt-Escapes
# If none is provided, the default '%n@%m: %~' is used.
#zstyle ':zim:termtitle' format '%1~'

#
# zsh-autosuggestions
#

# Customize the style that the suggestions are shown with.
# See https://github.com/zsh-users/zsh-autosuggestions/blob/master/README.md#suggestion-highlight-style
#ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=242'

#
# zsh-syntax-highlighting
#

# Set what highlighters will be used.
# See https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/docs/highlighters.md
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)

# Customize the main highlighter styles.
# See https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/docs/highlighters/main.md#how-to-tweak-it
#typeset -A ZSH_HIGHLIGHT_STYLES
#ZSH_HIGHLIGHT_STYLES[comment]='fg=242'

# ------------------
# Initialize modules
# ------------------

if [[ ! ${ZIM_HOME}/init.zsh -nt ${ZDOTDIR:-${HOME}}/.zimrc ]]; then
  # Update static initialization script if it does not exist or it's outdated, before sourcing it
  source ${ZIM_HOME}/zimfw.zsh init -q
fi
source ${ZIM_HOME}/init.zsh

# ------------------------------
# Post-init module configuration
# ------------------------------

#
# zsh-history-substring-search
#

# Bind ^[[A/^[[B manually so up/down works both before and after zle-line-init
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# Bind up and down keys
zmodload -F zsh/terminfo +p:terminfo
if [[ -n ${terminfo[kcuu1]} && -n ${terminfo[kcud1]} ]]; then
  bindkey ${terminfo[kcuu1]} history-substring-search-up
  bindkey ${terminfo[kcud1]} history-substring-search-down
fi

bindkey '^P' history-substring-search-up
bindkey '^N' history-substring-search-down
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down
# }}} End configuration added by Zim install




#### PREV TOP #####

# Load in private keys
source ~/.zsh_keys

export TERM=xterm-256color
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
# export ZSH="/Users/avi/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="spaceship"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

# source $ZSH/oh-my-zsh.sh

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


# bindkey '^ ' autosuggest-accept

# Declare the variable
#typeset -A ZSH_HIGHLIGHT_STYLES

# To differentiate aliases from other command types
# ZSH_HIGHLIGHT_STYLES[alias]='fg=magenta,bold'

# To have paths colored instead of underlined
# ZSH_HIGHLIGHT_STYLES[builtin]='fg=black'

# To disable highlighting of globbing expressions
# ZSH_HIGHLIGHT_STYLES[globbing]='none'
[ -f "/Users/avi/.ghcup/env" ] && source "/Users/avi/.ghcup/env" # ghcup-env

# alias frink="java -cp ~/Downloads/frink.jar frink.gui.FrinkStarter" $ Already made executable

# Uncomment for Avi-made prompt #homemade
PROMPT='%(?.%F{green}$.%F{red}$)%f '



# Add this to your zshrc or bzshrc file
_not_inside_tmux() { [[ -z "$TMUX" ]] }

ensure_tmux_is_running() {
  if _not_inside_tmux; then
    tat
  fi
}
# ensure_tmux_is_running

PATH=$PATH:/Users/avi/my/code/bin
PATH=$PATH:/Users/avi/my
PATH=$PATH:/Users/avi/my/code
CDPATH=$CDPATH:/Users/avi/my
CDPATH=$CDPATH:/Users/avi/my/code

alias cd='cd >/dev/null' 
#export MANPAGER=sh -c 'col -bx | bat -l man -p'
alias cat=bat

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export MANPAGER="col -b | vim --noplugin -c 'set ft=man ts=8 nomod nolist nonu noma' -"


# QPDF Aliases
### qmerge out.pdf  a.pdf b.pdf c.pdf
### qsplit out.pdf in.pdf 1-10
qmerge() { qpdf --empty --pages ${@:2} -- $1; }
# qsplit() { qpdf $1 --pages . ${@:3} -- $2; }


alias vimrc='vim ~/.vimrc'
alias zshrc='vim ~/.zshrc'
alias tmuxrc='vim ~/.tmux.conf'
alias ls='exa'
alias p3='python3'
alias rm='trash'
# https://apple.stackexchange.com/questions/31872/how-do-i-reset-the-scrollback-in-the-terminal-via-a-shell-command
alias cmdk='clear && printf "\e[3J"'
alias kk='clear && printf "\e[3J"'
alias l='clear && printf "\e[3J"'

# LANGS
alias red="~/Downloads/red-26may21-9b645b936"


manp()
{
man -t $* | open -f -a /Applications/Preview.app/
}

# alias find='fd'
alias apl='cd / && ./Applications/Dyalog-18.0.app/Contents/Resources/Dyalog/mapl -b'



# $ brew link ruby
# Warning: Refusing to link macOS provided/shadowed software: ruby
# If you need to have ruby first in your PATH, run:
  # echo 'export PATH="/usr/local/opt/ruby/bin:$PATH"' >> ~/.zshrc

# For compilers to find ruby you may need to set:
  export LDFLAGS="-L/usr/local/opt/ruby/lib"
  export CPPFLAGS="-I/usr/local/opt/ruby/include"

# For pkg-config to find ruby you may need to set:
  export PKG_CONFIG_PATH="/usr/local/opt/ruby/lib/pkgconfig"
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="/usr/local/opt/ruby/bin:$PATH"

# Homebrew should take precedence over macOS system defaults
# See https://stackoverflow.com/questions/8730676/how-can-i-switch-to-ruby-1-9-3-installed-using-homebrew
export PATH=/usr/local/bin:$PATH


# eval "$(starship init zsh)"



alias zimrc="vi ~/.zimrc"

export EDITOR="vim"

alias mapl="/Applications/Dyalog-18.0.app/Contents/Resources/Dyalog/mapl"
alias apl="/Applications/Dyalog-18.0.app/Contents/Resources/Dyalog/mapl"
alias tailwind="npx tailwindcss-cli build -i css/tailwind.css -o build/tailwind.css -c tailwind.config.js --watch --jit"

export ONI_NEOVIM_PATH="/usr/local/bin/nvim"
export GOPATH="/Users/avi/my/code/langs/go"
export GOROOT="/usr/local/go"
export GOBIN="/Users/avi/my/code/bin"


# Accept fish-style suggestions with Ctrl+Space
bindkey '^ ' autosuggest-accept

# Setup Wails
# https://wails.app/gettingstarted/mac/
export GO111MODULE=on
export CGO_ENABLED=1
export PATH=$PATH:~/go/bin
alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --disable-web-security --user-data-dir=~/.chrome-disable-web-security"
alias webl="webly; kill -9 \$(lsof -t -i:5000)"


alias tinylisp='python3 ~/my/code/bin/Esolangs/tinylisp/tinylisp.py'
