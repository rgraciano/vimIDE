colorscheme zellner

" Pathogen loads everything from sub-directories, so we can manage distinct
" modules with git rather than bothering with maintaining everything
" individually in ~/.vim/plugin/
call pathogen#infect()

" Intuitive backspacing in insert mode
set backspace=indent,eol,start
set hidden
set visualbell
set history=1000
 
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

" Change the behavior of the <Enter> key when the popup menu is visible. In that case the Enter key will simply select the highlighted menu item, just as <C-Y> does.
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Make <C-N> work the way it normally does; however, when the menu appears, the <Down> key will be simulated. What this accomplishes is it keeps a menu item always highlighted. This way you can keep typing characters to narrow the matches, and the nearest match will be selected so that you can hit Enter at any time to insert it.
inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
  \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

" Simulates <C-X><C-O> to bring up the omni completion menu, then it simulates <C-N><C-P> to remove the longest common text, and finally it simulates <Down> again to keep a match highlighted.
inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
  \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

set tags=~/.vimtags

let g:miniBufExplMapCTabSwitchBufs = -1

" Easy window movement
nmap <C-J> <C-W>j<C-W>
nmap <C-K> <C-W>k<C-W>
nmap <c-h> <c-w>h<c-w>
nmap <c-l> <c-w>l<c-w>

" Custom bindings to do stuff easily
nmap <leader>c :Tlist<CR>
nmap <leader>t :CommandT<CR>
nmap <leader>f :NERDTreeToggle<CR>


" Create all swap files in one place
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp


" MacVim font
set guifont=Menlo:h14


" Tabs are 4 spaces, and soft only
set softtabstop=4 shiftwidth=4 expandtab

" Word wrapping, and only wrap on whole words
set wrap
set linebreak
