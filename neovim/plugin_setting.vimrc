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
set completeopt=menuone,longest

let g:deoplete#enable_at_startup=1
let g:deoplete#enable_smart_case=1

" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><BS>  deoplete#mappings#smart_close_popup()."\<C-h>"

" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function() abort
    return deoplete#mappings#close_popup() . "\<CR>"
endfunction

" C++ setting
let s:clang_library_path='/Library/Developer/CommandLineTools/usr/lib'
if isdirectory(s:clang_library_path)
    let g:clang_library_path=s:clang_library_path
endif
" let g:deoplete#sources#clang#libclang_path = '/Library/Developer/CommandLineTools/usr/lib'

"" Neoformat
" Enable alignment
let g:neoformat_basic_format_align = 1

" Enable tab to spaces conversion
let g:neoformat_basic_format_retab = 1

" Enable trimmming of trailing whitespace
let g:neoformat_basic_format_trim = 1

let g:neoformat_enabled_python = ['autopep8']
let g:neoformat_enabled_cpp = ['clangformat']

"" Chromatica
let g:chromatica#enable_at_startup=1
let g:chromatica#libclang_path='/usr/local/opt/llvm/lib'

"" Neomake
let g:neomake_cpp_clang_maker = { 'args': ['-std=c++11'], }
let g:neomake_cpp_enabled_makers = ['clang']

"" Vim-clang
let g:clang_cpp_completeopt = 'longest,menuone'
let g:clang_cpp_options = '-std=c++11 -stdlib=libc++'
