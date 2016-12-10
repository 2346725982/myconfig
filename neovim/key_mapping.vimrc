let mapleader="\<SPACE>"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Built-in Function
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" NerdTree (Plug-in)
map <F2> :NERDTreeToggle<CR>

"" CtrlP (Plug-in)
nnoremap <Leader>o :CtrlP<CR>                     " Open Menu
nnoremap <Leader>b :CtrlPBuffer<CR>               " Buffer menu
nnoremap <Leader>m :CtrlPMRUFiles<CR>             " Most recently used

" Auto-format (Plug-in)
nnoremap <F4> :Neoformat<CR>
inoremap <F4> <Esc>:Neoformat<CR>i

" Toggle highlight search
nnoremap <F3> :set hlsearch!<CR>

"" Tagbar (Plug-in)
map <F10> :TagbarToggle<CR>

" Save
nmap <leader>w :update<CR>

" Exit
nmap <Leader>q :q<CR>

" Copy & paste to system clipboard with <Space>p and <Space>y
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

" Move between splits
nmap <C-J> <C-W>j
nmap <C-K> <C-W>k
nmap <C-L> <C-W>l
nmap <C-H> <C-W>h
imap <C-J> <Esc><C-W>j
imap <C-K> <Esc><C-W>k
imap <C-L> <Esc><C-W>l
imap <C-H> <Esc><C-W>h

"" Ack (Plug-in)
nnoremap <Leader>a :Ack!<Space>

""" Expand region (Plug-in)
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

