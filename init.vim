" ***** VUNDLE BEGIN
" ***** Do not edit before this block.
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin('~/.config/nvim/bundle')
Plugin 'VundleVim/Vundle.vim'

" ***** VUNDLE PLUGINS *****
Plugin 'tpope/vim-fugitive'
Plugin 'hashivim/vim-terraform'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tomasr/molokai'
Plugin 'itchyny/lightline.vim'
Plugin 'elzr/vim-json'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'fatih/vim-go'
Plugin 'JamshedVesuna/vim-markdown-preview'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-surround'
Plugin 'tpope/Vim-repeat'

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
let g:ctrlp_max_files = 30000
let g:ctrlp_show_hidden = 1
let g:ctrlp_custom_ignore = '\v[\/](\.(git|hg|svn)|vendor|bin)$'

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

let g:syntastic_go_checkers = [ 'go', 'govet', 'golint' ]
let g:syntastic_go_go_build_args = [ '-i' ]
let g:syntastic_ruby_checkers = [ 'rubocop' ]
let g:syntastic_javascript_checkers = [ 'eslint', 'flow' ]

let g:syntastic_markdown_checkers = [ 'textlint' ]

let vim_markdown_preview_hotkey='<C-S-M>'
let vim_markdown_preview_github=1
if has('unix')
  let vim_markdown_preview_use_xdg_open=1
endif

let g:terraform_fmt_on_save = 1

command! -range HclNewLineAdd <line1>,<line2>s/\${/\r${/g | noh
command! -range HclNewLineRemove <line1>,<line2>s/\n\${/${/g | noh
command! FmtJson %!jq .

au BufNewFile,BufRead *.md setlocal textwidth=80
au FileType gitcommit setlocal spell spelllang=en_us
au FileType markdown setlocal spell spelllang=en_us
au FileType mail setlocal spell spelllang=en_us

set spell spelllang=en_us
" Need to fix this for termite
hi MatchParen      ctermfg=240  ctermbg=208 cterm=bold
" Transparency
hi Normal ctermbg=none
set guicursor=
