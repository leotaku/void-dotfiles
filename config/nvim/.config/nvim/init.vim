" vim basic settings
:syntax on
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set softtabstop=0
set noexpandtab           " dont turn tab to space
set incsearch
set nowrap
set number
set showcmd
set hlsearch
set nocompatible
:set t_Co=256               " use 256 colours
set ignorecase				" ignore case when searching
"set background=dark
"set cursorline
"colorscheme dc3
set hidden
" statusline
" set statusline=%F%m%r%h%w\ %=%y\ %03v\ \|\ %03l\ \ %p%%
set laststatus=2

" latex
let g:tex_flavor = "latex"

" startify
"autocmd User Startified setlocal cursorline

let g:startify_enable_special         = 0
let g:startify_files_number           = 8
let g:startify_relative_path          = 1
let g:startify_change_to_dir          = 1
let g:startify_update_oldfiles        = 1
let g:startify_session_autoload       = 1 
let g:startify_session_persistence    = 1

"let g:startify_skiplist = [
"    \ 'COMMIT_EDITMSG',
"    \ 'bundle/.*/doc',
"    \ '/data/repo/neovim/runtime/doc',
"    \ '/Users/mhi/local/vim/share/vim/vim74/doc',
"    \ ]

let g:startify_bookmarks = [
        \ { 'c': '~/.config/nvim/init.vim' },
        \ '~/golfing',
        \ ]

let g:startify_custom_header =
        \ map(split(system('figlet -f larry3d neovim'), '\n'), '"   ". v:val')

let g:startify_custom_footer =
        \ ['', "   Vim is charityware. Please read ':help uganda'.", '']

hi StartifyBracket ctermfg=0
hi StartifyFile    ctermfg=4
hi StartifyFooter  ctermfg=0
hi StartifyHeader  ctermfg=1
hi StartifySection ctermfg=1
hi StartifyNumber  ctermfg=0
hi StartifyPath    ctermfg=0
hi StartifySlash   ctermfg=1
hi StartifySpecial ctermfg=0

" vim-plug plugins
call plug#begin()

Plug 'mhinz/vim-startify'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
"Plug 'Valloric/YouCompleteMe'
"Plug 'ervandew/supertab'
Plug 'w0rp/ale'
Plug 'lervag/vimtex'

call plug#end()

" plugin configurations

" airline
let g:airline_theme='base16_bright'
"let g:airline_powerline_fonts = 1
"let g:airline_left_sep = '▓▒░'
"let g:airline_right_sep = '░▒▓'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
"let g:airline#extensions#tabline#left_alt_sep = '|'
"let g:airline#extensions#tabline#right_alt_sep = '|'
"let g:airline_skip_empty_sections = 1

" latex-live-preview
"let g:livepreview_previewer = 'zathura'
"set updatetime=1000

" vimtex
let g:vimtex_view_method = 'mupdf'
let g:vimtex_compiler_method = 'latexmk'
let g:vimtex_compiler_latexmk = {
    \ 'backend' : 'nvim',
    \ 'background' : 1,
    \ 'build_dir' : '',
    \ 'callback' : 1,
    \ 'continuous' : 1,
    \ 'executable' : 'latexmk',
    \ 'options' : [
    \   '-pdf',
    \   '-verbose',
    \   '-file-line-error',
    \   '-synctex=1',
    \   '-interaction=nonstopmode',
    \ ],
\}
let g:vimtex_quickfix_mode = 1
let g:vimtex_compiler_progname = 'nvr'
"let g:tex_conceal = ' '
