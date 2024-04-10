" Ward off unexpected things that your distro might have made, as
" well as sanely reset options when re-sourcing .vimrc
set nocompatible

" Start plugin system
call plug#begin(stdpath('data') . '/plugged')

" Theme
Plug 'ellisonleao/gruvbox.nvim'

" Detect indentation
Plug 'tpope/vim-sleuth'

" Status bar
Plug 'vim-airline/vim-airline'

" Leap motions
Plug 'ggandor/leap.nvim'

" Undo tree
Plug 'mbbill/undotree'

" Show diff in left column
Plug 'mhinz/vim-signify'

" More support for TeX documents
Plug 'lervag/vimtex'

" Support for markdown
Plug 'ixru/nvim-markdown'

" Support for R
Plug 'jalvesaq/Nvim-R'

" End of plugin system
call plug#end()

" Configure theme
autocmd vimenter * ++nested colorscheme gruvbox
autocmd vimenter * hi Normal ctermbg=NONE guibg=NONE

" Configure tabs
set tabstop=2
set shiftwidth=2
set expandtab

" Make scrolling relative to visible lines (instead of numbered lines)
:set wrap linebreak nolist
:set number
:set breakindent
:map <ScrollWheelUp> <C-Y>
:map <ScrollWheelDown> <C-E>
:map <Up> gk
:map! <Up> <C-o>gk
:map <Down> gj
:map! <Down> <C-o>gj
:set nostartofline

" Remap CTRL+S to save
noremap <silent> <D-s> :update<CR>
vnoremap <silent> <D-s> <C-C>:update<CR>
inoremap <silent> <D-s> <C-O>:update<CR>

" Fix HOME and END keys
inoremap <silent> <D-Left> <Home>
inoremap <silent> <D-Right> <End>

" Ctrl+D exits
noremap <silent> <C-D> :q<CR>
vnoremap <silent> <C-D> <C-C>:q<CR>
inoremap <silent> <C-D> <C-C>:q<CR>

" vim-airline config
let g:airline_powerline_fonts = 1
let g:airline_section_z = '%l/%L ☰ %03v/%03{col("$")-1}'

" leap.nvim config
lua require('leap').create_default_mappings()

" signify config
let g:signify_sign_add = '│'
let g:signify_sign_delete = '│'
let g:signify_sign_change = '│'
hi DiffDelete guifg=#ff5555 guibg=none

" vimtex config
let g:vimtex_compiler_latexmk_engines = {
        \ '_'                : '-lualatex',
        \ 'pdfdvi'           : '-pdfdvi',
        \ 'pdfps'            : '-pdfps',
        \ 'pdflatex'         : '-pdf',
        \ 'luatex'           : '-lualatex',
        \ 'lualatex'         : '-lualatex',
        \ 'xelatex'          : '-xelatex',
        \ 'context (pdftex)' : '-pdf -pdflatex=texexec',
        \ 'context (luatex)' : '-pdf -pdflatex=context',
        \ 'context (xetex)'  : '-pdf -pdflatex=''texexec --xtx''',
        \}
let g:vimtex_quickfix_open_on_warning = 0
nmap <localleader>c <Plug>(vimtex-compile-ss)

" Nvim-R config
let R_assign = 0 "No automatic `<-` introduction
let R_rmdchunk = 0 "No automatic md code chunks
