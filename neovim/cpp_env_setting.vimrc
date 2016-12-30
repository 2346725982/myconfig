"" deoplete
let s:clang_library_path='/Library/Developer/CommandLineTools/usr/lib'
if isdirectory(s:clang_library_path)
    let g:clang_library_path=s:clang_library_path
endif

"" neoformat
let g:neoformat_enabled_cpp = ['clangformat']

"" neomake
" let g:neomake_cpp_clang_maker = { 'args': ['-std=c++11'], }
" let g:neomake_cpp_enabled_makers = ['clang']

"" vim-clang
" let g:clang_cpp_options = '-std=c++11 -stdlib=libc++'
" let g:clang_cpp_completeopt = 'longest,menuone'
