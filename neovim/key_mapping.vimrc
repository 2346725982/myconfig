""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""               Function shortcut
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <F2> :NERDTreeToggle<CR>
nmap <F3> :set hlsearch!<CR>
nmap <F4> :Neoformat<CR>
nmap <F10> :TagbarToggle<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""               Nomal key shortcut
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

"" Ack (Plug-in)
nmap <Leader>a :Ack!<Space>

"" CtrlP (Plug-in)
nmap <Leader>o :CtrlP<CR>
nmap <Leader>b :CtrlPBuffer<CR>
nmap <Leader>m :CtrlPMRUFiles<CR>

" Esc
imap jj <Esc>

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
