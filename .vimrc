execute pathogen#infect()
set nocompatible
syntax on
filetype plugin indent on

set number
set noswapfile
set nobackup
set nowb
set guifont=Monaco:h16

set wildignore+=node_modules,env,vendor,.DS_Store

set background=dark
colorscheme solarized

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


command! Speedbumptest !cd ~/MyProjects/fusion.net/vip-quickstart && vagrant ssh -c 'cd /srv/www/wp-content/themes/vip/fusion-theme/lib/speed-bumps/ && phpunit'
