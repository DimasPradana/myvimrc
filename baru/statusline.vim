""""""""""""
" pertama bagus 1 "
""""""""""""
"set statusline=%t       "tail of the filename
"set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
"set statusline+=%{&ff}] "file format
"set statusline+=%h      "help file flag
"set statusline+=%m      "modified flag
"set statusline+=%r      "read only flag
"set statusline+=%y      "filetype
"set statusline+=%=      "left/right separator
"set statusline+=%c,     "cursor column
"set statusline+=%l/%L   "cursor line/total lines
"set statusline+=\ %P    "percent through file

"""""""""""""
" kedua using color		"
"""""""""""""
"set statusline=
"set statusline+=%#todo#  "switch to todo highlight
"set statusline+=%F       "full filename
"set statusline+=%#error# "switch to error highlight
"set statusline+=%y       "filetype
"set statusline+=%*       "switch back to normal statusline highlight
"set statusline+=%l       "line number

"""""""""""""
" ketiga using color		"
"""""""""""""
"define 3 custom highlight groups
"hi User1 ctermbg=green ctermfg=red   guibg=green guifg=red
"hi User2 ctermbg=red   ctermfg=blue  guibg=red   guifg=blue
"hi User3 ctermbg=blue  ctermfg=green guibg=blue  guifg=green

"set statusline=
"set statusline+=%1*  "switch to User1 highlight
"set statusline+=%F   "full filename
"set statusline+=%2*  "switch to User2 highlight
"set statusline+=%y   "filetype
"set statusline+=%3*  "switch to User3 highlight
"set statusline+=%l   "line number
"set statusline+=%*   "switch back to statusline highlight
"set statusline+=%P   "percentage thru file

""""""""""""
" keempat bagus 2"
"""""""""""""
"set statusline=
"set statusline+=%<\                       " cut at start
"set statusline+=%2*[%n%H%M%R%W]%*\        " flags and buf no
"set statusline+=%-40f\                    " path
"set statusline+=%=%1*%y%*%*\              " file type
"set statusline+=%10((%l,%c)%)\            " line and column
"set statusline+=%P                        " percentage of file

"""""""""""""
" kelima  bagus 3"
"""""""""""""
set statusline=                                                       " clear the statusline for when vimrc is reloaded
set statusline+=%-3.3n\                                               " buffer number
set statusline+=%f\                                                   " file name
set statusline+=%h%m%r%w                                              " flags
set statusline+=[%{strlen(&ft)?&ft:'none'},                           " filetype
set statusline+=%{strlen(&fenc)?&fenc:&enc},                          " encoding
set statusline+=%{&fileformat}]                                       " file format
set statusline+=%=                                                    " right align
set statusline+=%{synIDattr(synID(line('.'),col('.'),1),'name')}\     " highlight
set statusline+=%b,0x%-8B\                                            " current char
set statusline+=%-14.(%l,%c%V%)\ %<%P                                 " offset
" set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}             " coc-status
" set statusline^=%{StatusDiagnostic()}        " coc-StatusDiagnostic
