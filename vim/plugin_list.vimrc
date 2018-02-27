call plug#begin('~/.config/nvim/plugged')

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""                       Developing Tools
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  Asynchronous Lint Engine
"  https://github.com/w0rp/ale#usage-completion
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

Plug 'w0rp/ale'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  Syntax Highlight pack for MANY languages
"  https://github.com/sheerun/vim-polyglot
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

Plug 'sheerun/vim-polyglot'

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

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""                       Editing Tools
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  Auto Save
"  https://github.com/vim-scripts/vim-auto-save
"
"  Note: a simple vim plug to enable auto save
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:auto_save = 1                  " enable AutoSave on Vim startup
let g:auto_save_in_insert_mode = 0   " do not save while in insert mode

Plug 'vim-scripts/vim-auto-save'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  fzf.vim
"  https://github.com/junegunn/fzf.vim
"
"  Note: depends on fzf (https://github.com/junegunn/fzf)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <Leader>t :Files<CR>
nmap <Leader>r :Tags<CR>

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" nmap <leader>o :CtrlP<CR>
" nmap <leader>b :CtrlPBuffer<CR>
" nmap <leader>m :CtrlPMRU<CR>
" 
" let g:ctrlp_root_markers = ['.ctrlp', '.git']
" let g:ctrlp_match_window = 'top,order:ttb,min:1,max:10,results:10'
" let g:ctrlp_custom_ignore = 'tmp$\|\.git$\|\.hg$\|\.svn$\|.rvm$|.bundle$\|vendor'
" let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
" set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/vendor/*,*/\.git/*

" if executable('ag')
"   ame thing (:le = :left = left-align given range; % = all lines):
"   :%le
" endif

" Plug 'ctrlpvim/ctrlp.vim'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Show/Hide NERDTree
nmap <F2> :NERDTreeToggle<CR>

" Automatically close vim if only NERDTree left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

Plug 'scrooloose/nerdtree'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""                       Visualization
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'iCyMind/NeoSolarized'               " the only neovim solarized with weird borader
Plug 'Yggdroot/indentLine'                " Highlight Indent
Plug 'ihacklog/HiCursorWords'             " HiCursorWords

" Plug 'kshenoy/vim-signature'              " place, toggle and display marks
" Plug 'vim-airline/vim-airline'            " Airline
" Plug 'vim-airline/vim-airline-themes'     " Airline themes

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

