" ***** VUNDLE BEGIN
" ***** Do not edit before this block.
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin('~/.config/nvim/bundle')
Plugin 'VundleVim/Vundle.vim'

" ***** VUNDLE PLUGINS *****
Plugin 'tpope/vim-fugitive'
Plugin 'markcornick/vim-terraform'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tomasr/molokai'
Plugin 'itchyny/lightline.vim'
Plugin 'elzr/vim-json'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'fatih/vim-go'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" ***** VUNDLE END
" ***** Put normal config here.
"filetype plugin on
syntax on
set number
colorscheme molokai
set mouse=""

set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2

let g:ctrlp_max_depth = 40
let g:ctrlp_max_files = 10000
let g:ctrlp_show_hidden = 1

let g:vim_json_syntax_conceal = 0

let g:NERDTreeShowHidden = 1 
map <C-n> :NERDTreeToggle<CR>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

command! GoDepsSave execute '!GOVENDOREXPERIMENT=1 godep save ./...'
