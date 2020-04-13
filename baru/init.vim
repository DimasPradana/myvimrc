"	general			"
"""""""""""""""""""""""""""""""""
" ambil dari source lain
" source ~/.config/nvim/custom/test.vim
source ~/.config/nvim/basic.vim
source ~/.config/nvim/mapping.vim
source ~/.config/nvim/statusline.vim

" remap leader vim
let mapleader = '\'

" remove trailing space on save
autocmd BufWritePre * %s/\s\+$//e

"""""""""""""""""""""""""""""""""
"	vim-plug		"
"""""""""""""""""""""""""""""""""

" Dimas using vim-plug
" - avoid using standart vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" surround
Plug 'tpope/vim-surround'
" easymotion
Plug 'easymotion/vim-easymotion'
" fzf
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" defx penggati nerdtree
"if has('nvim')
	"Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
	"Plug 'kristijanhusak/defx-icons'
"else
	"Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
	"Plug 'roxma/nvim-yarp'
	"Plug 'roxma/vim-hug-neovim-rpc'
	"Plug 'kristijanhusak/defx-icons'
"endif
" nerd commenter
"Plug 'scrooloose/nerdcommenter'
" challenger deep
" Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
Plug 'ayu-theme/ayu-vim'
" emmet
Plug 'mattn/emmet-vim'
" coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" deoplete
" if has('nvim')
"   Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" else
"   Plug 'Shougo/deoplete.nvim'
"   Plug 'roxma/nvim-yarp'
"   Plug 'roxma/vim-hug-neovim-rpc'
" endif
" tcomment
Plug 'tomtom/tcomment_vim'
" tagbar
Plug 'majutsushi/tagbar'
" tabular
Plug 'godlygeek/tabular'
" indentline
Plug 'Yggdroot/indentLine'


" initialize plugin system
call plug#end()


"""""""""""""""""""""""""""""""""
"	plugins conf		"
"""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""
"	DEFX						"
"""""""""""""""""""""""""""""""""
"autocmd FileType defx call s:defx_my_settings() abort
"function! s:defx_my_settings() abort
	"" Define mappings
	"nnoremap <silent><buffer><expr> <CR> defx#do_action('drop')
	"nnoremap <silent><buffer><expr> c
				"\ defx#do_action('copy')
	"nnoremap <silent><buffer><expr> m
				"\ defx#do_action('move')
	"nnoremap <silent><buffer><expr> p
				"\ defx#do_action('paste')
	"nnoremap <silent><buffer><expr> l
				"\ defx#do_action('open')
	"nnoremap <silent><buffer><expr> E
				"\ defx#do_action('open', 'vsplit')
	"nnoremap <silent><buffer><expr> P
				"\ defx#do_action('open', 'pedit')
	"nnoremap <silent><buffer><expr> o
				"\ defx#do_action('open_or_close_tree')
	"nnoremap <silent><buffer><expr> K
				"\ defx#do_action('new_directory')
	"nnoremap <silent><buffer><expr> N
				"\ defx#do_action('new_file')
	"nnoremap <silent><buffer><expr> M
				"\ defx#do_action('new_multiple_files')
	"nnoremap <silent><buffer><expr> C
				"\ defx#do_action('toggle_columns',
				"\                'mark:indent:icon:filename:type:size:time')
	"nnoremap <silent><buffer><expr> S
				"\ defx#do_action('toggle_sort', 'time')
	"nnoremap <silent><buffer><expr> d
				"\ defx#do_action('remove')
	"nnoremap <silent><buffer><expr> r
				"\ defx#do_action('rename')
	"nnoremap <silent><buffer><expr> !
				"\ defx#do_action('execute_command')
	"nnoremap <silent><buffer><expr> x
				"\ defx#do_action('execute_system')
	"nnoremap <silent><buffer><expr> yy
				"\ defx#do_action('yank_path')
	"nnoremap <silent><buffer><expr> .
				"\ defx#do_action('toggle_ignored_files')
	"nnoremap <silent><buffer><expr> ;
				"\ defx#do_action('repeat')
	"nnoremap <silent><buffer><expr> h
				"\ defx#do_action('cd', ['..'])
	"nnoremap <silent><buffer><expr> ~
				"\ defx#do_action('cd')
	"nnoremap <silent><buffer><expr> q
				"\ defx#do_action('quit')
	"nnoremap <silent><buffer><expr> <Space>
				"\ defx#do_action('toggle_select') . 'j'
	"nnoremap <silent><buffer><expr> *
				"\ defx#do_action('toggle_select_all')
	"nnoremap <silent><buffer><expr> j
				"\ line('.') == line('$') ? 'gg' : 'j'
	"nnoremap <silent><buffer><expr> k
				"\ line('.') == 1 ? 'G' : 'k'
	"nnoremap <silent><buffer><expr> <C-l>
				"\ defx#do_action('redraw')
	"nnoremap <silent><buffer><expr> <C-g>
				"\ defx#do_action('print')
	"nnoremap <silent><buffer><expr> cd
				"\ defx#do_action('change_vim_cwd')
