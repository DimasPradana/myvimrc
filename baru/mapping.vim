" escape key
inoremap jk <Esc>
vnoremap jk <Esc>

" tagbar
nmap <F8> :TagbarToggle<CR>
imap <F8> :TagbarToggle<CR>
vmap <F8> :TagbarToggle<CR>

"defx
" nnoremap <leader>n :Defx<CR>
"
" insert date using F5
:nnoremap <F5> "=strftime("%c")<CR>P
:inoremap <F5> <C-R>=strftime("%c")<CR>

" run python from buffer

:nnoremap <buffer> <F9> :exec '!python3' shellescape(@%, 1)<cr>
" if (&filetype == 'PYTHON')
"     :nnoremap <buffer> <F9> :exec '!python3' shellescape(@%, 1)<cr>
" elseif (&filetype == 'GO')
"     " :nnoremap <buffer> <F9> :GoRun <cr>
"     :nnoremap <buffer> <F9> :echo "ini file g-->o" <cr>
" endif
" :nnoremap <buffer> <F9> :exec '!source env/bin/activate && python3' shellescape(@%, 1)<cr>

" statusline
"set statusline+=%y      "filetype

" insert newline above or below without insert mode
" nmap <C-k> O<Esc>j
" nmap <C-j> o<Esc>k"

" move line using shift + up / down
" nnoremap <S-Up> :m-2<CR>
" nnoremap <S-Down> :m+<CR>
" inoremap <S-Up> <Esc>:m-2<CR>
" inoremap <S-Down> <Esc>:m+<CR>
" zoom in/out windows
noremap Zz <c-w>_ \| <c-w>\|
noremap Zo <c-w>=

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
nnoremap <leader><leader>g :set filetype:go<CR>

" FZF
" nnoremap <silent> <C-p> :FZF<CR>
" vnoremap <silent> <C-p> :FZF<CR>
" inoremap <silent> <C-p> :FZF<CR>
nnoremap fzf :FZF<CR>
inoremap fzf :FZF<CR>
vnoremap fzf :FZF<CR>

"coc
" inoremap <silent><expr> <c-space> coc#refresh()
" nnoremap <silent> K :call <SID>show_documentation()<CR>
" " Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" " position. Coc only does snippet and additional edit on confirm.
" if has('patch8.1.1068')
"   " Use `complete_info` if your (Neo)Vim version supports it.
"   inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
" else
"   imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" endif
"
" " Use `[g` and `]g` to navigate diagnostics
" nmap <silent> [g <Plug>(coc-diagnostic-prev)
" nmap <silent> ]g <Plug>(coc-diagnostic-next)
"
" " GoTo code navigation.
" nmap <silent> gd <Plug>(coc-definition)
" nmap <silent> gy <Plug>(coc-type-definition)
" nmap <silent> gi <Plug>(coc-implementation)
" nmap <silent> gr <Plug>(coc-references)
"
" " snippets
" " Use <C-l> for trigger snippet expand.
" imap <C-l> <Plug>(coc-snippets-expand)
"
" " Use <C-j> for select text for visual placeholder of snippet.
" vmap <C-j> <Plug>(coc-snippets-select)
"
" " Use <C-j> for jump to next placeholder, it's default of coc.nvim
" let g:coc_snippet_next = '<c-j>'
"
" " Use <C-k> for jump to previous placeholder, it's default of coc.nvim
" let g:coc_snippet_prev = '<c-k>'
"
" " Use <C-j> for both expand and jump (make expand higher priority.)
" imap <C-j> <Plug>(coc-snippets-expand-jump)

" simpan file dengan akses root memakai :sw
" command sw :execute ':silent w !sudo tee % > /dev/null' | :edit!
