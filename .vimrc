" 1. Color

colorscheme desert      " color scheme

syntax enable           " enable syntax processing


" 2. Spaces & Tabs

set tabstop=4           " number of visual spaces per TAB

set softtabstop=4       " number of spaces in tab when editing

set expandtab           " tabs are spaces

set autoindent          " new line with indent

set shiftwidth=4        " shift + < or > means indent with 4 width


" 3. UI config

set number              " show line numbers

set showcmd             " show command in bottom bar

set wildmenu            " visual autocomplete for command menu

set showmatch           " highlight matching [{()}]

" autocomplete a matching brace
inoremap { {}<LEFT>
inoremap {<ENTER> {}<LEFT><CR><ESC><S-o><TAB>
inoremap ( ()<ESC>i
inoremap (<ENTER> ()<LEFT><CR><ESC><S-o><TAB>

inoremap " ""<LEFT>


" 4. Searching

set incsearch           " search as characters are entered
set hlsearch            " highlight matches

