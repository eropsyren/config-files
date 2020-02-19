" Set relative line number
:set relativenumber

" Set absolute line number
:set number

" Turn on color syntax
:syntax on

" Set tabs to four spaces
:set ts=4 sw=4

" Autotabs for certain code
:set smarttab

" PLUGINS
call plug#begin()

Plug 'mattn/emmet-vim'

call plug#end()


" emmet config
letg:user_emmet_leader_key=','
