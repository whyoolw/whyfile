imap jk <Esc>
vnoremap <C-c> "+y
map <C-p> "+p
set number
"set relativenumber
set nocompatible
set ignorecase
syntax on
set wildmode=longest,list
set ttyfast
set wildmode=longest,list
set autoindent
set smartindent

call plug#begin()
Plug 'preservim/nerdcommenter',
Plug 'EdenEast/nightfox.nvim',
Plug 'AlphaTechnolog/pywal.nvim', { 'as': 'pywal' },
Plug 'skim-rs/skim', { 'dir': '~/.skim', 'do': './install' },

call plug#end()
colorscheme carbonfox
"colorscheme pywal


