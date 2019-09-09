"	general			"
"""""""""""""""""""""""""""""""""
" others
" set bg=dark
set ai			" autoindent
set autoindent		" always set autoindent on
set ruler
set number relativenumber
set cursorline
"set cursorcolumn
set colorcolumn=80
" set guifont=Fira\ Code\ Retina\ 12
" set guifont=Inconsolata\-g:h14
" set guifont=Fantasque\ Sans\ Mono:h13
if has('nvim')
	set guifont=Fantasque\ Sans\ Mono:h13
	" set guifont=inconsolata\-g\ g:h13
else
	" set guifont=Fira\ Code\ Retina\ 12
	set guifont=inconsolata\-g\ medium\ 12
endif
set nobackup       "no backup files
set nowritebackup  "only in case you don't want a backup file while editing
set noswapfile     "no swap files
" set clipboard=unnamedplus
set showmode
set showmatch
set matchtime=3
set smarttab
set hlsearch
"set spell
set incsearch
" set syntax
let mapleader = '\'
filetype indent plugin on 			" use the file type plugins

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
	"set guioptions=egmrt
	set guioptions=egtm
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
" :nnoremap <buffer> <F9> :exec '!source env/bin/activate && python3' shellescape(@%, 1)<cr>

" statusline
"set statusline+=%y      "filetype

" insert newline above or below without insert mode
nmap <C-k> O<Esc>j
nmap <C-j> o<Esc>k"

" move line using shift + up / down
" nnoremap <S-Up> :m-2<CR>
" nnoremap <S-Down> :m+<CR>
" inoremap <S-Up> <Esc>:m-2<CR>
" inoremap <S-Down> <Esc>:m+<CR>
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
" set statusline+=\ %t\                   " short file name
set statusline+=\ %F\                   " full path file name
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

" moving line using alt j or k key
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" change filetype shortcut
nnoremap <leader><leader>h :set filetype:html<CR>
nnoremap <leader><leader>p :set filetype:php<CR>
nnoremap <leader><leader>j :set filetype:javascript<CR>
nnoremap <leader><leader>c :set filetype:css<CR>
nnoremap <leader><leader>b :set filetype:blade<CR>
nnoremap <leader><leader>y :set filetype:python<CR>


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
" fzf
Plug 'junegunn/fzf'
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
" matchup
Plug 'andymass/vim-matchup'
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
" vim-blade
Plug 'jwalton512/vim-blade'
" autoreload-browser
Plug 'lordm/vim-browser-reload-linux'
" repeat . vim
Plug 'tpope/vim-repeat'
" undotree
Plug 'mbbill/undotree'
" multiple cursor
Plug 'terryma/vim-multiple-cursors'

" initialize plugin system
call plug#end()


"""""""""""""""""""""""""""""""""
"	plugins conf		"
"""""""""""""""""""""""""""""""""

" nerdtree configuration
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1
let NERDTreeAutoDeleteBuffer=1
nnoremap <Leader>n :NERDTreeToggle<Enter>
nnoremap <Leader>f :NERDTreeFind<cr>
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists(“s:std_in”) | NERDTree | endif
"autocmd bufenter * if (winnr(“$”) == 1 && exists(“b:NERDTreeType”) && b:NERDTreeType == “primary”) | q | endif

" nerdtreecommenter
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1

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
"
" Vim
"let g:indentLine_color_term = 0
"
" GVim
"let g:indentLine_color_gui = '#A4E57E'
" none X terminal
"let g:indentLine_color_tty_light = 7 " (default: 4)
"let g:indentLine_color_dark = 1 " (default: 2)
"
" Background (Vim, GVim)
"let g:indentLine_bgcolor_term = 202
"let g:indentLine_bgcolor_gui = '#FF5F00'
" indentline will overwrite your conceal cursor and conceallevel with default
"
" value
let g:indentLine_concealcursor = 'inc'
let g:indentLine_conceallevel = 2
"
" vim-blade
" Define some single Blade directives. This variable is used for highlighting only.
let g:blade_custom_directives = ['datetime', 'javascript']
"
" Define pairs of Blade directives. This variable is used for highlighting and indentation.
let g:blade_custom_directives_pairs = {
			\   'markdown': 'endmarkdown',
			\   'cache': 'endcache',
			\   'php': 'endphp',
			\   'section': 'endsection',
			\   'if': 'endif',
			\ }
" autoreload
nnoremap <F10> :ChromeReload<CR>

" FZF
nnoremap <silent> <C-p> :FZF<CR>
inoremap <silent> <C-p> :FZF<CR>
" " cscope
" function! Cscope(option, query)
"   let color = '{ x = $1; $1 = ""; z = $3; $3 = ""; printf "\033[34m%s\033[0m:\033[31m%s\033[0m\011\033[37m%s\033[0m\n", x,z,$0; }'
"   let opts = {
"   \ 'source':  "cscope -dL" . a:option . " " . a:query . " | awk '" . color . "'",
"   \ 'options': ['--ansi', '--prompt', '> ',
"   \             '--multi', '--bind', 'alt-a:select-all,alt-d:deselect-all',
"   \             '--color', 'fg:188,fg+:222,bg+:#3a3a3a,hl+:104'],
"   \ 'down': '40%'
"   \ }
"   function! opts.sink(lines)
"     let data = split(a:lines)
"     let file = split(data[0], ":")
"     execute 'e ' . '+' . file[1] . ' ' . file[0]
"   endfunction
"   call fzf#run(opts)
" endfunction
"
" " Invoke command. 'g' is for call graph, kinda.
" " nnoremap <silent> <Leader>g :call Cscope('3', expand('<cword>'))<CR>
" nnoremap <silent> <C-p> :call Cscope('3', expand('<cword>'))<CR>

" repeat . vim
silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)

" matchup
let g:loaded_matchit = 1
" hi MatchParen cterm=bold ctermbg=none ctermfg=magenta
" hi MatchParen cterm=none ctermbg=green ctermfg=blue
" autocmd BufRead,BufNewFile * syn match parens /[(){}]/ | hi parens ctermfg=red
" augroup vimrc
"     autocmd!
"     autocmd ColorScheme * highlight Normal ctermbg=NONE guifg=lightgrey guibg=black | highlight MatchParen cterm=bold ctermfg=red ctermbg=NONE gui=bold guifg=red guibg=NONE
" augroup END

" undotree
nnoremap <F2> :UndotreeToggle<cr>
" if has("persistent_undo")
"     set undodir=$HOME."/.undotreedir"
"     set undofile
" endif

"multiple cursor
let g:multi_cursor_use_default_mapping=0
" Default mapping
let g:multi_cursor_start_word_key      = '<C-n>'
let g:multi_cursor_select_all_word_key = '<A-n>'
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'
