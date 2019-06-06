
"	general			"
"""""""""""""""""""""""""""""""""
" others
set bg=dark
set ai			" autoindent
set autoindent		" always set autoindent on
set ruler
set number relativenumber
set cursorline
set cursorcolumn
set guifont=Fira\ Code\ Retina\ 12
set nobackup       "no backup files
set nowritebackup  "only in case you don't want a backup file while editing
set noswapfile     "no swap files
set clipboard=unnamedplus
set showmode
set showmatch
set smarttab
set hlsearch
set incsearch
syntax on
let mapleader = '\'
filetype plugin on 			" use the file type plugins

" set tabs stop & indent
set tabstop=4
set softtabstop=4
set noexpandtab
set shiftwidth=4
set shiftround
set backspace=indent,eol,start
set copyindent

" escape key
imap jk <Esc>

" Hide gui toolbar
if has("gui_running")
  set guioptions=eg
endif

" colorscheme
" buat dulu folder colors
" nvim : cd && mkdir .local/share/nvim/site/colors && cp ~/.vim/plugged/challenger-deep/colors/challenger_deep.vim
" vim : cd && mkdir .vim/colors && cp ~/.vim/plugged/challenger-deep/colors/challenger_deep.vim
colorscheme challenger_deep

" enable true color
if has('nvim') || has('termguicolors')
  set termguicolors
endif

" insert date using F5
:nnoremap <F5> "=strftime("%c")<CR>P
:inoremap <F5> <C-R>=strftime("%c")<CR>

" run python from buffer
:nnoremap <buffer> <F9> :exec '!python3' shellescape(@%, 1)<cr>

" statusline
"set statusline+=%y      "filetype

" insert newline above or below without insert mode
nmap <C-k> O<Esc>j
nmap <C-j> o<Esc>k"

" move line using shift + up / down
nnoremap <S-Up> :m-2<CR>
nnoremap <S-Down> :m+<CR>
inoremap <S-Up> <Esc>:m-2<CR>
inoremap <S-Down> <Esc>:m+<CR>
" zoom in/out windows
noremap Zz <c-w>_ \| <c-w>\|
noremap Zo <c-w>=

" statusline
" this
set laststatus=2
"set statusline=
"set statusline+=%<\                       " cut at start
"set statusline+=%2*[%n%H%M%R%W]%*\        " flags and buf no
"set statusline+=%-40f\                    " path
"set statusline+=%=%1*%y%*%*\              " file type
"set statusline+=%10((%l,%c)%)\            " line and column
"set statusline+=%P\                       " percentage of file
"set statusline+=DimasPradana
set statusline=
set statusline+=%#DiffAdd#%{(mode()=='n')?'\ \ NORMAL\ ':''}
set statusline+=%#DiffChange#%{(mode()=='i')?'\ \ INSERT\ ':''}
set statusline+=%#DiffDelete#%{(mode()=='r')?'\ \ RPLACE\ ':''}
set statusline+=%#Cursor#%{(mode()=='v')?'\ \ VISUAL\ ':''}
set statusline+=\ %n\           " buffer number
set statusline+=%#Visual#       " colour
set statusline+=%{&paste?'\ PASTE\ ':''}
set statusline+=%{&spell?'\ SPELL\ ':''}
set statusline+=%#CursorIM#     " colour
set statusline+=%R                        " readonly flag
set statusline+=%M                        " modified [+] flag
set statusline+=%#Cursor#               " colour
set statusline+=%#CursorLine#     " colour
set statusline+=\ %t\                   " short file name
set statusline+=%=                          " right align
set statusline+=%#CursorLine#   " colour
set statusline+=\ %Y\                   " file type
set statusline+=%#CursorIM#     " colour
set statusline+=\ %3l:%-2c\         " line + column
set statusline+=%#Cursor#       " colour
set statusline+=\ %3p%%\                " percentage
set statusline+=%#CursorLine#   " colour
set statusline+=\ %{$USER}

" open vimrc file on new tab
nnoremap <leader>rc :tabnew $MYVIMRC<CR>

" reload vimrc
nnoremap <leader>rv :source $MYVIMRC<CR>


"""""""""""""""""""""""""""""""""
"	vim-plug		"
"""""""""""""""""""""""""""""""""

" Dimas using vim-plug
" - avoid using standart vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" nerdtree
Plug 'scrooloose/nerdtree'
" surround
Plug 'tpope/vim-surround'
" easymotion
Plug 'easymotion/vim-easymotion'
" ctrlp
Plug 'kien/ctrlp.vim'
" nerd commenter
Plug 'scrooloose/nerdcommenter'
" challenger deep
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
" ultisnip
Plug 'sirver/ultisnips'
" snippets
Plug 'honza/vim-snippets'
" show whitespaces
Plug 'ntpeters/vim-better-whitespace'
" tagbar
Plug 'majutsushi/tagbar'
" youcompleteme
Plug 'valloric/youcompleteme'
" python mode
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
" matchit
Plug 'vim-scripts/matchit.zip'
" supertab for sync youcompleteme and ultisnips
Plug 'ervandew/supertab'
" emmet
Plug 'mattn/emmet-vim'
" indent
Plug 'yggdroot/indentline'
" tabular
Plug 'godlygeek/tabular'
"autopairs
Plug 'jiangmiao/auto-pairs'
"css color
Plug 'ap/vim-css-color'

" initialize plugin system
call plug#end()


"""""""""""""""""""""""""""""""""
"	plugins conf		"
"""""""""""""""""""""""""""""""""

" nerdtree configuration
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let NERDTreeShowHidden=1
nnoremap <Leader>n :NERDTreeToggle<Enter>

" tagbar
nmap <F8> :TagbarToggle<CR>

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion=['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion=['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType='<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" indent guide
"let g:indentLine_char_list = ['|', '¦', '┆', '┊']
" Vim
"let g:indentLine_color_term = 0
" GVim
"let g:indentLine_color_gui = '#A4E57E'
" none X terminal
"let g:indentLine_color_tty_light = 7 " (default: 4)
"let g:indentLine_color_dark = 1 " (default: 2)
" Background (Vim, GVim)
"let g:indentLine_bgcolor_term = 202
"let g:indentLine_bgcolor_gui = '#FF5F00'
" indentline will overwrite your conceal cursor and conceallevel with default
" value
let g:indentLine_concealcursor = 'inc'
let g:indentLine_conceallevel = 2
