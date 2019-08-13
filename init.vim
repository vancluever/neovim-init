" ***** VUNDLE BEGIN
" ***** Do not edit before this block.
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin('~/.config/nvim/bundle')
Plugin 'VundleVim/Vundle.vim'

" ***** VUNDLE PLUGINS *****
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rhubarb'
Plugin 'hashivim/vim-terraform'
Plugin 'hashivim/vim-nomadproject'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tomasr/molokai'
Plugin 'itchyny/lightline.vim'
Plugin 'elzr/vim-json'
Plugin 'w0rp/ale'
Plugin 'maximbaz/lightline-ale'
Plugin 'fatih/vim-go'
Plugin 'fatih/vim-hclfmt'
Plugin 'JamshedVesuna/vim-markdown-preview'
Plugin 'tpope/vim-surround'
Plugin 'tpope/Vim-repeat'
Plugin 'sebdah/vim-delve'
Plugin 'junegunn/vader.vim'
Plugin 'hashicorp/sentinel.vim'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'

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

let g:deoplete#enable_at_startup = 1

if len(getbufinfo({'buflisted':1})) > 1
  let g:ale_lint_on_enter = 0
endif
let g:ale_linters = {'go': ['go build', 'gometalinter']}
let g:ale_go_gometalinter_options = '--concurrency=2 --aggregate --disable=megacheck'

let vim_markdown_preview_hotkey='<C-S-M>'
let vim_markdown_preview_github=1
if has('unix')
  let vim_markdown_preview_use_xdg_open=1
endif

let g:terraform_fmt_on_save = 1

let g:gutentags_define_advanced_commands = 1
let g:gutentags_ctags_executable_ruby = 'ripper-tags'

au BufNewFile,BufRead *.md setlocal textwidth=80
au FileType gitcommit setlocal spell spelllang=en_us
au FileType markdown setlocal spell spelllang=en_us
au FileType mail setlocal spell spelllang=en_us

let g:lightline = {}
let g:lightline.colorscheme = 'molokai'
let g:lightline.component_expand = {
      \  'linter_checking': 'lightline#ale#checking',
      \  'linter_warnings': 'lightline#ale#warnings',
      \  'linter_errors': 'lightline#ale#errors',
      \  'linter_ok': 'lightline#ale#ok',
      \ }
let g:lightline.component_type = {
      \     'linter_checking': 'left',
      \     'linter_warnings': 'warning',
      \     'linter_errors': 'error',
      \     'linter_ok': 'left',
      \ }

let g:lightline.active = { 'right': [
  \ [ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_ok' ],
  \ [ 'lineinfo' ],
  \ [ 'fileformat', 'fileencoding', 'filetype' ],
  \ ] }

let ruby_fold = 1
set foldlevel=20

command! MermaidPreview silent exec "!mermaid --preview %:t"
command! MermaidPreviewDebug !mermaid --preview -w 1280 %:t

set spell spelllang=en_us
" Need to fix this for termite
hi MatchParen      ctermfg=240  ctermbg=208 cterm=bold
" Transparency
hi Normal ctermbg=none
set guicursor=
