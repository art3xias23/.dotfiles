" Pathogen config
source ~/vimfiles/autoload/pathogen.vim "location of my pathogen.vim
call pathogen#infect('bundle/{}')
call pathogen#helptags()
set nocp
filetype plugin indent on

" NERDTree
autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>

" Vim-Notes 
:let g:notes_directories = [ '~/Documents/Notes' ]
:let g:notes_suffix = '.md'
:let g:notes_title_sync = 1 
:let g:notes_markdown_program ='~/Typora/Typora.exe'
set colorcolumn=160 number

" Color Scheme
colorscheme gruvbox

" Syntax Highlighting
syntax on

"Mappings
ino <esc> <nop>
ino jk <esc>:w<cr>
ino kj <esc>:w<cr>
nnoremap <F4> :exe ':silent !"c:\Program Files\Firefox Developer Edition\firefox.exe" %'<CR>

" Functions 
function ToFirefox()
"    silent '<,'>w ! python -m markdown -f tmp.html | start tmp.html
     :!open -a Firefox %
endfunction
