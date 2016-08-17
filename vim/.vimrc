set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" our plugins
Plugin 'gmarik/Vundle.vim'       " vundle
Plugin 'bling/vim-airline'
Plugin 'chriskempson/base16-vim'
Plugin 'docker/docker' , {'rtp': '/contrib/syntax/vim/'}
Plugin 'cespare/vim-toml'

call vundle#end()            " required
filetype plugin indent on    " required
syntax on

set laststatus=2
set number
set backspace=indent,eol,start

if filereadable(expand("~/.vimrc_background"))
	let base16colorspace=256
	source ~/.vimrc_background
endif
