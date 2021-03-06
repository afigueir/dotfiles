" Metadata {{{1

" Title: Neovim configuration file  
" Author: Alexandre Figueiredo, afigueir
" Repository: https://github.com/afigueir/dotfiles.git

" }}}

" Plugin management {{{1

call plug#begin()
" Plugin for colorscheme
Plug 'bluz71/vim-moonfly-colors'

" Plugin for the status bar
Plug 'itchyny/lightline.vim'
Plug 'itchyny/vim-gitbranch'

" Plugin collection of language packs for Vim
Plug 'sheerun/vim-polyglot'

" Plugin to auto-close quotes, parentheses, etc.
Plug 'jiangmiao/auto-pairs'

" Plugin for colorization colors names, hex codes, etc. 
Plug 'norcalli/nvim-colorizer.lua'

" Plugin to auto-comment 
" Example: gcc to format line, gcap to format paragraph 
Plug 'tpope/vim-commentary'

" Plugin to maximize the current window
Plug 'szw/vim-maximizer'

" Plugin to display git changes in the gutter
Plug 'airblade/vim-gitgutter'

" Plugin for JavaScript
Plug 'pangloss/vim-javascript'

" Plugin to use Neovim like an IDE
" Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Plugin to display a terminal inside Vim
" Plug 'kassio/neoterm'

" Plugin to interact with Git
" Plug 'tpope/vim-fugitive'

" Plugin to add a personnal wiki to Vim
" Plug 'vimwiki/vimwiki'
call plug#end()

" }}}

" Main configuration {{{1

" Use VIM settings rather than Vi settings 
if &compatible
  set nocompatible
endif

" Configuration of the type of application and files 
filetype plugin indent on

" Configuration of the language and encoding 
set encoding=utf8
set langmenu=en_US
let $LANG='en_US'

" Configuration of the file format
set fileformat=unix

" Activation of the hidden files
set hidden

" Activation of the mouse support
set mouse=a

" Confugration of the scroll off 
set scrolloff=5

" Configuration of the clipboard
set clipboard=unnamedplus

" Configuration of the fold type
set foldmethod=marker

" Configuration of the backspace key
set backspace=2
set backspace=indent,eol,start

" Configuration of the completion
set completeopt=menuone,noinsert,noselect

" Configure the command bar height
set cmdheight=1

" Configuration of the update time
set updatetime=300

" Configuration of the search and case options
set smartcase
set ignorecase
set hlsearch
set incsearch

" }}}

" Disable some things {{{1

" Desactivation of some messages
set shortmess+=c

" Desactivation of the show and command modes
set noshowmode
set noshowcmd

" Desactivation of the wrap and lazyredraw options
set nowrap
set nolazyredraw

" Desactivation of the swap and backup files
set noswapfile
set nowritebackup

" }}}

" Split, columns and indentation configuration {{{1

" Configuration of the split position
set splitbelow splitright

" Activation of automatic indentation
set autoindent

" Configuration of tabs
set tabstop=2
set softtabstop=2
set shiftwidth=2

" Activation of rules and numbers
set ruler
set number relativenumber

" Activation of the sign column
if has("nvim-0.5.0") || has("patch-8.1.1564")
	set signcolumn=number
else
	set signcolumn=yes
endif

" Configuration of diff options for Git
set diffopt+=vertical

" }}}

" Colors configuration {{{1

" Activation of syntactic colouring
syntax on

" Configuration of the background color
set background=dark

" Cofiguration of the colors
set termguicolors
set t_Co=256

" Activation of the the colorscheme
colorscheme moonfly 

" Remove background of the colorscheme
hi Normal guibg=NONE ctermbg=NONE

" Configuration of the leader key
let mapleader=' '

" Desactivation of the netrw banner
let g:netrw_banner=0

" }}}

" Mappings configuration {{{1

" Map to switch buffers
nmap <tab> :bn<cr>
nmap <s-tab> :bp<cr>

" Map to delete actual buffer
nmap <leader>qq :bd<cr>

" Map to create splits
map <leader>b :split<cr>
map <leader>v :vsplit<cr>

" Remap switch splits keys
nnoremap <c-h> <c-w><c-h>
nnoremap <c-j> <c-w><c-j>
nnoremap <c-k> <c-w><c-k>
nnoremap <c-l> <c-w><c-l>

" Remap switch splits keys with arrow keys
nnoremap <c-left> <c-w><c-h>
nnoremap <c-down> <c-w><c-j>
nnoremap <c-up> <c-w><c-k>
nnoremap <c-right> <c-w><c-l>

" Disable the x key to prevent clipboard mistakes
noremap x "_x
noremap X "_x

" Autoclose some characters
" inoremap ( ()<left>
" inoremap { {}<left>
" inoremap [ []<left>

" }}}

" Plugin configuration {{{1

" Moonfly configuration {{{2

let g:moonflyUnderlineMatchParen = 1
let g:moonflyItalics = 1
let g:moonflyTransparent = 1

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

" }}}

" Lightline configuration {{{2

let g:lightline = {
 	\ 'active': {
 	\		'left': [ [ 'mode', 'paste' ],
 	\							[ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
	\	},
	\	'component_function': {
	\		'gitbranch': 'gitbranch#name'
	\	},
	\		'colorscheme': 'moonfly',
	\	}

" }}}

" Colorizer configuration {{{2

" Activate Colorizer plugin on startup
lua require 'colorizer'.setup()

" }}}

" Maximizer configuration {{{2

" Map keys to toggle Maximizer plugin
nnoremap <leader>m :MaximizerToggle!<cr>

" }}}

" Neoterm configuration {{{2

" Configure Neoterm plugin options
" let g:neoterm_default_mod='vertical'
" let g:neoterm_size=60
" let g:neoterm_autoinsert=1

" Map keys for Neovim plugin
" nnoremap <c-w> :Ttoggle<cr>
" inoremap <c-w> <esc>:Ttoggle<cr>
" tnoremap <c-w> <c-\><c-n>:Ttoggle<cr>

" }}}

" Fugitive configuration {{{2

" Map keys to toggle Fugitive plugin
" nnoremap <leader>gg :G<cr>

" }}}

" }}}

