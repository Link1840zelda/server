"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
set number           " show line number
set tabstop=4 	     " tab size is 4 spaces
set shiftwidth=4 	 " shifting size is 4 spaces
set autoindent       " use auto indent
set cindent          " use C style indent
set smartindent      " use smart indent
set hlsearch         " hilight searching results
set noexpandtab      " turn off auto replacing tab with spaces
set clipboard+=unnamedplus

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
call plug#begin('~/.config/nvim/plugged')

	Plug 'https://github.com/preservim/nerdtree'
	Plug 'https://github.com/vim-airline/vim-airline'
	Plug 'https://github.com/vim-airline/vim-airline-themes'
	Plug 'https://github.com/kien/ctrlp.vim'
	Plug 'https://github.com/nvim-treesitter/nvim-treesitter'
    Plug 'https://github.com/ryanoasis/vim-devicons'
    Plug 'https://github.com/agude/vim-eldar'


call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" Default Theme "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
if has('syntax')
    syntax enable             " Turn on syntax highlighting
    silent! colorscheme eldar " Custom color scheme
endif
