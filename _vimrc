source $VIMRUNTIME/mswin.vim
behave mswin

set nocompatible

source $HOME\dotfiles\.vim\mappings
source $HOME\dotfiles\.vim\plugins
source $HOME\dotfiles\.vim\visuals
source $HOME\dotfiles\.vim\formatting

set timeoutlen=500
set virtualedit=onemore

set hlsearch
set ignorecase
set incsearch
let g:sneak#s_next = 1

augroup HI
	au!
	au BufWritePost $MYVIMRC source $MYVIMRC
augroup END
