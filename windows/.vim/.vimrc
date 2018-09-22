" Maintainer:	Konstantin Milchev <k.milchev.12@aberdeen.ac.uk>
" Last change:	2018 Sep 20

" Pathogen config
source ~/vimfiles/autoload/pathogen.vim "location of my pathogen.vim
call pathogen#infect('bundle/{}')
call pathogen#helptags()
" runtime bundle/vim-pathogen/autoload/pathogen.vim

" syntax 
syntax on

" set vim size
:set lines=35 columns=150

" Detection, Plugin, Indent
filetype plugin indent on

" Buffers
"Move to the previous buffer with "gp"
nnoremap gp :bp<CR>
" Move to the next buffer with "gn"
nnoremap gn :bn<CR>
" List all possible buffers with "gl"
nnoremap gl :ls<CR>
" List all possible buffers with "gb" and accept a new buffer argument [1]
nnoremap gb :ls<CR>:b
" Unbind Escape Key in insert mode. Bind 'jk' or 'kj'.

" non-compatible mode
set nocp

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

