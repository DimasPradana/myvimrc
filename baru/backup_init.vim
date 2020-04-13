"	general			"
"""""""""""""""""""""""""""""""""
" ambil dari source lain
" source ~/.config/nvim/custom/test.vim
source ~/.config/nvim/basic.vim
source ~/.config/nvim/mapping.vim


let mapleader = '\'
" remove trailing space on save
" autocmd BufWritePre * %s/\s\+$//e

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
if has('nvim')
	Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
	Plug 'kristijanhusak/defx-icons'
else
	Plug 'Shougo/defx.nvim'
	Plug 'roxma/nvim-yarp'
	Plug 'roxma/vim-hug-neovim-rpc'
	Plug 'kristijanhusak/defx-icons'
endif
" nerd commenter
Plug 'scrooloose/nerdcommenter'
" challenger deep
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
" emmet
Plug 'mattn/emmet-vim'
" coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" tcomment
Plug 'tomtom/tcomment_vim'

" initialize plugin system
call plug#end()



"""""""""""""""""""""""""""""""""
"	plugins conf		"
"""""""""""""""""""""""""""""""""

" DEFX
autocmd FileType defx call s:defx_my_settings()
function! s:defx_my_settings() abort
	" Define mappings
	nnoremap <silent><buffer><expr> <CR> defx#do_action('drop')
	nnoremap <silent><buffer><expr> c
				\ defx#do_action('copy')
	nnoremap <silent><buffer><expr> m
				\ defx#do_action('move')
	nnoremap <silent><buffer><expr> p
				\ defx#do_action('paste')
	nnoremap <silent><buffer><expr> l
				\ defx#do_action('open')
	nnoremap <silent><buffer><expr> E
				\ defx#do_action('open', 'vsplit')
	nnoremap <silent><buffer><expr> P
				\ defx#do_action('open', 'pedit')
	nnoremap <silent><buffer><expr> o
				\ defx#do_action('open_or_close_tree')
	nnoremap <silent><buffer><expr> K
				\ defx#do_action('new_directory')
	nnoremap <silent><buffer><expr> N
				\ defx#do_action('new_file')
	nnoremap <silent><buffer><expr> M
				\ defx#do_action('new_multiple_files')
	nnoremap <silent><buffer><expr> C
				\ defx#do_action('toggle_columns',
				\                'mark:indent:icon:filename:type:size:time')
	nnoremap <silent><buffer><expr> S
				\ defx#do_action('toggle_sort', 'time')
	nnoremap <silent><buffer><expr> d
				\ defx#do_action('remove')
	nnoremap <silent><buffer><expr> r
				\ defx#do_action('rename')
	nnoremap <silent><buffer><expr> !
				\ defx#do_action('execute_command')
	nnoremap <silent><buffer><expr> x
				\ defx#do_action('execute_system')
	nnoremap <silent><buffer><expr> yy
				\ defx#do_action('yank_path')
	nnoremap <silent><buffer><expr> .
				\ defx#do_action('toggle_ignored_files')
	nnoremap <silent><buffer><expr> ;
				\ defx#do_action('repeat')
	nnoremap <silent><buffer><expr> h
				\ defx#do_action('cd', ['..'])
	nnoremap <silent><buffer><expr> ~
				\ defx#do_action('cd')
	nnoremap <silent><buffer><expr> q
				\ defx#do_action('quit')
	nnoremap <silent><buffer><expr> <Space>
				\ defx#do_action('toggle_select') . 'j'
	nnoremap <silent><buffer><expr> *
				\ defx#do_action('toggle_select_all')
	nnoremap <silent><buffer><expr> j
				\ line('.') == line('$') ? 'gg' : 'j'
	nnoremap <silent><buffer><expr> k
				\ line('.') == 1 ? 'G' : 'k'
	nnoremap <silent><buffer><expr> <C-l>
				\ defx#do_action('redraw')
	nnoremap <silent><buffer><expr> <C-g>
				\ defx#do_action('print')
	nnoremap <silent><buffer><expr> cd
				\ defx#do_action('change_vim_cwd')
endfunction
" Set appearance
call defx#custom#option('_', {
			\ 'winwidth': 30,
			\ 'split': 'vertical',
			\ 'direction': 'topleft',
			\ 'show_ignored_files': 1,
			\ 'buffer_name': 'defxplorer',
			\ 'toggle': 1,
			\ 'resume': 1,
			\ })
" Set appearance icon
call defx#custom#option('_', {
			\ 'winwidth': 30,
			\ 'split': 'vertical',
			\ 'direction': 'topleft',
			\ 'show_ignored_files': 1,
			\ 'buffer_name': 'defxplorer',
			\ 'toggle': 1,
			\ 'columns': 'icons:filename',
			\ 'resume': 1,
			\ })
" Set appearance
call defx#custom#column('icon', {
			\ 'directory_icon': '▸',
			\ 'opened_icon': '▾',
			\ })
" Set appearance
call defx#custom#option('_', {
			\ 'winwidth': 30,
			\ 'split': 'vertical',
			\ 'direction': 'topleft',
			\ 'show_ignored_files': 1,
			\ 'buffer_name': 'defxplorer',
			\ 'toggle': 1,
			\ 'columns': 'icon:indent:icons:filename',
			\ 'resume': 1,
			\ })

" coc
" let g:coc_node_args = ['--nolazy', '--inspect-brk=6045']
let $NVIM_COC_LOG_LEVEL = 'debug'
" let g:coc_global_extensions = [
" 			\ 'coc-emmet',
" 			\ 'coc-pairs',
" 			\ 'coc-snippets',
" 			\ 'coc-sql',
" 			\ 'coc-gopls',
" 			\ 'coc-css',
" 			\ 'coc-html',
" 			\ 'coc-json',
" 			\ 'coc-phpls',
" 			\ 'coc-vimlsp'
" 			\ ]
let g:coc_global_extensions = [
			\ 'coc-tabnine',
			\ 'coc-emmet',
			\ 'coc-pairs',
			\ 'coc-snippets',
			\ 'coc-sql',
			\ 'coc-gopls',
			\ 'coc-css',
			\ 'coc-html',
			\ 'coc-json',
			\ 'coc-phpls',
			\ 'coc-vimlsp'
			\ ]
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
autocmd CursorHold * silent call CocActionAsync('highlight')
autocmd BufWritePre *.go :call CocAction('runCommand', 'editor.action.organizeImport')

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

let g:coc_snippet_next = '<tab>'
