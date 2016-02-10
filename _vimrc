set t_Co=256
syntax on
set background=dark
colo ron
set guifont=Courier\ New:h12
source $VIMRUNTIME/mswin.vim
behave mswin
set shiftwidth=2
set softtabstop=2
set expandtab

call plug#begin('~/.vim/plugged')
"Plug 'easymotion/vim-easymotion'
Plug 'justinmk/vim-sneak'
Plug 'PeterRincker/vim-argumentative'
Plug 'tpope/vim-surround'
Plug 'kien/rainbow_parentheses.vim'
Plug 'scrooloose/nerdtree'
call plug#end()

set nocompatible
nnoremap <left> <nop>
nnoremap <right> <nop>
nnoremap <down> <nop>
nnoremap <up> <nop>
set timeoutlen=500
nnoremap zk maO<esc>k`a
nnoremap zj mao<esc>k`a
nnoremap <esc> :noh<return><esc>
"map <Leader> <Plug>(easymotion-prefix)
nnoremap <Leader>ev :e $HOME\_vimrc <return>
nnoremap } }zz
nnoremap { {zz
set number
set relativenumber
set virtualedit=onemore
let g:sneak#s_next = 1

set linebreak

set hlsearch
set ignorecase
set incsearch

inoremap <backspace> <esc>xi
inoremap jj <esc>
nnoremap ;; :w<cr>
inoremap <c-BS> <esc>dBxi
augroup HI
	au!
	au BufWritePost $MYVIMRC source $MYVIMRC
augroup END
