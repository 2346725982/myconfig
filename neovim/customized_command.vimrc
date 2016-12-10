""" Jump to last
function! JumpToLastEdit()
  if line("'\"") <= line("$")
    normal! g`"
  endif
endfunction

""" Change background according to day time
function! SetSolarizedBackground()
    if strftime("%H") >= 5 && strftime("%H") < 17
        if &background != 'light'
            set background=light
        endif
    else
        if &background != 'dark'
            set background=dark
        endif
    endif
endfunction

" call SetSolarizedBackground()

if has("autocmd")
" Open spell checking when coding
  autocmd BufReadPre,BufNewFile *.c,*.h,*.java,*.py :setlocal spell spelllang=en

" Jump to last edit
  autocmd BufReadPost * call JumpToLastEdit()

" call SetSolarizedBackground()
  " autocmd BufWritePost * call SetSolarizedBackground()

" Auto make
  autocmd! BufWritePost * Neomake

"" NerdTree
  autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
endif

