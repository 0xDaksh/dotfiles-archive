""""
" Filename: ~/.config/nvim/init.vim
" Author: Daksh Miglani <hello@dak.sh> https://dak.sh
"""

call plug#begin()

" Powerline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" ColorSchemes
Plug 'sjl/badwolf'
Plug 'lifepillar/vim-solarized8'
Plug 'ErichDonGubler/vim-sublime-monokai'
Plug 'felipesousa/rupza'

" Icons on NerdTree
Plug 'ryanoasis/vim-devicons'
set encoding=UTF-8

" Utility / Productivity
Plug 'scrooloose/nerdtree' 
Plug 'ryanoasis/vim-devicons'
Plug 'majutsushi/tagbar'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-go', { 'do': 'make'}
Plug 'alvan/vim-closetag'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'jiangmiao/auto-pairs'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" Rainbow Parenthesis
Plug 'junegunn/rainbow_parentheses.vim'
let g:rainbow_active = 1
autocmd VimEnter * RainbowParentheses 
" Autocomplete
Plug 'zchee/deoplete-jedi'


call plug#end()

" Python Setup 
let g:python3_host_prog = "/home/daksh/anaconda3/bin/python"

" Mouse Cursor 
set mouse=a

" Syntax Color
syntax enable
syntax on

if (has("termguicolors"))
 set termguicolors
endif

let g:airline_theme='powerlineish'
set background=dark
colorscheme solarized8 

" Deoplete Setup
let g:deoplete#enable_at_startup = 1
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" 1 <TAB> == 2 <SPACES>
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set expandtab

" Relative Number Pane
set number
set relativenumber

" TagBar
let g:tagbar_width = 30
let g:tagbar_iconchars = ['↠', '↡']

" TMUX fix
if &term =~ '256color'
  " disable Background Color Erase (BCE) so that color schemes
  " render properly when inside 256-color tmux and GNU screen.
  " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
  set t_ut=
endif
" Keymaps

" NerdTree
map <C-n> :NERDTreeToggle<CR>

" Tabs
map <C-k> :tabp<CR>
map <C-l> :tabn<CR>

" Yank-It-All
map <C-a> :%y+<CR>
