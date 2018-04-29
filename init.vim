call plug#begin('~/.local/share/nvim/plugged')
Plug 'Shougo/unite.vim'
Plug 'Shougo/vimfiler.vim'
Plug 'mhartington/oceanic-next'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug '/usr/local/opt/fzf'
Plug 'tpope/vim-fugitive'
Plug 'edkolev/tmuxline.vim'
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'ryanoasis/vim-devicons'
call plug#end()

set termguicolors
set number
set cursorline
set list
set background=dark
set tabstop=4
set softtabstop=4 
set shiftwidth=4 
set expandtab
set autoindent
let g:AutoPairsFlyMode = 1
syntax enable
let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1
colorscheme OceanicNext
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tmuxline#enabled = 0
let g:airline_theme='oceanicnext'
let g:airline_powerline_fonts = 1
let g:vimfiler_as_default_explorer = 1
nnoremap <C-p> :FZF<CR>
