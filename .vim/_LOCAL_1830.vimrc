runtime bundle/vim-pathogen/autoload/pathogen.vim

"Move to the previous buffer with "gp"
nnoremap gp :bp<CR>
" Move to the next buffer with "gn"
nnoremap gn :bn<CR>
" List all possible buffers with "gl"
nnoremap gl :ls<CR>
" List all possible buffers with "gb" and accept a new buffer argument [1]
nnoremap gb :ls<CR>:b
" Unbind Escape Key in insert mode. Bind 'jk' or 'kj'.

" Pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on
