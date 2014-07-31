syntax on
set tabstop=4
set smartindent
set shiftwidth=4
set expandtab
set number
set nocompatible
set autoindent
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
set foldmethod=indent
set foldlevel=99
filetype off


"load bundles
call pathogen#infect()
call pathogen#helptags()

"disable arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>
map <leader>td <Plug>TaskList

"set rtp+=~/.vim/bundle/vundle/

"call vundle#rc()

" let Vundle manage Vundle
" required!
"Bundle 'gmarik/vundle'

" The bundles you install will be listed here

filetype plugin indent on

" The rest of your config follows here
"
augroup vimrc_autocmds
    autocmd!
    " highlight characters past column 120
    autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Black
    autocmd FileType python match Excess /\%120v.*/
    autocmd FileType python set nowrap
augroup END
nmap <silent> <F2> :execute 'NERDTreeToggle ' . getcwd()<CR>
execute  pathogen#infect()

