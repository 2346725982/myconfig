let mapleader="\<SPACE>"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Built-in Function
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Cancel highlight
nnoremap <F3> :set hlsearch!<CR>

" Auto format: remove extra space
nnoremap <F4> :%s/\s\+$//e<CR>
inoremap <F4> <Esc>:%s/\s\+$//e<CR>i

" Terminal
nnoremap <F5> :below 10sp term://$SHELL<CR>i
inoremap <F5> <Esc>:below 10sp term://$SHELL<CR>i
tnoremap <F5> <C-\><C-n>:q<CR>
tnoremap <Esc> <C-\><C-n>

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

" Tab, deprecated, using split and buffer
" nmap T :tabedit<CR>
" nmap H gT
" nmap L gt

" Split
nmap <C-J> <C-W>j
nmap <C-K> <C-W>k
nmap <C-L> <C-W>l
nmap <C-H> <C-W>h
imap <C-J> <Esc><C-W>j
imap <C-K> <Esc><C-W>k
imap <C-L> <Esc><C-W>l
imap <C-H> <Esc><C-W>h
tmap <C-J> <C-\><C-n><C-W>j
tmap <C-K> <C-\><C-n><C-W>k
tmap <C-L> <C-\><C-n><C-W>l
tmap <C-H> <C-\><C-n><C-W>h

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Plugin
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" NerdTree
map <F2> :NERDTreeToggle<CR>

"" Tagbar
map <F10> :TagbarToggle<CR>

"" CtrlP
nnoremap <Leader>o :CtrlP<CR>                     " Open Menu
nnoremap <Leader>b :CtrlPBuffer<CR>               " Buffer menu
nnoremap <Leader>m :CtrlPMRUFiles<CR>             " Most recently used

"" ack.vim
nnoremap <Leader>a :Ack!<Space>

""" expand region
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

""" Easy-Motion
" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)

" <Leader>f{char} to move to {char}
map  <Leader>F <Plug>(easymotion-bd-f)
nmap <Leader>F <Plug>(easymotion-overwin-f)

" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>W <Plug>(easymotion-bd-w)
nmap <Leader>W <Plug>(easymotion-overwin-w)
