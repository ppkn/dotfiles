# uncomment this for profiling
# zmodload zsh/zprof

eval "$(starship init zsh)" # zsh theme

export PATH=$PATH:$HOME/bin

# ls colors
export LSCOLORS="Gxfxcxdxbxegedabagacad"
alias ls="ls --color=auto"
alias ll="ls -lah"

#. /usr/local/opt/asdf/libexec/asdf.sh
. "$HOME/.asdf/asdf.sh"

# aliases
alias bx="bundle exec"
alias gs="git status"
alias gd="git diff"
alias gdc="git diff --cached"
alias gco="git checkout"
alias gcan="git commit --amend --no-edit"
alias gpf="git push --force-with-lease"
alias vim="nvim"

# functions
mkcd () {
  mkdir -p $1
  cd $1
}

# postgres
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"

# google cloud
# . /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc # autocomplete
# . /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc # PATH

# android studio/react native
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-11.jdk/Contents/Home

# docker cli
# export PATH=$PATH:~/.docker/bin

# share history
setopt share_history

# share iex history
export ERL_AFLAGS="-kernel shell_history enabled"

# secret key for jwt
export SECRET_KEY_BASE="development_key"

# doom
export PATH=$PATH:~/.config/emacs/bin

# plugins
# export ZPLUG_HOME=/usr/local/opt/zplug
# source $ZPLUG_HOME/init.zsh
# zplug "zsh-users/zsh-autosuggestions"
# zplug "zsh-users/zsh-syntax-highlighting", defer:2

# zplug load

# fuzzy find history with ^R
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# autosuggestions
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# syntax highlighting (has to be at the end of .zshrc)
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/dpipkin/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/dpipkin/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/dpipkin/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/dpipkin/google-cloud-sdk/completion.zsh.inc'; fi

# uncomment this for profiling
# zprof

