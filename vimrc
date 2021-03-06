set fileencodings=utf8,big5
" key mapping
"inoremap {<Cr> {<Cr>}<Esc>ko<Tab>
inoremap jf <esc>

" alias function
fun! SetupCommandAlias(from, to)
  exec 'cnoreabbrev <expr> '.a:from
        \ .' ((getcmdtype() is# ":" && getcmdline() is# "'.a:from.'")'
        \ .'? ("'.a:to.'") : ("'.a:from.'"))'
endfun
call SetupCommandAlias("W","w")

" auto script
autocmd WinEnter * setlocal cursorcolumn
autocmd WinLeave * setlocal nocursorcolumn

autocmd WinEnter * setlocal relativenumber
autocmd WinLeave * setlocal norelativenumber

autocmd BufWritePre * :%s/\s\+$//e

" status
set showcmd

" layout
set scrolloff=3

set wrap
set linebreak

" search
set hlsearch
set ignorecase
set smartcase

" line %
set number
set relativenumber

" tab
set tabstop=8
set shiftwidth=8
"set tabstop=4
"set shiftwidth=4
"set expandtab
%retab!
set autoindent

"set foldmethod=indent

" mouse mod
set mouse=a

"set paste
set clipboard=unnamed

" theme color
set list
syntax on
"try
colorscheme murphy
"catch
"endtry

" line high light
"set cursorcolumn
"set cursorline

" color customer
set t_Co=256
hi LineNr cterm=bold ctermfg=DarkGrey ctermbg=NONE
hi CursorLineNr cterm=bold ctermfg=Green ctermbg=NONE
hi CursorLine cterm=bold ctermfg=NONE ctermbg=DarkGrey
hi CursorColumn cterm=bold ctermfg=NONE ctermbg=DarkGrey


""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""" C O N F I N G """"""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" plugins
execute pathogen#infect()
filetype plugin indent on
set runtimepath^=~/.vim/bundle/ctrlp.vim

map <F5> :NERDTree<CR>

let g:indentLine_char = '|'
let g:indentLine_enabled = 1

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:molokai_original = 1
let g:rehash256 = 1
