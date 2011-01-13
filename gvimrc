" MHFS VIM Settings
" Meant to be used as gvimrc.local on top of Janus (github.com/carlhuda/janus)
"
set guifont=Monaco:h12.00         " Font family and font size.
set antialias                     " MacVim: smooth fonts.
set encoding=utf-8                " Use UTF-8 everywhere.

" Hide all scrollbars
set guioptions-=L
set guioptions-=l
set guioptions-=r
set guioptions-=R
set gcr=n:blinkon0                " stop blinking

iunmenu File.Save
imenu <silent> File.Save <Esc>:if expand("%") == ""<Bar>browse confirm w<Bar>else<Bar>confirm w<Bar>endif<CR>

" Matp CMD-T to peepopen a la textmate
" map <D-t> <Plug>PeepOpen

color mhfs
