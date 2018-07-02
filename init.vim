
syntax on
colorscheme onedark

let g:lightline = {'colorscheme': 'palenight'}

" tabs and spaces
set tabstop=4       " show existing tab with 4 spaces width
set shiftwidth=4    " when indenting with '>', use 4 spaces width
set expandtab       " On pressing tab, insert 4 spaces
set autoindent
set cindent
filetype plugin indent on
set updatetime=100
inoremap { {<CR>}<up><end><CR>

" config
set encoding=UTF-8
set number          "This turns on line numbering
set numberwidth=1
set relativenumber  "This turns on relative numbering
set showmatch           " highlight matching [{()}]
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set noshowmode      " doesn't show input text
set cursorline      " colorscheme has default cursorline settings

" Emmet
"let g:user_emmet_install_global = 0
"
" nerd tree
map <C-n> :NERDTreeToggle<CR>

" auto-pairs
let g:AutoPairsFlyMode = 1
 "let g:AutoPairsShortcutBackInsert = '<M-b>'

"switching panes 
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" running c files
:set makeprg=clang\ %\ -lcs50

" git gutter
let g:gitgutter_sign_added='┃'
let g:gitgutter_sign_modified='┃'
let g:gitgutter_sign_removed='◢'
let g:gitgutter_sign_removed_first_line='◥'
let g:gitgutter_sign_modified_removed='◢'

"highlight clear SignColumn
highlight GitGutterAdd ctermfg=green
highlight GitGutterChange ctermfg=yellow
highlight GitGutterDelete ctermfg=red
highlight GitGutterChangeDelete ctermfg=yellow

if exists('&signcolumn')  " Vim 7.4.2201
  set signcolumn=yes
else
  let g:gitgutter_sign_column_always = 1
endif

" terminal
set splitbelow

" emmet
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
let g:user_emmet_expandabbr_key = '<tab>'
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

"command-t
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Don't show YCM's preview window [ I find it really annoying ]
set completeopt-=preview
let g:ycm_add_preview_to_completeopt = 0

call plug#begin()
Plug 'mattn/emmet-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-fugitive'
Plug 'Yggdroot/indentLine'
Plug 'vimlab/split-term.vim'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'Valloric/YouCompleteMe'
Plug 'itchyny/lightline.vim'
call plug#end()

