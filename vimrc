" Don't try to be vi compatible
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
set nocompatible

set encoding=utf8

" Helps force plugins to load correctly when it is turned back on below
filetype off

" Load plugins here
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Install fzf from brew first
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'leshill/vim-json'
Plug 'christoomey/vim-tmux-navigator'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'w0rp/ale'
Plug 'jparise/vim-graphql'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql'] }
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'scrooloose/nerdcommenter'
Plug 'yosiat/oceanic-next-vim'
Plug 'eugen0329/vim-esearch'
Plug 'leafgarland/typescript-vim'
Plug 'Quramy/tsuquyomi'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'tpope/vim-dotenv'
Plug 'vimwiki/vimwiki', { 'branch': 'dev' }
Plug 'tpope/vim-eunuch'
call plug#end()

" jsx highlight plugin settings
let g:jsx_ext_required = 0

" ale syntax linting settings
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 0

" Turn on syntax highlighting
syntax on

" For plugins to load correctly
filetype plugin indent on

" setting navigator
set splitbelow
set splitright

" TODO: Pick a leader key
let mapleader = ","

" Prettier
nmap <Leader>t <Plug>(Prettier)
" run prettier in async mode
let g:prettier#exec_cmd_async = 1
" run prettier when onSave
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.json,*.ts,*.css,*.scss,*.less,*.graphql PrettierAsync
" custome rule for prettier
let g:prettier#config#semi = 'false'

" FZF
map ff :Files<Enter>
let g:fzf_buffers_jump = 1

" Security
set modelines=0

" No swapfile
set noswapfile

" Show file stats
set ruler

" Blink cursor on error instead of beeping (grr)
set visualbell

" Encoding
set encoding=utf-8

" Whitespace
set wrap
set textwidth=79
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

" Cursor motion
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim

" Move up/down editor lines
nnoremap j gj
nnoremap k gk

" Set pastetoggle
set pastetoggle=<Leader>v

" Allow hidden buffers
set hidden

" Rendering
set ttyfast

" Status bar
set laststatus=2

" Last line
set showmode
set showcmd

" Searching
nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr> " clear search

" Remap help key.
inoremap <F1> <ESC>:set invfullscreen<CR>a
nnoremap <F1> :set invfullscreen<CR>
vnoremap <F1> :set invfullscreen<CR>

" number
set number relativenumber
nnoremap <silent> <C-n> :set relativenumber! nu!<cr>

" Textmate holdouts

" Formatting
map <leader>q gqip

" Visualize tabs and newlines
set listchars=tab:▸\ ,eol:¬
" Uncomment this to enable by default:
" set list " To enable by default
" Or use your leader key + l to toggle on/off
map <leader>l :set list!<CR> " Toggle tabs and EOL

colorscheme OceanicNext
set t_ut=

