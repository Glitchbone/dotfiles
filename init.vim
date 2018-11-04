call plug#begin('~/.local/share/nvim/plugged')
Plug 'Shougo/unite.vim'
Plug 'Shougo/vimfiler.vim'
Plug 'ncm2/ncm2'
Plug 'phpactor/ncm2-phpactor'
Plug 'phpactor/phpactor', {'for': 'php', 'do': 'composer install'}
Plug 'roxma/nvim-yarp'
Plug 'Yggdroot/indentLine'
Plug 'mhartington/oceanic-next'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'sheerun/vim-polyglot'
Plug 'StanAngeloff/php.vim', {'for': 'php'}
Plug 'neomake/neomake'
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-php-manual'
Plug 'ryanoasis/vim-devicons'
Plug 'diepm/vim-rest-console'
call plug#end()

set termguicolors
set cursorline
set listchars=eol:¬,tab:>·,trail:~
set list
set background=dark
set tabstop=4
set softtabstop=4 
set shiftwidth=4 
set smarttab
set ai
set si
set wrap
set expandtab
set completeopt=noinsert,menuone,noselect
set hidden
set number relativenumber
set mouse=a
set nobackup
set nowb
set noswapfile

syntax enable
colorscheme OceanicNext
highlight LineNr guibg=#343d46
highlight CursorLineNr guifg=white

let mapleader = ","
let g:AutoPairsFlyMode = 0

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

let g:indentLine_char = '│'
let g:indentLine_color_term = 243
let g:indentLine_color_gui = '#65737e'

inoremap jj <esc>
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
inoremap <expr><s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
autocmd BufEnter * call ncm2#enable_for_buffer()
nnoremap <C-p> :FZF<CR>
nnoremap <C-n> :bnext<CR>
nnoremap <C-b> :bprevious<CR>
nnoremap <Leader>c :bd<CR>
nnoremap <Leader>f :VimFilerExplorer -toggle<CR>

call neomake#configure#automake('nrwi', 500)
let g:neomake_error_sign   = {'text': '✖', 'texthl': 'NeomakeErrorSign'}
let g:neomake_warning_sign = {'text': '∆', 'texthl': 'NeomakeWarningSign'}
let g:neomake_message_sign = {'text': '➤', 'texthl': 'NeomakeMessageSign'}
let g:neomake_info_sign    = {'text': 'ℹ', 'texthl': 'NeomakeInfoSign'}
