set nocompatible              " be iMproved
filetype off                  " required!

set number

set rtp+=~/.vim/bundle/Vundle.vim
set cc=80
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

if $COLORTERM == 'gnome-terminal'
	set t_Co=256
endif
if $COLORTERM == 'xfce4-terminal'
	set t_Co=256
endif
set t_Co=256

call vundle#begin()

" let Vundle manage Vundle
" required!  
"

Plugin 'gmarik/vundle'

" My bundles here:
"
" original repos on GitHub
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'tpope/vim-rails.git'
Plugin 'scrooloose/nerdtree'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Lokaltog/vim-distinguished'
Plugin 'flazz/vim-colorschemes'
Plugin 'kchmck/vim-coffee-script'
Plugin 'digitaltoad/vim-jade'
" vim-scripts repos
Plugin 'L9'
Plugin 'FuzzyFinder'
" non-GitHub repos
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'git://github.com/xuhdev/SingleCompile.git'
" Git repos on your local machine (i.e. when working on your own plugin)

call vundle#end()
set background=dark
colorscheme jellybeans
syntax enable
filetype plugin indent on     " required!
"
" Brief help
" :PluginList          - list configured bundles
" :PluginInstall(!)    - install (update) bundles
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Plugin commands are not allowed.
