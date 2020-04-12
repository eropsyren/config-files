" -----------------------------------------------------------------------------

" BASIC SETUP:

" enter the current millenium
set nocompatible

" enable syntax highlighting and plugins (for netrw)
syntax enable
filetype plugin on

" you can enable this to see a highlighted column to mark 80 char line limit
" :set colorcolumn=80

" set relative line number
set relativenumber

" set absolute line number
set number

" when you hit tab, vim will use 4 spaces 
" while indenting, vim will use 4 spaces
set tabstop=4 shiftwidth=4 expandtab

" replace tabs with spaces
set smarttab

" autotabs for certain code
set autoindent

" set autosave update time to 1s
set updatetime=1000

" autosave after updatetime time of user inactivity
augroup autosave
autocmd!
autocmd CursorHold,CursorHoldI * :update 
augroup END

" -----------------------------------------------------------------------------

" MAPPINGS:

" set leader key to space
let mapleader=" "

" you can also set the local leader (in this case to ,)
" :let maplocalleader=","

" for the sake of all of us, no arrow keys
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>

" easier split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" map to quick edit ~/.vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

" map to source vim file
nnoremap <leader>sv :source $MYVIMRC<cr>

" -----------------------------------------------------------------------------

" BETTER LATEX:

augroup betterlatex
autocmd!
autocmd FileType plaintex,tex nnoremap <buffer> <leader>eq :-1read $HOME/.vim/snippets/latex/equation.tex<cr>o
autocmd FileType plaintex,tex nnoremap <buffer> <leader>ae :-1read $HOME/.vim/snippets/latex/align.tex<cr>o
autocmd FileType plaintex,tex nnoremap <buffer> <leader>al :-1read $HOME/.vim/snippets/latex/algorithm.tex<cr>
autocmd FileType plaintex,tex nnoremap <buffer> <leader>ch :-1read $HOME/.vim/snippets/latex/chapter.tex<cr>f{a
autocmd FileType plaintex,tex nnoremap <buffer> <leader>se :-1read $HOME/.vim/snippets/latex/section.tex<cr>f{a
autocmd FileType plaintex,tex nnoremap <buffer> <leader>ss :-1read $HOME/.vim/snippets/latex/subsection.tex<cr>f{a
autocmd FileType plaintex,tex nnoremap <buffer> <leader>be :-1read $HOME/.vim/snippets/latex/begin-end.tex<cr>f{a
augroup END

" -----------------------------------------------------------------------------

" BETTER C:

augroup betterc
autocmd!
autocmd FileType c,cpp set path+=/usr/local/include,/usr/include

autocmd FileType c,cpp inoremap <buffer> {<cr> {<cr>}<esc>O<tab>
autocmd FileType c,cpp inoremap <buffer> (     ()<esc>i
autocmd FileType c,cpp inoremap <buffer> ()    ()
autocmd FileType c,cpp inoremap <buffer> [     []<esc>i
autocmd FileType c,cpp inoremap <buffer> []    []
autocmd FileType c,cpp inoremap <buffer> "     ""<esc>i
autocmd FileType c,cpp inoremap <buffer> ""    ""
autocmd FileType c,cpp inoremap <buffer> '     ''<esc>i

autocmd FileType c,cpp nnoremap <buffer> <leader>for :-1read $HOME/.vim/snippets/c/for.c<cr>=j/S<cr>xi
autocmd FileTYpe c,cpp nnoremap <buffer> <leader>if  :-1read $HOME/.vim/snippets/c/if.c<cr>=jf(a
autocmd FileTYpe c,cpp nnoremap <buffer> <leader>ie  :-1read $HOME/.vim/snippets/c/if-else.c<cr>=2jf(a
autocmd FileTYpe c,cpp nnoremap <buffer> <leader>in  :-1read $HOME/.vim/snippets/c/include.c<cr>f<a
autocmd FileTYpe c,cpp nnoremap <buffer> <leader>wh  :-1read $HOME/.vim/snippets/c/while.c<cr>=jf(a
autocmd FileTYpe c,cpp nnoremap <buffer> <leader>st  :-1read $HOME/.vim/snippets/c/struct.c<cr>:s/MyStruct//g
autocmd FileTYpe c,cpp nnoremap <buffer> <leader>so  :-1read $HOME/.vim/snippets/c/opaque-struct.c<cr>:s/MyStruct//g
augroup END

" -----------------------------------------------------------------------------

" ABBREVIATIONS:

" you can use abbreviations to correct typos you commonly make
" :inoreabbrev adn and

" -----------------------------------------------------------------------------

" FINDING FILES:

" search down into subfolders
set path=**

" display all matching files when we tab complete
set wildmenu

" NOW WE CAN:
" - hit tab to :find by partial match
" - use *   to make it fuzzy
" - use :b  to autocomplete any open buffer

" -----------------------------------------------------------------------------

" TAG JUMPING:

" create the tags file (may need to install ctags first)
command! MakeTags !ctags -R

" NOW WE CAN:
" - use ^]  to jump tag under cursor
" - use g^] for ambiguous tags
" - use ^t  to jump back up the tag stack

" -----------------------------------------------------------------------------

" AUTOCOMPLETE:

" documented in |ins-completion|

" NOW WE CAN:
" - ^x^n for just this file
" - ^x^f for filenames (works with path trick)
" - ^x^] for tags only
" - ^n   for anything specified by the 'complete' option
" - ^n   to go forth in the suggestion list
" - ^p   to go back in the suggestion list

" -----------------------------------------------------------------------------

" FILE BROWSER:

" disable banner
let g:netrw_banner=0
" enable tree mode
let g:liststyle=3
" set file explorer split size
let g:netrw_winsize=15
" open in prior window
let g:netrw_browse_split=4	
" open splits to the right
let g:netrw_altv=1			

" NOW WE CAN:
" - :edit    a folder to open a file browser
" - <CR>/v/t to open a h-split/v-split/tab
" - check |netrw-browse-maps| for more mappings

" -----------------------------------------------------------------------------

" BUILD INTEGRATION:

" configure the make command to run your build command
" set makeprg=bundle\ exec\ rspec\ -f\ QuickFixFormatter

" NOW WE CAN:
" :make to run our custom build command
" :cl	to list errors
" :cc#	to jump to error by number
" :cn 	to navigate forward
" :cp	to navigate backwards

" -----------------------------------------------------------------------------

