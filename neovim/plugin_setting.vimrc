filetype plugin indent on

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Setting
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Color Scheme

""" Visualization
"" Airline
" Tab line
let g:airline_mode_map = {
      \ '__' : '-',
      \ 'n'  : 'N',
      \ 'i'  : 'I',
      \ 'R'  : 'R',
      \ 'c'  : 'C',
      \ 'v'  : 'V',
      \ 'V'  : 'V',
      \ 's'  : 'S',
      \ 'S'  : 'S'  }

""" Developing Tools
"" HiCursorWords
let g:HiCursorWords_delay = 200
" Memo: 'String\|Identifier\|Statement\|Normal\|CursorLine'
let g:HiCursorWords_hiGroupRegexp = ''
let g:HiCursorWords_debugEchoHiName = 0

"" Highlight Indent
let g:indentLine_enabled = 1

""" NERD Commenter
let g:NERDSpaceDelims = 1             " Add spaces after comment delimiters by default
let g:NERDCompactSexyComs = 1         " Use compact syntax for prettified multi-line comments
let g:NERDDefaultAlign = 'left'       " Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDAltDelims_java = 1          " Set a language to use its alternate delimiters by default
let g:NERDCommentEmptyLines = 1       " Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDTrimTrailingWhitespace = 1  " Enable trimming of trailing whitespace when uncommenting
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }  " Add your own custom formats or override the defaults

""" Developing Environment
"" Auto pairs
let g:AutoPairsShortcutJump='<c-n>'

"" NerdTree
let NERDTreeIgnore = ['\.pyc$', 'tags\.*']

"" CtrlP
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows
set wildignore+=*/tags/*                     " Tags files
set wildignore+=*.pyc                        " Compile files

let g:ctrlp_lazy_update = 1
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
unlet g:ctrlp_custom_ignore
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
let g:ctrlp_custom_ignore = {
  \ 'file': '\v(\.cpp|\.h|\.hh|\.cxx)@<!$'
  \ }

"" deoplete
set completeopt=longest,menuone
autocmd FileType python setlocal completeopt-=preview

let g:deoplete#enable_at_startup=1

" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><BS>  deoplete#mappings#smart_close_popup()."\<C-h>"

" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function() abort
  return deoplete#mappings#close_popup() . "\<CR>"
endfunction
