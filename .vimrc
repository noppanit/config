set nocompatible
syntax on
filetype off 

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdTree'
Plugin 'ctrlpvim/ctrlp.vim'

set number
set noswapfile
set nobackup
set nowb
set guifont=Monaco:h14

set wildignore+=node_modules,env,vendor,.DS_Store,bower_components

set background=dark

" NERDTree Mappins
" Open Nerd Tree with <Leader>n
map <Leader>n <esc>:NERDTreeToggle<cr>
let NERDTreeIgnore=['\.pyc$', '.DS_Store', '__pycache__'] "don't show .pyc in the Tree 

" Reveal current file in NERDTree with <Leader>r
map <Leader>r <esc>:NERDTreeFind<cr>

augroup markdown
    au!
    au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
augroup END
let NERDTreeShowHidden=1

call vundle#end()            " required
filetype plugin indent on    " required

set runtimepath^=~/.vim/bundle/ctrlp.vim
