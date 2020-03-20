" -----------------------------------------------------------------------------

" BASIC SETUP:

" enter the current millenium
set nocompatible

" enable syntax highlighting and plugins (for netrw)
syntax enable
filetype plugin on

" you can enable this to see a highlighted column to mark 80 char line limit
" :set colorcolumn=80

" set leader key to space
:let mapleader=" "

" you can also set the local leader (in this case to ,)
" :let maplocalleader=","

" set relative line number
set relativenumber

" set absolute line number
set number

" when you hit tab, vim will use 4 spaces 
" while indenting, vim will use 4 spaces
set tabstop=4 shiftwidth=4 expandtab

" autotabs for certain code
set smarttab

" -----------------------------------------------------------------------------

" MAPPINGS:

" for the sake of all of us, no arrow keys
:noremap <up> <nop>
:noremap <down> <nop>
:noremap <left> <nop>
:noremap <right> <nop>

" map to quick edit ~/.vimrc
:nnoremap <leader>ev :vsplit $MYVIMRC<cr>

" map to source vim file
:nnoremap <leader>sv :source $MYVIMRC<cr>

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

" FILE BROWSING:

" tweaks
let g:netrw_banner=0		" disable banner
let g:netrw_browse_split=4	" open in prior window
let g:netrw_altv=1			" open splits to the right

" NOW WE CAN:
" - :edit    a folder to open a file browser
" - <CR>/v/t to open a h-split/v-split/tab
" - check |netrw-browse-maps| for more mappings

" -----------------------------------------------------------------------------

" NIPPETS:

" read an empty html template and move cursor to title
" nnoremap ,html :-1read $HOME/.vim/.snippets/.html/body.html<CR>3jwf>a

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