"endfunction

" Set appearance
"call defx#custom#option('_', {
			"\ 'winwidth': 30,
			"\ 'split': 'vertical',
			"\ 'direction': 'topleft',
			"\ 'show_ignored_files': 1,
			"\ 'buffer_name': 'defxplorer',
			"\ 'toggle': 1,
			"\ 'resume': 1,
			"\ })
" Set appearance icon
"call defx#custom#option('_', {
			"\ 'winwidth': 30,
			"\ 'split': 'vertical',
			"\ 'direction': 'topleft',
			"\ 'show_ignored_files': 1,
			"\ 'buffer_name': 'defxplorer',
			"\ 'toggle': 1,
			"\ 'columns': 'icons:filename',
			"\ 'resume': 1,
			"\ })
" Set appearance
"call defx#custom#column('icon', {
			"\ 'directory_icon': '▸',
			"\ 'opened_icon': '▾',
			"\ })
" Set appearance
"call defx#custom#option('_', {
			"\ 'winwidth': 30,
			"\ 'split': 'vertical',
			"\ 'direction': 'topleft',
			"\ 'show_ignored_files': 1,
			"\ 'buffer_name': 'defxplorer',
			"\ 'toggle': 1,
			"\ 'columns': 'icon:indent:icons:filename',
			"\ 'resume': 1,
			"\ })

"""""""""""""""""""""""""""""""""
"	COC							"
"""""""""""""""""""""""""""""""""
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" snippets
inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

function! StatusDiagnostic() abort
  let info = get(b:, 'coc_diagnostic_info', {})
  if empty(info) | return '' | endif
  let msgs = []
  if get(info, 'error', 0)
    call add(msgs, 'E' . info['error'])
  endif
  if get(info, 'warning', 0)
    call add(msgs, 'W' . info['warning'])
  endif
  return join(msgs, ' '). ' ' . get(g:, 'coc_status', '')
endfunction

function! StatusDiagnostic() abort
	let info = get(b:, 'coc_diagnostic_info', {})
	if empty(info) | return '' | endif
	let msgs = []
	if get(info, 'error', 0)
	call add(msgs, 'E' . info['error'])
	endif
	if get(info, 'warning', 0)
	call add(msgs, 'W' . info['warning'])
	endif
	return join(msgs, ' ') . ' ' . get(g:, 'coc_status', '')
endfunction

let g:coc_snippet_next = '<tab>'
" autoformat code and add missing import on golang
autocmd BufWritePre *.go :call CocAction('runCommand', 'editor.action.organizeImport')


"""""""""""""""""""""""""""""""""
"	DEOPLETE					"
"""""""""""""""""""""""""""""""""
" let g:deoplete#enable_at_startup = 1


"""""""""""""""""""""""""""""""""
"	INDENTLINE					"
"""""""""""""""""""""""""""""""""
" Vim
" let g:indentLine_color_term = 239
"
" " GVim
" let g:indentLine_color_gui = '#A4E57E'
"
" " none X terminal
" let g:indentLine_color_tty_light = 7 " (default: 4)
" let g:indentLine_color_dark = 2 " (default: 2)
"
" " Background (Vim, GVim)
" let g:indentLine_bgcolor_term = 202
" let g:indentLine_bgcolor_gui = '#FF5F00'
" let g:indentLine_char = 'c'
" let g:indentLine_char_list = ['|', '¦', '┆', '┊']

" IndentLine {{
" let g:indentLine_char = ''
let g:indentLine_char = '┊'
" let g:indentLine_first_char = ''
let g:indentLine_first_char = '┊'
let g:indentLine_showFirstIndentLevel = 1
let g:indentLine_setColors = 1
" let g:indentLine_color_term = 10
" let g:indentLine_char = '┊'
" let g:indentLine_fileTypeExclude = [
" 	\ '', 'markdown', 'json', 'conf', 'org']
let g:indentLine_leadingSpaceEnabled = 0
let g:indentLine_leadingSpaceChar = '-'

" }}
"
"""""""""""""""""""""""""""""""""
"	AYU theme					"
"""""""""""""""""""""""""""""""""
set termguicolors     " enable true colors support
let ayucolor="light"  " for light version of theme
let ayucolor="mirage" " for mirage version of theme
let ayucolor="dark"   " for dark version of theme
