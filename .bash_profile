#Colour Git command
if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

git config --global color.status always
git config --global color.diff always
git config --global color.log always

alias ls='ls -G'
alias ll='ls -lhG'
alias la='ls -lahG'

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# added by Anaconda3 2.4.0 installer
export PATH="/Users/ncharass/anaconda/bin:$PATH"
export PATH="/Users/ncharass/opensource/depot_tools:$PATH"

export PATH=$HOME/.jenv/bin:$PATH
eval "$(jenv init -)"

export JAVA_HOME=$(/usr/libexec/java_home)
export LSCOLORS="GxFxCxDxBxEgEdabagacad"
export GREP_OPTIONS="--color"


# added by Anaconda3 5.0.1 installer
export PATH="/Users/ncharass/anaconda3/bin:$PATH"
export GOPATH=$HOME/go
export GOBIN=$HOME/go/bin

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
