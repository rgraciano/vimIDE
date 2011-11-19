colorscheme zellner

" Pathogen loads everything from sub-directories, so we can manage distinct
" modules with git rather than bothering with maintaining everything
" individually in ~/.vim/plugin/
call pathogen#infect()

" Intuitive backspacing in insert mode
set backspace=indent,eol,start
set hidden
 
" File-type highlighting and configuration.
" Run :filetype (without args) to see what you may have
" to turn on yourself, or just set them all to be sure.
syntax on
filetype on
filetype plugin on
filetype indent on
 
" Highlight search terms...
set hlsearch
set incsearch " ...dynamically as they are typed.
" When using search highlighting, <leader>n turns it off
nmap <silent> <leader>n :silent :nohlsearch<CR>

" Autocomplete settings
set completeopt=longest,menuone,preview

set ruler

inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
  \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
  \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

set tags=~/.vimtags

let g:miniBufExplMapCTabSwitchBufs = 1

" Easy window movement
nmap <C-J> <C-W>j<C-W>
nmap <C-K> <C-W>k<C-W>
nmap <c-h> <c-w>h<c-w>
nmap <c-l> <c-w>l<c-w>

" Custom bindings to do stuff easily
nmap <leader>t :Tlist<CR>
nmap <leader>f :NERDTreeToggle<CR>


" Create all swap files in one place
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp


" MacVim font
set guifont=Menlo:h14
