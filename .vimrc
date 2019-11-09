set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line 


syntax on 
filetype plugin on

set clipboard+=unnamed



set encoding=utf-8
scriptencoding utf-8

set backupdir=~/.vim/tmp
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

"
set number
set ruler
set wrap
set noundofile

set autoindent
set smartindent
set cindent
set mouse=a
"改行後に「Backspace」キーを押すと上行末尾に戻る"
set backspace=indent,eol,start

set guioptions+=b
"コマンドラインの高さを2に
set cmdheight=1
"クリップボードを使用する"
set clipboard+=unnamed

set timeoutlen=100
set cursorline
set diffopt=vertical

"Escの2回押しでハイライト消去
set hlsearch
nmap <silent> <Esc><Esc> :nohlsearch<CR>

let loaded_matchparen = 1
set linespace=4
set notitle


"key bind"--------------------------------------------------

inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>

""入力モードでは Emacs 的な移動を可能にする
"inoremap <C-a> <C-o>^
"inoremap <C-e> <C-o>$
"inoremap <C-f> <C-o>w
"inoremap <C-b> <C-o>b
"inoremap <C-d> <C-o>x

"" Emacs 的じゃないけど、これも
"inoremap <C-h> <C-o>h
"inoremap <C-j> <C-o>j
"inoremap <C-k> <C-o>k
"inoremap <C-l> <C-o>l


""""""  Plugin Settings --------------------------------------------------

"""   NERDTreeSettings   -----------------------------------------------------------------------------
function! ToggleNERDTree()
  let current = expand('%:p')
    execute printf(':NERDTreeToggle %s', current)
endfunction

noremap <C-c> :call ToggleNERDTree()<CR>
let NERDTreeShowHidden = 1            "show dotfiles on NERDTree
let NERDTreeIgnore=[ '^\.', '\~$', '\.py[oc]$', '^\.DS_Store$', '^\.git$', '^\.hg$', '^\.svn$']
let g:NERDChristmasTree=1
let g:NERDTreeMouseMode=3

noremap  <C-l> :tabn<CR>
noremap  <C-h> :tabp<CR>
noremap  <C-n> :tabnew<CR>

""" End of NERDTreeSettings  -----------------------------------------------------------------------------

""nerdtree-tabs------------------------------------------------------------------------------
let g:nerdtree_tabs_open_on_console_startup=1
""" End of nerdtree-tabs -----------------------------------------------------------------------------

"""  End of Emmet setting  --------------------------------------------------
