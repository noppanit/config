#Colour Git command
if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

function git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1) /'
}

git config --global color.status always
git config --global color.diff always
git config --global color.log always

PS1='\[\033[0;37m\][\[\033[01;36m\]\W\[\033[0;37m\]] \[\033[0;32m\]$(git_branch)\[\033[00m\]\$ '

#Delete stuff to .Trash instead of to the limbo
function rm () {
  local path
  for path in "$@"; do
    # ignore any arguments
    if [[ "$path" = -* ]]; then :
    else
      local dst=${path##*/}
      # append the time if necessary
      while [ -e ~/.Trash/"$dst" ]; do
        dst="$dst "$(date +%H-%M-%S)
      done
      mv "$path" ~/.Trash/"$dst"
    fi
  done
}

alias ls='ls -G'
alias ll='ls -lhG'
alias la='ls -lahG'

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

eval "$(docker-machine env default)"

# added by Anaconda3 2.4.0 installer
export PATH="/Users/ncharass/anaconda/bin:$PATH"

export JAVA_HOME=$(/usr/libexec/java_home)
export LSCOLORS="GxFxCxDxBxEgEdabagacad"
export GREP_OPTIONS="--color"

