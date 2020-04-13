" others
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set bg=dark
set termguicolors
set ai			" autoindent
set autoindent		" always set autoindent on
set ruler
set number relativenumber
set cursorline
set path+=**
" set autochdir
set shortmess+=c
set signcolumn=yes
set hidden
" set cmdheight=2
set cursorcolumn
set colorcolumn=80
set textwidth=80
set signcolumn=yes
" set fo+=t
" set guifont=Fira\ Code\ Retina\ 12
" set guifont=Inconsolata\-g:h14
" set guifont=Fantasque\ Sans\ Mono:h13
if has('nvim')
	"set guifont=Fantasque\ Sans\ Mono:h13
	" set guifont=inconsolata\-g\ g:h13
	set guifont=Fira\ Code\ Retina:h13
	" set highlight Pmenu ctermbg=darkgrey guibg=darkgrey
else
	set guifont=Fira\ Code\ Retina\ 13
	" set hi Pmenu guibg=darkgrey
	" set guifont=inconsolata\-g\ medium\ 12
endif
set nobackup       "no backup files
set nowritebackup  "only in case you don't want a backup file while editing
set noswapfile     "no swap files
" set clipboard=unnamedplus
set showmode
set showmatch
set matchtime=3
set smarttab
set smartcase
set hlsearch
set ignorecase
set mousemodel=popup
"*****************************************************************************
"" Abbreviations
"*****************************************************************************
"" no one is really happy until you have this shortcuts
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall
" Search mappings: These will make it so that going to the next one in a
" search will center on the line it's found in.
nnoremap n nzzzv
nnoremap N Nzzzv
"set spell
set incsearch
" set syntax
filetype indent plugin on 			" use the file type plugins
" enable true color
if has('nvim') || has('termguicolors')
	set termguicolors
endif
" set tabs stop & indent
set tabstop=4
set softtabstop=4
set noexpandtab
set shiftwidth=4
set shiftround
set backspace=indent,eol,start
"set copyindent


" colorscheme
" buat dulu folder colors
" nvim : cd && mkdir .local/share/nvim/site/colors && cp ~/.vim/plugged/challenger-deep/colors/challenger_deep.vim
" vim : cd && mkdir .vim/colors && cp ~/.vim/plugged/challenger-deep/colors/challenger_deep.vim
" colorscheme challenger_deep
" colorscheme dimas_colorscheme
" colorscheme ayu
colorscheme dimas_colorscheme
