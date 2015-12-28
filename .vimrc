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
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'tomasr/molokai'
Plugin 'rking/ag.vim'

set number
set noswapfile
set nobackup
set nowb
set guifont=Monaco:h14
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
autocmd BufEnter * silent! lcd %:p:h

set wildignore+=node_modules,env,vendor,.DS_Store,bower_components

set background=light

" NERDTree Mappins
" Open Nerd Tree with <Leader>n
map <Leader>n <esc>:NERDTreeToggle<cr>
let NERDTreeIgnore=['\.pyc$', '.DS_Store', '__pycache__'] "don't show .pyc in the Tree 

" Reveal current file in NERDTree with <Leader>r
map <Leader>r <esc>:NERDTreeFind<cr>

let NERDTreeShowHidden=1

" CtrlP
nnoremap <silent> t :CtrlP<cr>
let g:ctrlp_max_files = 0
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]tmp|node_modules|bower_components|\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ }

let g:ackprg = 'ag --nogroup --nocolor --column'

call vundle#end()            " required
filetype plugin indent on    " required
colorscheme molokai

set runtimepath^=~/.vim/bundle/ctrlp.vim
