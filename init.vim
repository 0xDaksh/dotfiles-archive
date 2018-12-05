""""
" Filename: ~/.config/nvim/init.vim
" Author: Daksh Miglani <hello@dak.sh> https://dak.sh
"""

call plug#begin()

" Powerline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" ColorSchemes
Plug 'mhartington/oceanic-next'

" Icons on NerdTree
Plug 'ryanoasis/vim-devicons'
set encoding=UTF-8

" Utility / Productivity
Plug 'scrooloose/nerdtree' 
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-go', { 'do': 'make'}
Plug 'alvan/vim-closetag'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'jiangmiao/auto-pairs'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'scrooloose/syntastic'

" HTML Completions
Plug 'mattn/emmet-vim'

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

let g:airline_theme='base16_oceanicnext'
let g:airline_powerline_fonts = 1
set background=dark
colorscheme OceanicNext

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

" Format with GoImports
let g:go_fmt_command = "goimports"

" Deoplete use vim-go
let g:deoplete#sources#go = 'vim-go'

" Syntastic
let g:syntastic_check_on_wq = 1
let g:syntastic_check_on_open = 1
let g:syntastic_go_checkers = ['go', 'golint', 'govet', 'errcheck']
