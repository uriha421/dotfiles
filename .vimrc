" 1. Color

colorscheme molokai      " color scheme

syntax enable           " enable syntax processing


" 2. Spaces & Tabs

set autoindent          " new line with indent

set expandtab           " tabs are spaces

set tabstop=2           " number of visual spaces per TAB

set softtabstop=2       " number of spaces in tab when editing

set shiftwidth=2        " shift + < or > means indent with 4 width

set backspace=indent,eol,start  " what to delete with a delete key

au BufNewFile,BufRead *.go set noexpandtab tabstop=4 softtabstop=4 shiftwidth=4 " indent config on golang


" 3. UI config

set number              " show line numbers

set showcmd             " show command in bottom bar

set wildmenu            " visual autocomplete for command menu


" autocomplete a matching brace
inoremap { {}<LEFT>
inoremap {<ENTER> {}<LEFT><CR><ESC><S-o><TAB>
inoremap ( ()<ESC>i
inoremap (<ENTER> ()<LEFT><CR><ESC><S-o><TAB>

inoremap [ []<LEFT>
inoremap ` ``<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>
inoremap < <><LEFT>

" 4. Searching

set incsearch           " search as characters are entered
set hlsearch            " highlight matches


" 5. clipboard

set clipboard+=unnamed  " share clipboards


" 6. vim-plug, a package manager

call plug#begin('~/.vim/plugged')

" golang plugin
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" abbreviation plugin
Plug 'mattn/emmet-vim'

" .vue file plugin "
Plug 'posva/vim-vue'

call plug#end()
