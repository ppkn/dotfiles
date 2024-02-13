# uncomment this for profiling
# zmodload zsh/zprof

eval "$(starship init zsh)" # zsh theme
# ls colors
export LSCOLORS="Gxfxcxdxbxegedabagacad"

. /usr/local/opt/asdf/libexec/asdf.sh

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

# google cloud
. /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc # autocomplete
. /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc # PATH

# android studio/react native
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# docker cli
export PATH=$PATH:~/.docker/bin

# share history
setopt share_history

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

# uncomment this for profiling
# zprof
