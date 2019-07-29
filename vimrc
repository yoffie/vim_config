"---------------------------------------------------------------------
" some basic settings
"---------------------------------------------------------------------
set nocompatible                " nocompatible with VI, Vundle required
filetype off                    " Vundle required
let mapleader=";"
" appearence ---------------------------------------------------------
set number                      " show line number
set showtabline=0               " donot show tabline on top
set guioptions-=m               " gui vim donot show menu bar
set guioptions-=T               " gui vim donot show tool bar
set guioptions-=r               " donot show scroll bar on right
set guioptions-=L               " donot show scroll bar on left
set guioptions-=b               " donot show scroll bar on bottom
set cursorline                  " highlight cursor line
set cursorcolumn                " highlight cursor column
set ruler                       " show current line and column number on bottom
"set guifont=Cousine:h14        " set guifont
set enc=utf-8                   " set encoding
"set langmenu=zh_CN.UTF-8       " show menu in Chinese
"set lines=999 columns=999       " show gvim full screen
let &colorcolumn=join(range(81,120),",") " highlight regions over 80 characters
" programming assistant ----------------------------------------------
syntax on                       " highlight according to syntax
set nowrap                      " donot wrap code
set fileformat=unix             " line end using unix format
set cindent                     " indent as C code
set tabstop=4                   " the tab width, default is 8
set softtabstop=4               " if tabstop is 8, convert 8 space to a tab
set shiftwidth=4                " the indent each code level
set backspace+=indent,eol,start " set backspace
set showmatch                   " show matched bracket
set scrolloff=5                 " line distance to top/bottom
set laststatus=2                " set as 2 to always show status line
set autoindent                  " auto indent
set smartindent                 " smart indent
" file related -------------------------------------------------------
set nobackup                    " donot save backup file like tmp~
set noundofile                  " donot save undofile
set noswapfile                  " donot use swapfile
set autochdir                   " auto change working dir when open a file
" split window related -------------------------------------------
set splitbelow                  " enable split in bottom
set splitright                  " enable split in right
" shortcut : close the current window if it is not the last one.
nnoremap <leader>c <C-W><C-C>
" shortcut : close the current window, if it is the last one, quit vim.
nnoremap <leader>q <C-W><C-q>
" shortcut : split the window vertically
nnoremap <leader>s <C-W><C-S>
" shortcut : split the window horizontally
nnoremap <leader>v <C-W><C-V>
" shortcut : change to the window
nnoremap <leader>w <C-W><C-W>
" shortcut : change to the bottom window
nnoremap <leader>j <C-W><C-J>
" shortcut : change to the top window
nnoremap <leader>k <C-W><C-K>
" shortcut : change to the right window
nnoremap <leader>l <C-W><C-L>
" shortcut : change to the left window
nnoremap <leader>h <C-W><C-H>
" others -------------------------------------------------------------
set mouse=a                     " enable mouse in normal mode
set selection=exclusive         " set selection
set selectmode=mouse,key        " set selectmode
set matchtime=5                 " set matchtime
"set ignorecase                 " ignore case when match
set incsearch                   " incsearch
set hlsearch                    " hight light searched content
set noexpandtab                 " donot expand tab to space
"set whichwrap+=<,>,h,l          " set whichwrap
set autoread                    " set autoread
set clipboard=unnamedplus       " easy exchange content with system clipboard
set list                        " show blank chars
set listchars=tab:>-,trail:-
" setting for specific filetypes -------------------------------------
au BufNewFile,BufRead *.c,*.cpp,*.cc,*.cxx,*.C,*.c++,*.h,*.hpp,*.hxx set tabstop=4|set softtabstop=4|set shiftwidth=4|set expandtab
au BufNewFile,BufRead *.prototxt set tabstop=2|set softtabstop=2|set shiftwidth=2|set expandtab

"-----------------------------------------------------------
" Vundle
"-----------------------------------------------------------
" set the runtime path to include Vundle and initialize
set rtp+=/home/songyoff/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The folllwing are my plugins
Plugin 'jakwings/vim-colors'
Plugin 'altercation/vim-colors-solarized'
Plugin 'crusoexia/vim-monokai'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'airblade/vim-gitgutter'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'taglist.vim'
Plugin 'Valloric/YouCompleteMe'

" discarded plugins
"Plugin 'winmanager'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"---------------------------------------------------------------------
" settings of each plugin
"---------------------------------------------------------------------

"---------------------------------------------------------------------
" vim-colors
"---------------------------------------------------------------------
set background=dark
"colorscheme solarized         " set colorscheme
set t_Co=256
"let g:monokai_term_italic=1
"colorscheme monokai         " set colorscheme
colorscheme garden         " set colorscheme

