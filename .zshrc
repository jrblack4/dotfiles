export LC_ALL="en_US.UTF-8"

HISTFILE=$HOME/.histfile
HISTSIZE=1000
SAVEHIST=1000

setopt autocd extendedglob nomatch notify
unsetopt beep

bindkey -v

DEFAULT_USER="jblack" 
export EDITOR=vim
export LC_ALL=en_US.UTF-8

# Ruby
export GEM_HOME=$HOME/.gem
export GEM_PATH=$HOME/.gem

# Base Path
export PATH="$HOME/.gem/bin"
export PATH="$PATH:$HOME/.nvm/versions/node/v12.13.0/bin:"
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="$PATH:$HOME/.rvm/gems/ruby-2.7.0/bin"
export PATH="$PATH:$HOME/.rvm/gems/ruby-2.7.0@global/bin"
export PATH="$PATH:$HOME/.rvm/rubies/ruby-2.7.0/bin"
export PATH="$PATH:/bin"
export PATH="$PATH:/opt/X11/bin"
export PATH="$PATH:opt/local/bin"
export PATH="$PATH:opt/local/sbin"
export PATH="$PATH:/sbin"
export PATH="$PATH:/usr/local/bin"
export PATH="$PATH:/usr/bin"
export PATH="$PATH:/usr/local/munki"
export PATH="$PATH:/usr/sbin"
export PATH="$PATH:/usr/local/git/bin"
export PATH="$PATH:$HOME/Library/Android/sdk/tools"
export PATH="$PATH:$HOME/Library/Android/sdk/platform-tools"
export PATH="$PATH:$HOME/bin"
export PATH="$PATH:/usr/local/apache-maven-3.6.3/bin"
export PATH="$PATH:$HOME/.pyenv/bin"
export PATH="$PATH:$HOME/.cargo/bin"


export NVM_DIR="$HOME/.nvm"
export MODERN_TERMINAL="true"

# BAT
export BAT_THEME="TwoDark"

# Android
export ANDROID_HOME=$HOME/Library/Android/sdk
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk-11.0.6.jdk/Contents/Home"
export ANDROID_SDK="$ANDROID_HOME"
export ANDROID_NDK="$ANDROID_HOME"
export ANDROID_HOME="$ANDROID_SDK"
export ANDROID_PLATFORM_TOOLS="$ANDROID_SDK/platform-tools"

# Python
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

export PYTHON_HOME="/usr/local/bin/python3"
alias python="python3"
alias pip="pip3"

export PAGER='less -SX'

# Git
# alias gl="git log --pretty=format:'%C(yellow)%h%Creset %s %C(cyan)(%cr)%Creset %Cgreen<%cn>%Creset' | GREP_COLOR='0;35' egrep -i --color=always '((\\w+/)?(acct|ops|cc|mx)-[0-9]+)|$' | less -R"
alias diff="git diff --color | diff-so-fancy"

# Misc
alias ls="exa --group-directories-first"
alias tree="exa --group-directories-first --tree --level=3"
alias cat="bat"
alias :x="exit"
alias :q="exit"
alias colours='colortest.py'
alias weather='curl wttr.in'
alias imgcat="~/bin/imgcat.sh"

# Node
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# TMUX
alias tmux="tmux -2 attach -t base || tmux -2 new -s base"

# PERL
PATH="$HOME/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/$HOME/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="$HOME/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"$HOME/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=$HOME/perl5"; export PERL_MM_OPT;

eval "$(starship init zsh)"

# ZSH Extensibility
. $HOME/.zsh/z.sh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# bun completions
[ -s "/home/joel/.bun/_bun" ] && source "/home/joel/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# added by Webi for pyenv
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"
