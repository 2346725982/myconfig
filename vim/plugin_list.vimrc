call plug#begin('~/.config/nvim/plugged')

""" Color Schema
Plug 'iCyMind/NeoSolarized'               " the only neovim solarized with weird borader


""" Visualization
" Plug 'Yggdroot/indentLine'                " Highlight Indent
" Plug 'kshenoy/vim-signature'              " place, toggle and display marks
" Plug 'ihacklog/HiCursorWords'             " HiCursorWords

" Plug 'vim-airline/vim-airline'            " Airline
" Plug 'vim-airline/vim-airline-themes'     " Airline themes

""" Developing Tools

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

nmap <leader>o :CtrlP<CR>
nmap <leader>b :CtrlPBuffer<CR>
nmap <leader>m :CtrlPMRU<CR>

let g:ctrlp_root_markers = ['.ctrlp', '.git']
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:10,results:10'
let g:ctrlp_custom_ignore = 'tmp$\|\.git$\|\.hg$\|\.svn$\|.rvm$|.bundle$\|vendor'
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/vendor/*,*/\.git/*

" if executable('ag')
"   ame thing (:le = :left = left-align given range; % = all lines):
"   :%le
" endif

Plug 'ctrlpvim/ctrlp.vim'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" calls NERDTreeFind iff NERDTree is active, current window contains a modifiable file, and we're not in vimdiff
function! s:syncTree()
let s:curwnum = winnr()
NERDTreeFind
exec s:curwnum . "wincmd w"
endfunction

function! s:syncTreeIf()
if (winnr("$") > 1)
call s:syncTree()
endif
endfunction

" " returns true iff is NERDTree open/active
" function! rc:isNTOpen()        
"   return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
" endfunction
" 
" " calls NERDTreeFind iff NERDTree is active, current window contains a modifiable file, and we're not in vimdiff
" function! rc:syncTree()
"   if &modifiable && rc:isNTOpen() && strlen(expand('%')) > 0 && !&diff
"     NERDTreeFind
"     wincmd p
"   endif
" endfunction

" Shows NERDTree on start and synchronizes the tree with opened file when switching between opened windows
autocmd BufEnter * call s:syncTreeIf()

" Automatically close vim if only NERDTree left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Focus on opened view after starting (instead of NERDTree)
autocmd VimEnter * call s:syncTree()
au VimEnter * :wincmd w

" Prevent this command activation in NERDTree
" autocmd FileType nerdtree noremap <buffer> \a <nop>

" Auto refresh NERDTree files
autocmd CursorHold,CursorHoldI * if (winnr("$") > 1) | call NERDTreeFocus() | call g:NERDTree.ForCurrentTab().getRoot().refresh() | call g:NERDTree.ForCurrentTab().render() | wincmd w | endif

" Show/Hide NERDTree
" Show/Hide NERDTree
nmap <expr> <leader>a (winnr("$") == 1) ? ':NERDTreeFind<CR>' : ':wincmd o<CR>'

Plug 'scrooloose/nerdtree'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Plug 'jiangmiao/auto-pairs'               " Parens, brackets match
" Plug 'terryma/vim-expand-region'          " Expand Region
" Plug 'ervandew/supertab'                  " Tab for Completion

" Plug 'airblade/vim-gitgutter'             " Gitgutter, show git diff
" Plug 'tpope/vim-fugitive'                 " Fugitive(git)
" Plug 'dbakker/vim-projectroot'            " Project root

" Plug 'jremmen/vim-ripgrep'                                    " ripgrep

" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " fzf
" Plug 'junegunn/fzf.vim'

" Plug 'scrooloose/nerdcommenter'           " Comment out, uncomment
" Plug 'sbdchd/neoformat'                   " Tool for formatting
" Plug 'neomake/neomake'                    " Syntax Checking

" Plug 'jsfaint/gen_tags.vim'               " Generate ctags
" Plug 'Valloric/YouCompleteMe'             " Completion plugin

call plug#end()

""" Markdown
function! BuildComposer(info)
if a:info.status != 'unchanged' || a:info.force
if has('nvim')
!cargo build --release
else
!cargo build --release --no-default-features --features json-rpc
endif
endif
endfunction

" Plug 'euclio/vim-markdown-composer', { 'do': function('BuildComposer'), 'for': 'markdown' }

""" NERDTree
" Prevent Tab on NERDTree (breaks everything otherwise)
autocmd FileType nerdtree noremap <buffer> <Tab> <nop>

" Restore cursor position



" Show/Hide NERDTree
:nmap <F2> \a (winnr("$") == 1) ? ':NERDTreeFind<CR>' : ':wincmd o<CR>'
" Prevent this command activation in NERDTree
autocmd FileType nerdtree noremap <buffer> \a <nop>

""" C++
" Plug 'majutsushi/tagbar', { 'for': 'cpp' }             " Tagbar
" Plug 'zchee/deoplete-clang', { 'for': 'cpp' }          " Completion

filetype plugin indent on

set termguicolors
colorscheme NeoSolarized

" key mapping
nmap <leader>f :Files<CR>

au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") && &filetype != "gitcommit" |
\ execute("normal `\"") |
\ endif

