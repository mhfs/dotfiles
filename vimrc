" MHFS VIM Settings
" Meant to be used as vimrc.local on top of Janus (github.com/carlhuda/janus)

" set encoding
set encoding=utf-8

" make invisibles visible
set list
set listchars=tab:▸\ ,eol:¬,trail:.

" colors
colorscheme desert

" remap command from : to ; avoiding shifts
" nnoremap ; :

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :tabedit $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" Enhanced command line completion.
set wildmenu

set showmatch                     " Show matches for braces, parens, etc.

set scrolloff=2                   " Show 2 lines of context around the cursor.

set visualbell                    " No beeping.
set noerrorbells                  " don't beep

set nobackup                      " Don't make a backup before overwriting a file.
set nowritebackup                 " And again.
set noswapfile

let g:git_branch_status_head_current=1   " Git Info - just current branch

" Tab mappings.
"map <leader>tt :tabnew<cr>
"map <leader>te :tabedit
"map <leader>tc :tabclose<cr>
"map <leader>to :tabonly<cr>
"map <leader>tn :tabnext<cr>
"map <leader>tp :tabprevious<cr>
"map <leader>tf :tabfirst<cr>
"map <leader>tl :tablast<cr>
"map <leader>tm :tabmove

" Textmate like identation shortcuts
"nmap <D-[> <<
"nmap <D-]> >>
"vmap <D-[> <gv
"vmap <D-]> >gv

" Tab navigation trough Cmd-N
map <D-1> 1gt
map <D-2> 2gt
map <D-3> 3gt
map <D-4> 4gt
map <D-5> 5gt
map <D-6> 6gt
map <D-7> 7gt
map <D-8> 8gt
map <D-9> 9gt
map <D-0> :tablast<CR>

imap <D-1> <esc>1gt
imap <D-2> <esc>2gt
imap <D-3> <esc>3gt
imap <D-4> <esc>4gt
imap <D-5> <esc>5gt
imap <D-6> <esc>6gt
imap <D-7> <esc>7gt
imap <D-8> <esc>8gt
imap <D-9> <esc>9gt
imap <D-0> <esc>:tablast<CR>

" Turn Spell On
set spell
set spelllang=en_us                           " when I want spell-checking, I want it to be english
nmap <silent> <leader>s :set spell!<CR>

" We don't want to use arrows ..
"map <up> <nop>
"map <down> <nop>
"map <left> <nop>
"map <right> <nop>

autocmd BufRead,BufNewFile *.prawn set filetype=ruby
autocmd BufRead,BufNewFile *.thor set filetype=ruby
autocmd BufRead,BufNewFile *.ru set filetype=ruby
autocmd BufRead,BufNewFile Gemfile set filetype=ruby
autocmd BufRead,BufNewFile Capfile set filetype=ruby
autocmd BufRead,BufNewFile *.tt set filetype=eruby

" set foldmethod=syntax            " set folding method

let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'      " Pointing TagList to the correct ctags binary (brew)

" Strip trailing whitespace
function! <SID>StripTrailingWhitespaces()
        " Preparation: save last search, and cursor position.
        let _s=@/
        let l = line(".")
        let c = col(".")
        " Do the business:
        %s/\s\+$//e
        " Clean up: restore previous search history, and cursor position
        let @/=_s
        call cursor(l, c)
endfunction
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

