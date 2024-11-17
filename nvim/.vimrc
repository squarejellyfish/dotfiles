syntax on
set number
set relativenumber
set cursorline
set shiftwidth=4
set tabstop=4
set expandtab
set scrolloff=8

set bg=dark
hi clear CursorLine
hi link CursorLine CursorColumn

filetype indent on

inoremap jk <Esc>
inoremap ( ()<Esc>i
inoremap { {}<Esc>i
inoremap " ""<Esc>i
inoremap [ []<Esc>i

color slate