"---------------------------------------------------------------------
" vim-airline
"---------------------------------------------------------------------
"let g:airline_theme="solarized"
" set it after install the font
"let g:airline_powerline_fonts=1
" set tabline, for check and change between Buffers, thus don't need minibufexpl
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#buffer_nr_show=1
let g:airline#extensions#tabline#formatter = 'default'
" short cut to change between Buffers
nnoremap <tab> :bn<CR>
nnoremap <s-tab> :bp<CR>
" don't show the number of spaces
let g:airline#extensions#whitespace#enabled=0
let g:airline#extensions#whitespace#symbol='!'

"---------------------------------------------------------------------
" nerdtree
"---------------------------------------------------------------------
"autocmd vimenter * NERDTree    " auto open NERDTree when start up vim
" shortcut to open/close NERDTree
map <leader>n :NERDTreeToggle<CR>
let NERDTreeChDirMode=1
let NERDTreeShowBookmarks=1
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
let NERDTreeWinSize=40
" open NERDTree automatically when vim starts up if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" open NERDTree automatically when vim starts up on opening a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
" quit if NERDTree is the last window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeShowLineNumbers=1
let NERDTreeAutoCenter=1
"let g:nerdtree_tabs_open_on_console_startup=1  " auto open in console
" NERDTree git
let g:NERDTreeShowIgnoredStatus = 1
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

"-----------------------------------------------------------
" indentLine settings
"-----------------------------------------------------------
let g:indentLine_enabled = 1
let g:indent_guides_enable_on_vim_startup = 1
"let g:indentLine_char='┆'

"-----------------------------------------------------------
" taglist settings
"-----------------------------------------------------------
let Tlist_Use_Right_Window = 1         " set taglist window on right
let Tlist_File_Fold_Auto_Close = 1     " when open multiple files, only show tags of the current file
let Tlist_Show_One_File = 1            " only show the tags of one file, default multiple files
"let Tlist_Sort_Type ='name'           " sort tags by name, default by apeared
let Tlist_GainFocus_On_ToggleOpen = 1  " when open Taglist window, focus current
let Tlist_Exit_OnlyWindow = 1          " if taglist is the last window, exist
let Tlist_WinWidth = 32                " the width of taglist window
"let Tlist_Ctags_Cmd='/usr/local/bin/ctags'  " the loction of ctags
" shortcut to open/close taglist
map <leader>t :TlistToggle<CR>

"---------------------------------------------------------------------
" set YouCompleteMe
"---------------------------------------------------------------------
" open/close ycm options
let g:ycm_path_to_python_interpreter = '/usr/bin/python'
set completeopt=menuone,longest,preview         " popup a menu, match longest, preview
let g:ycm_min_num_of_chars_for_completion=1     " popup after typed x chars
let g:ycm_cache_omnifunc=0                      " unable cache complete options
let g:ycm_autoclose_preview_window_after_completion=1 " atuo close complete menu
let g:ycm_key_invoke_completion = ''            " donot invoke semantic complete manually
autocmd InsertLeave * if pumvisible() == 0|pclose|endif  " atuo close menu when leave insert mode
" use enter to sellect option
"inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"
let g:ycm_collect_identifiers_from_tags_files=1 " enable YCM collect identifiers from tags
let g:ycm_auto_trigger = 1                      " automatically invoke YCM
let g:ycm_seed_identifiers_with_syntax=1        " enable YCM using programming language's key words
let g:ycm_complete_in_comments = 1              " enable YCM when writing comments
let g:ycm_complete_in_strings = 1               " enable YCM when writing string
let g:ycm_collect_identifiers_from_comments_and_strings = 0 " collect identifiers from comments and strings
" remap shortcuts to enhance using the popup menu just as in an IDE
inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"
" force recomile with syntastic
nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>
" open locationlist
nnoremap <leader>lo :lopen<CR>
" close locationlist
nnoremap <leader>lc :lclose<CR>
" popup complete window
inoremap <leader><leader> <C-x><C-o>
" goto
nnoremap <leader>d :YcmCompleter GoToDefinition<CR>
nnoremap <leader>i :YcmCompleter GoToInclude<CR>
nnoremap <leader>r :YcmCompleter GoToReferences<CR>
" goto forward
nnoremap <leader>p :<C-i>
" goto backward
nnoremap <leader>b :<C-o>
" add python packages' path
let $PYTHONPATH .= ':/home/songyoff/anaconda3/lib/python3.6/site-packages/'
let g:ycm_confirm_extra_conf=0                  " need no confirm when load .ycm_extra_conf.py
let g:ycm_global_ycm_extra_conf = '/home/songyoff/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_semantic_triggers =  {
    \ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
    \ 'cs,lua,javascript': ['re!\w{2}'],
    \ }
"let g:ycm_filetype_whitelist = { 
"\ "h":1,
"\ "hpp":1,
"\ "c":1,
"\ "cpp":1,
"\ "cc":1,
"\ "objc":1,
"\ "sh":1,
"\ "zsh":1,
"\ "zimbu":1,
"\ }
