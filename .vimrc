syntax on

" Plugins will be downloaded under the specified directory.
call plug#begin()

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'nightsense/carbonized'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-gitgutter'
Plug 'editorconfig/editorconfig-vim'
Plug 'itchyny/lightline.vim'
Plug 'mattn/emmet-vim'
Plug 'scrooloose/nerdtree'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-eunuch'
Plug 'https://github.com/leafgarland/typescript-vim.git'
Plug 'https://github.com/ap/vim-css-color.git'
Plug 'morhetz/gruvbox'
Plug 'ntpeters/vim-better-whitespace'
Plug 'tomtom/tcomment_vim'
Plug 'airblade/vim-gitgutter'
Plug 'Raimondi/delimitMate'
Plug 'kien/ctrlp.vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'posva/vim-vue'

" HTML CSS
Plug 'othree/html5.vim'

" JavaScript
Plug 'nathanaelkane/vim-indent-guides'
Plug 'posva/vim-vue'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()


filetype plugin indent on    " required

map <C-\> :NERDTreeToggle <CR>

colorscheme gruvbox
hi Comment guifg=#5C6370 ctermfg=59

set encoding=utf-8
set number
set mouse=a
set background=dark
set noswapfile

set clipboard=unnamed           " Yanks go on clipboard instead.
set showcmd                     " display incomplete commands
set showmatch                   " show matching braces


" whitespace
set tabstop=2 shiftwidth=2      " a tab is two spaces (or set this to 4)
set softtabstop=2
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode
set ruler                       " show the cursor position all the time
set autoindent
set nofoldenable                " Say no to code folding...
set antialias
set shiftround
set ai

" relative numbers
set relativenumber
set rnu

"" nerdtree

" easier navigation between split windows
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

"" git diff gitgutter
set updatetime=250

"" ctrl p
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
set runtimepath+=~/.vim/bundle/ctrlp.vim

let g:ctrlp_working_path_mode = 0
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
