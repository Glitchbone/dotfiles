call plug#begin('~/.local/share/nvim/plugged')
Plug 'Shougo/unite.vim'
Plug 'Shougo/vimfiler.vim'
Plug 'ncm2/ncm2'
Plug 'phpactor/ncm2-phpactor'
Plug 'phpactor/phpactor', {'for': 'php', 'do': 'composer install'}
Plug 'roxma/nvim-yarp'
Plug 'mhartington/oceanic-next'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-php-manual'
Plug 'ryanoasis/vim-devicons'
Plug 'miyakogi/sidepanel.vim'
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
set completeopt=noinsert,menuone,noselect
syntax enable
colorscheme OceanicNext

let g:AutoPairsFlyMode = 1

let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tmuxline#enabled = 0
let g:airline_theme='oceanicnext'
let g:airline_powerline_fonts = 1

let g:vimfiler_as_default_explorer = 1
let g:vimfiler_tree_opened_icon = '▼'
let g:vimfiler_tree_closed_icon = '▷'
let g:vimfiler_tree_leaf_icon = ''

let g:sidepanel_pos = "left"
let g:sidepanel_width = 26
let g:sidepanel_config = {}
let g:sidepanel_config['vimfiler'] = {}

inoremap jj <esc>
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
inoremap <expr><s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
autocmd BufEnter * call ncm2#enable_for_buffer()
nnoremap <C-p> :FZF<CR>
