"" deoplete-clang
let g:deoplete#sources#clang#libclang_path='/Library/Developer/CommandLineTools/usr/lib/libclang.dylib'
let g:deoplete#sources#clang#clang_header='/Library/Developer/CommandLineTools/usr/lib/clang'
let g:deoplete#sources#clang#clang_complete_database = '$HOME/airlab/repos/bloodhound-agent'

"" neoformat
let g:neoformat_cpp_clangformat= {
            \ 'exe': 'clang-format',
            \ 'args': ['-style=Google'],
            \ }
let g:neoformat_enabled_cpp = ['clangformat']

"" neomake
let g:neomake_cpp_enabled_makers = ['clang']
let g:neomake_cpp_clang_maker = {
            \ 'exe': 'clang++',
            \ 'args': ['-Wall', '-Wextra', '-Weverything', '-pedantic', '-Wno-sign-conversion'],
            \ }
let g:neomake_cpp_customized_maker= { 'exe': 'make' }

"" gen_tags
" let g:gen_tags#gtags_auto_gen = 1
let g:gen_tags#ctags_use_cache_dir = 1
