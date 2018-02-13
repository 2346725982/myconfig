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

" Show/Hide NERDTree
nmap <F2> :NERDTreeToggle<CR>
nmap <F3> :NERDTreeFind<CR>

" Automatically close vim if only NERDTree left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

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

