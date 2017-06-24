""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""               Function shortcut
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <F2> :NERDTreeToggle<CR>
map <F3> :set hlsearch!<CR>
nmap <F4> :Neoformat<CR>
map <F10> :TagbarToggle<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""               Nomal key shortcut
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Expand region (Plug-in)
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""               Meta key shortcut
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Move between splits
nmap <C-J> <C-W>j
nmap <C-K> <C-W>k
nmap <C-L> <C-W>l
nmap <C-H> <C-W>h
imap <C-J> <Esc><C-W>j
imap <C-K> <Esc><C-W>k
imap <C-L> <Esc><C-W>l
imap <C-H> <Esc><C-W>h

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""               Leader key shortcut
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader="\<SPACE>"

"" Ack (Plug-in)
nmap <Leader>a :Ack!<Space>

"" CtrlP (Plug-in)
nmap <Leader>o :CtrlP<CR>
nmap <Leader>b :CtrlPBuffer<CR>
nmap <Leader>m :CtrlPMRUFiles<CR>

" Esc
" alternative, ;;
imap jj <Esc>

" Save
nmap <leader>w :update<CR>

" Exit butffer
nmap <Leader>q :q<CR>

" Copy & paste to system clipboard with <Space>p and <Space>y
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>y "+y
vmap <Leader>d "+d
vmap <Leader>p "+p
vmap <Leader>P "+P
