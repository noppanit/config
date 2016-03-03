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
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'derekwyatt/vim-scala'
Plugin 'scrooloose/syntastic'
Plugin 'vim-airline/vim-airline'

set number
set noswapfile
set nobackup
set nowb
set guifont=Monaco:h14
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set spell spelllang=en_us

autocmd BufEnter * silent! lcd %:p:h

set wildignore+=node_modules,env,vendor,.DS_Store,bower_components

set background=light

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" NERDTree Mappins
" Open Nerd Tree with <Leader>n
map <Leader>n <esc>:NERDTreeToggle<cr>
let NERDTreeIgnore=['\.pyc$', '.DS_Store', '__pycache__'] "don't show .pyc in the Tree 

" Reveal current file in NERDTree with <Leader>r
map <Leader>r <esc>:NERDTreeFind<cr>

let NERDTreeShowHidden=1

" Ag
let g:ag_working_path_mode="r"

" CtrlP
nnoremap <silent> t :CtrlP<cr>
let g:ctrlp_max_files = 0
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]tmp|node_modules|bower_components|\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ }

let g:ackprg = 'ag --nogroup --nocolor --column'

" map keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

call vundle#end()            " required
filetype plugin indent on    " required
colorscheme molokai

set runtimepath^=~/.vim/bundle/ctrlp.vim
