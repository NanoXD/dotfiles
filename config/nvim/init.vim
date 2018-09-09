" Basics Settings {{{

source ~/.config/nvim/base.vim
source ~/.config/nvim/mappings.vim
source ~/.config/nvim/plugins.vim

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Look, Style, and Feel
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

colorscheme one
set background=dark
let g:airline_theme='one'
let g:airline#extensions#tabline#enabled = 1

function! s:setupWrapping()
  set wrap
  set wrapmargin=2
  set textwidth=78
endfunction

function! s:disableWhiteSpaceChecking()
  let b:airline_whitespace_disabled = 1
endfunction

highlight ColorColumn ctermbg=green
call matchadd('ColorColumn', '\%81v', 100)

runtime! macros/matchit.vim    " % to bounce from do to end etc.
let g:syntastic_enable_signs=1 " Enable syntastic syntax checking

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files and backups
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:netrw_banner = 0                      " hide banner
let g:netrw_list_hide='.*\.swp$,\.DS_Store' " hide swp, DS_Store files
let g:netrw_liststyle=3                     " set tree style listing
let g:netrw_sort_options='i'                " case insensitive
