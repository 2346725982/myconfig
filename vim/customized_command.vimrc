""" Jump to last edit
function! JumpToLastEdit()
    if line("'\"") <= line("$")
        normal! g`"
    endif
endfunction

if has("autocmd")
    " for html/rb files, 2 spaces
"    autocmd Filetype cpp setlocal ts=2 sw=2 expandtab

    " for js/coffee/jade files, 4 spaces
"    autocmd Filetype python setlocal ts=4 sw=4 sts=0 expandtab

    " Open spell checking when coding
    " autocmd BufReadPre,BufNewFile *.c,*.cpp,*.h,*.java,*.py :setlocal spell spelllang=en

    " Jump to last edit
"    autocmd BufReadPost * call JumpToLastEdit()

    " Auto make
    " autocmd! BufWritePost * Neomake

    "" NerdTree
"    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
endif
