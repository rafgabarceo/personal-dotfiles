set nocompatible
filetype on
filetype plugin on
filetype indent on
syntax on

set shiftwidth=4
set tabstop=4
set nobackup
set nowrap
set incsearch
set showmatch
set hlsearch
set relativenumber
set encoding=UTF-8

" Assumes that the font is already installed.
set guifont=Hack\ Nerd\ Font\ Mono\ 12
" Utilized for vim-devicons
filetype plugin on


" Boilerplate to automatically install vim-plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
	Plug 'preservim/nerdtree' | 
		\ Plug 'Xuyuanp/nerdtree-git-plugin'
	Plug 'ryanoasis/vim-devicons'
	Plug 'preservim/nerdcommenter'
	Plug 'itchyny/lightline.vim'
	Plug 'tpope/vim-surround'
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
call plug#end()

" Ensure that lightline is capable of showing itself
set laststatus=2

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
