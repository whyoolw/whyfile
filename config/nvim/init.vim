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

Plug 'AlphaTechnolog/pywal.nvim', { 'as': 'pywal' }

call plug#end()

colorscheme pywal