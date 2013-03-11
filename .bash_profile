
#Colour Git command
function git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1) /'
}

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
