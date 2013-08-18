"
"  Bharath Thiruveedula's Vim Configuration
"
"

"------------------------------------------------------
"               Global Stuff
"------------------------------------------------------
"

"Support 256 colors in vim
set t_Co=256
"Make sure we dont support Vi
set  nocompatible
"Acess system's clipboard
set clipboard=unnamed

filetype on
filetype indent on
filetype plugin on

syntax enable
set number
set incsearch
set ignorecase
set hlsearch
set smartindent
set tabstop=4
set shiftwidth=4
set fileencoding=utf-8
set encoding=utf-8
set backspace=indent,eol,start

set guifont=UbuntuMono\ 15
set guioptions-=m
set guioptions-=T
colorscheme xoria256
set noswapfile

"Add Pathogen to the list
execute pathogen#infect()

"Add bundle path to runtimepath(rtp)
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

"let vundle manage Vundle
"required
Bundle 'gmark/vundle'

"My Bundles here:
"
"original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'mattn/zencoding-vim'
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
" non github repos
Bundle 'git://git.wincent.com/command-t.git'




" Powerline setup
set laststatus=2
" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬
"Invisible character colors
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

"Mappings

" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>
"Shortcut to save .vimrc and source it
nmap <leader>r :w<CR>:so %<CR>


