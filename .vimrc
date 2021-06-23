" template from github.com/tomnomnom/dotfiles
" Vundle
filetype off

let g:vundle_default_git_proto = 'git'
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Bundles
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'sjl/gundo.vim'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'altercation/vim-colors-solarized'
Plugin 'TomNomNom/xoria256.vim'

call vundle#end()

" No error Sound
set noerrorbells
set novisualbell

" History
set history=50

" Display
set ls=2
set showmode
set showcmd
set modeline
set ruler
set title
set nu
set number

" Line wrapping
set nowrap
set linebreak
set showbreak=▹

" Auto in\dent what you can
set autoindent

" Searching
set ignorecase
set smartcase
set gdefault
set hlsearch
set showmatch

" Enable jumping into files in a search buffer
set hidden 

" Make backspace a bit nicer
set backspace=eol,start,indent

" Indentation
set shiftwidth=4
set tabstop=4
set softtabstop=4
set shiftround
set expandtab

" Disable mouse
set mouse=

" Colorscheme
if &t_Co == 256
    try
        color xoria256
    catch /^Vim\%((\a\+)\)\=:E185/
        " Oh well
    endtry
endif

" https://www.techrepublic.com/blog/linux-and-open-source/create-custom-keybindings-in-vim/

" Set CTRL-A to <esc> command 
imap <C-a> <esc>

"TRL-C to copy (visual mode)

"vmap <C-c> y

" CTRL-X to cut (visual mode)

"vmap <C-x> x

"CTRL-V to paste (insert mode)

"imap <C-v> <esc>

" Set up from https://www.keycdn.com/blog/vim-commands

" go to bottom file and line: https://www.cyberciti.biz/faq/howto-unix-linux-vi-vim-jump-to-end-of-file/
" not working -> Goal: reach the EOF and then fo to the end of line
"cmap <B> <A-$>

"Example of .vimrc on vimwiki: https://vim.fandom.com/wiki/Example_vimrc
" Split and move the view of vim: https://www.sourceallies.com/2009/11/vim-splits-an-introduction/
" Text writing:
"   -  i : insert  first
"   - I  : insert later
"   - o  : insert a line later
"   - O  : insert above current line
"   - r  : Replace single character under cursor
"   - R  : Replace char until <esc> pressed
" other userful char: https://www.cs.colostate.edu/helpdocs/vi.htmlhttps://www.cs.colostate.edu/helpdocs/vi.html
" Searching into a file: 
" - search text:
"   - '/string' : search forward for occurrence
"   - '?string' : search backward for occurrence
"   - n         : move to the next occurrence
"   - N         : move to the previus occurrence

