"---------------------------------------------------------------------
" some basic settings
"---------------------------------------------------------------------
set lines=999 columns=999       " show gvim full screen
nnoremap <leader>sv :source $MYVIMRC<CR> :source $MYGVIMRC<CR>

"---------------------------------------------------------------------
" vim-colors
"---------------------------------------------------------------------
set background=light
colorscheme solarized         " set colorscheme

"---------------------------------------------------------------------
" vim-airline
"---------------------------------------------------------------------
nnoremap <C-tab> :bn<CR>
nnoremap <C-s-tab> :bp<CR>
