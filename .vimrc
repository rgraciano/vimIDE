colorscheme zellner

" Pathogen loads everything from sub-directories, so we can manage distinct
" modules with git rather than bothering with maintaining everything
" individually in ~/.vim/plugin/
call pathogen#infect()

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
nmap <c-v> <c-w>v
nmap <c-x> <c-w>c

" Custom bindings to do stuff easily
nmap <leader>c :Tlist<CR>
nmap <leader>t :CommandT<CR>
nmap <leader>f :NERDTreeToggle<CR>


" Create all swap files in one place
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set undodir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp


" MacVim font
set guifont=Menlo:h14


" Tabs are 4 spaces, and soft only
set softtabstop=4 shiftwidth=4 expandtab

" Word wrapping, and only wrap on whole words
set wrap
set linebreak
set textwidth=79
set formatoptions=qrn1

" Need to tell the debugger that we are using MiniBufExpl
let g:debuggerMiniBufExpl = 1

"No longer compatible with vi (I only use vim anyway)
set nocompatible

" Adding a bunch of cool setting to vim
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
set undofile

nnoremap / /\v
vnoremap / /\v

" Intelligent case handling - search case-sensitive only when mixed case is
" used in the search string
set ignorecase
set smartcase

" Global search by default
set gdefault

" Move by screen line instead of file line
nnoremap j gj
nnoremap k gk

" Easier buffer deletion
nnoremap <c-d> :bd<cr>

" Execute ctags command in the background to regen tagfile on demand
nnoremap <leader>r :call Tagrefresh('', 0)<cr> 

" Regenerates ctags with ctagsgen.sh in a background process.
" If a directory is not supplied, then pwd will be used. If suppressOutput is
" true, then AsyncCommand will be used instead of AsyncShell (so no output
" comes back to the user)
function Tagrefresh(dir, suppressOutput) 
    if empty(a:dir)
        let gendir = substitute(system('pwd'), "\n", '', '') 
    else
        let gendir = a:dir
    endif

    if a:suppressOutput
        execute "AsyncCommand(~/.vim/ctagsgen.sh " . gendir . ")"
    else
        execute "AsyncShell(~/.vim/ctagsgen.sh " . gendir . ")" 
    endif
endfunction
