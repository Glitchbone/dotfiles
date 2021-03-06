call plug#begin('~/.local/share/nvim/plugged')
Plug 'Shougo/unite.vim'
Plug 'ncm2/ncm2'
Plug 'phpactor/ncm2-phpactor'
Plug 'phpactor/phpactor', {'for': 'php', 'do': 'composer install'}
Plug 'roxma/nvim-yarp'
Plug 'Yggdroot/indentLine'
Plug 'joshdick/onedark.vim'
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
Plug 'airblade/vim-gitgutter'
Plug 'rbgrouleff/bclose.vim'
Plug 'francoiscabrol/ranger.vim'
Plug 'matze/vim-move'
Plug 'MrAlejandro/vim-phpdoc'
call plug#end()

set termguicolors
"set cursorline
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
colorscheme onedark

let mapleader = ","
let g:AutoPairsFlyMode = 0

let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tmuxline#enabled = 0
let g:airline_theme='onedark'
let g:airline_powerline_fonts = 1

let g:ranger_replace_netrw = 1

let g:indentLine_char = '│'
let g:indentLine_color_term = 243
let g:indentLine_color_gui = '#65737e'
let g:indentLine_bufTypeExclude = ['help', 'term:.*']
autocmd TermOpen * IndentLinesDisable

inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
inoremap <expr><s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
autocmd BufEnter * call ncm2#enable_for_buffer()
nnoremap <C-p> :FZF<CR>
nnoremap <C-n> :bnext<CR>
nnoremap <C-b> :bprevious<CR>
nnoremap <Leader>c :bd<CR>
nmap <Leader>d :call PhpDocPasteComment()<CR>

call neomake#configure#automake('nrw', 750)
let g:neomake_error_sign = {'text': '✖', 'texthl': 'NeomakeErrorSign'}
let g:neomake_warning_sign = {'text': '∆', 'texthl': 'NeomakeWarningSign'}
let g:neomake_message_sign = {'text': '➤', 'texthl': 'NeomakeMessageSign'}
let g:neomake_info_sign = {'text': 'ℹ', 'texthl': 'NeomakeInfoSign'}
let g:neomake_open_list = 1
