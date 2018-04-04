" Don't try to be vi compatible
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
Plug 'junegunn/goyo.vim'
Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
Plug 'w0rp/ale'
Plug 'jparise/vim-graphql'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql'] }
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'scrooloose/nerdcommenter'
Plug 'mhartington/oceanic-next'
Plug 'eugen0329/vim-esearch'
Plug 'leafgarland/typescript-vim'
Plug 'Quramy/tsuquyomi'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'tpope/vim-dotenv'
Plug 'vimwiki/vimwiki', { 'branch': 'dev' }
Plug 'tpope/vim-eunuch'
Plug 'Valloric/YouCompleteMe'
call plug#end()

"closetag setting
let g:closetag_filenames = '*.js,*.jsx'

"YCM config
" Start autocompletion after 4 chars
let g:ycm_min_num_of_chars_for_completion = 4
let g:ycm_min_num_identifier_candidate_chars = 4
let g:ycm_enable_diagnostic_highlighting = 0
" Don't show YCM's preview window [ I find it really annoying ]
set completeopt-=preview
let g:ycm_add_preview_to_completeopt = 0

if !exists("g:ycm_semantic_triggers")
  let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers['typescript'] = ['.']

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
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
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

" for vim 8
if (has("termguicolors"))
  set termguicolors
endif

colorscheme OceanicNext
set t_ut=

