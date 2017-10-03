"" Super Tab
let g:SuperTabDefaultCompletionType = "<c-n>"

"" NERD Commenter
let g:NERDSpaceDelims = 1             " Add spaces after comment delimiters by default
let g:NERDCompactSexyComs = 1         " Use compact syntax for prettified multi-line comments
let g:NERDDefaultAlign = 'left'       " Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDAltDelims_java = 1          " Set a language to use its alternate delimiters by default
let g:NERDCommentEmptyLines = 1       " Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDTrimTrailingWhitespace = 1  " Enable trimming of trailing whitespace when uncommenting
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }  " Add your own custom formats or override the defaults

"" Auto pairs
let g:AutoPairsShortcutJump='<c-n>'

"" Deoplete
" set completeopt=menu,menuone,longest
" set completeopt-=preview
" 
" let g:deoplete#enable_at_startup=1
" let g:deoplete#enable_smart_case=1
" 
" " <C-h>, <BS>: close popup and delete backword char.
" inoremap <expr><BS>  deoplete#mappings#smart_close_popup()."\<C-h>"
" 
" " <CR>: close popup and save indent.
" inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
" function! s:my_cr_function() abort
"     return deoplete#close_popup() . "\<CR>"
" endfunction


"" Neoformat
let g:neoformat_basic_format_align = 1 " Enable alignment
let g:neoformat_basic_format_retab = 1 " Enable tab to spaces conversion
let g:neoformat_basic_format_trim = 1  " Enable trimmming of trailing whitespace
