filetype plugin indent on

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Setting
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""" Color Scheme
" let g:gruvbox_italic=1
" let g:gruvbox_termcolors=256
" colorscheme gruvbox

set termguicolors
" colorscheme NeoSolarized
" let g:neosolarized_contrast = "high"
" let g:neosolarized_visibility = "normal"

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

" air-line
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
" let g:airline_left_sep = ''
" let g:airline_symbols.crypt = '🔒'
" let g:airline_symbols.linenr = '␊'
" let g:airline_symbols.linenr = '¶'
" let g:airline_symbols.maxlinenr = ''
" let g:airline_symbols.branch = '⎇'
" let g:airline_symbols.spell = 'Ꞩ'
" let g:airline_symbols.notexists = '∄'
" let g:airline_symbols.whitespace = 'Ξ'

" let g:airline_theme= 'solarized'
" let g:airline_theme= 'gruvbox'
" let g:airline_theme= 'wombat'
" let g:airline_theme='powerlineish'

" let g:airline_section_z=''

"  (mode, crypt, paste, spell, iminsert)
" let g:airline_section_a="mode"

"  (hunks, branch)
" let g:airline_section_b="%{fugitive#statusline()}"

"  (bufferline or filename)
"let g:airline_section_c="%t"

"  (readonly, csv)
" let g:airline_section_gutter="%m%r"

"  (tagbar, filetype, virtualenv)
" let g:airline_section_x=""

"  (fileencoding, fileformat)
" let g:airline_section_y=""

"  (percentage, line number, column number)
" let g:airline_section_z="%v,%l/%L|%P"

"  (ycm_error_count, syntastic, eclim)
" let g:airline_section_error

"  (ycm_warning_count, whitespace)
" let g:airline_section_warning

" let g:airline#extensions#tabline#enabled = 1

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
"" NerdTree
let NERDTreeIgnore = ['\.pyc$', 'tags\.*']

"" CtrlP
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows
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

"" Ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

"" deoplete
set completeopt=longest,menuone
autocmd FileType python setlocal completeopt-=preview

set runtimepath+=~/.config/nvim/bundle/deoplete.nvim/
let g:deoplete#enable_at_startup=1
let g:deoplete#enable_smart_case=1
let g:deoplete#auto_complete_start_length=1
let g:deoplete#sources = {}
let g:deoplete#sources.py = ['jedi', 'tag']
let g:deoplete#sources.cpp = ['tag']
let b:deoplete_ignore_sources = ['buffer']

" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><BS>  deoplete#mappings#smart_close_popup()."\<C-h>"

" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function() abort
  return deoplete#mappings#close_popup() . "\<CR>"
endfunction

""" Neomake
" let g:neomake_open_list=2

""" SimpylFold
let g:SimpylFold_docstring_preview = 1
let g:SimpylFold_fold_docstring = 0
let g:SimpylFold_fold_import = 0

""" clang_complete
" path to directory where library can be found
" let g:clang_library_path='/usr/lib/llvm-3.8/lib'
" or path directly to the library file
" let g:clang_library_path='/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/libclang.dylib'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Command
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" NerdTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"" Neomake
autocmd! BufWritePost * Neomake

