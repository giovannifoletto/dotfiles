" Vim configuration file "                                                                                                                                                                                                                    
                                                                                                                                                                                                                                              
" enable mouse support "                                                                                                                                                                                                                      
set mouse=a                                                                                                                                                                                                                                   
                                                                                                                                                                                                                                              
" enable syntax "                                                                                                                                                                                                                             
syntax on                                                                                                                                                                                                                                     
                                                                                                                                                                                                                                              
" enable line numbers "                                                                                                                                                                                                                       
set number                                                                                                                                                                                                                                    
                                                                                                                                                                                                                                              
" highlight current line "                                                                                                                                                                                                                    
set cursorline                                                                                                                                                                                                                                
:highlight Cursorline cterm=bold ctermbg=black                                                                                                                                                                                                
" use imap to remap ESC

imap jk <ESC>

" enable highlight search pattern "                                                                                                                                                                                                           
set hlsearch                                                                                                                                                                                                                                  
                                                                                                                                                                                                                                              
" enable smartcase search sensitivity "                                                                                                                                                                                                       
set ignorecase                                                                                                                                                                                                                                
set smartcase                                                                                                                                                                                                                                 
                                                                                                                                                                                                                                              
" Indentation using spaces "                                                                                                                                                                                                                  
" tabstop:      width of tab character                                                                                                                                                                                                        
" softtabstop:  fine tunes the amount of whitespace to be added                                                                                                                                                                               
" shiftwidth:   determines the amount of whitespace to add in normal mode
" expandtab:    when on use space instead of tab
" textwidth:    text wrap width
" autoindent:   autoindent in new line
set tabstop     =4
set softtabstop =4
set shiftwidth  =4
set textwidth   =79
set expandtab
set autoindent

" show the matching part of pairs [] {} and () "
set showmatch

" remove trailing whitespace from Python and Fortran files "
autocmd BufWritePre *.py :%s/\s\+$//e
autocmd BufWritePre *.f90 :%s/\s\+$//e
autocmd BufWritePre *.f95 :%s/\s\+$//e
autocmd BufWritePre *.for :%s/\s\+$//e

" enable color themes "
if !has('gui_running')
        set t_Co=256
endif
" enable true colors support "
set termguicolors
colorscheme desert

set wildmenu

set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" STATUS LINE ------------------------------------------------------------ {{{

" Clear status line when vimrc is reloaded.
set statusline=

" Status line left side.
set statusline+=\ %F\ %M\ %Y\ %R

" Use a divider to separate the left side from the right side.
set statusline+=%=

" Status line right side.
set statusline+=\ ascii:\ %b\ hex:\ 0x%B\ row:\ %l\ col:\ %c\ percent:\ %p%%

" Show the status on the second to last line.
set laststatus=2
