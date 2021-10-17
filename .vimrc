syntax on

" Plugins will be downloaded under the specified directory.
call plug#begin()

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'nightsense/carbonized'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " gitgutter
Plug 'airblade/vim-gitgutter' " editorconfig
Plug 'editorconfig/editorconfig-vim' " lightline
Plug 'itchyny/lightline.vim' " emmet
Plug 'mattn/emmet-vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'https://github.com/ap/vim-css-color.git'
Plug 'morhetz/gruvbox' " Plug 'joshdick/onedark.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ntpeters/vim-better-whitespace'
Plug 'airblade/vim-gitgutter'
Plug 'kien/ctrlp.vim'
Plug 'nathanaelkane/vim-indent-guides' " NERDTREE
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'hoob3rt/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'folke/lsp-colors.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'glepnir/dashboard-nvim'
Plug 'lewis6991/gitsigns.nvim'
Plug 'karb94/neoscroll.nvim'

" language support
Plug 'sheerun/vim-polyglot'
Plug 'neovim/nvim-lspconfig' " languageserver
Plug 'glepnir/lspsaga.nvim'

" HTML CSS
Plug 'othree/html5.vim'

" JavaScript
Plug 'nathanaelkane/vim-indent-guides'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()


let g:coc_global_extensions = ['coc-snippets', 'coc-pairs', 'coc-tsserver', 'coc-eslint', 'coc-prettier', 'coc-json']

filetype plugin indent on    " required

map <C-\> :NERDTreeToggle <CR>
let mapleader = " "

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