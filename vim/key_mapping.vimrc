""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""               Function shortcut
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <F5> :set hlsearch!<CR>
nmap <F4> :Neoformat<CR>
nmap <F10> :TagbarToggle<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""               Normal key shortcut
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Esc
imap jj <Esc>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""               Combined key shortcut
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Expand region (Plug-in)
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

nmap <C-j> <C-w><C-j>
nmap <C-k> <C-w><C-k>
nmap <C-l> <C-w><C-l>
nmap <C-h> <C-w><C-h>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""               Leader key shortcut
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader="\<SPACE>"

" Save
nmap <Leader>w :update<CR>

" Exit butffer
nmap <Leader>q :q<CR>

" Copy & paste to system clipboard with <Space>p and <Space>y
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>y "+y
vmap <Leader>d "+d
vmap <Leader>p "+p
vmap <Leader>P "+P

" copy/paste to clipboard
" " Copy to clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy

" " Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P
