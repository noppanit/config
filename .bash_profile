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

eval "$(docker-machine env default)"

# added by Anaconda3 2.4.0 installer
export PATH="/Users/ncharass/anaconda/bin:$PATH"

export JAVA_HOME=$(/usr/libexec/java_home)
export LSCOLORS="GxFxCxDxBxEgEdabagacad"
export GREP_OPTIONS="--color"

