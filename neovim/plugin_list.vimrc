call plug#begin('~/.config/nvim/plugged')

""" Color Schema
Plug 'iCyMind/NeoSolarized'               " the only neovim solarized with weird borader
Plug 'rakr/vim-one'                       " tired of solarized
Plug 'joshdick/onedark.vim'               "

""" Visualization
Plug 'Yggdroot/indentLine'                " Highlight Indent
Plug 'terryma/vim-expand-region'          " Expand Region
Plug 'kshenoy/vim-signature'              " place, toggle and display marks
Plug 'ihacklog/HiCursorWords'             " HiCursorWords

Plug 'vim-airline/vim-airline'            " Airline
Plug 'vim-airline/vim-airline-themes'     " Airline themes

""" Developing Tools
Plug 'jiangmiao/auto-pairs'               " Parens, brackets match
Plug 'ervandew/supertab'                  " Tab for Completion

Plug 'airblade/vim-gitgutter'             " Gitgutter, show git diff
Plug 'tpope/vim-fugitive'                 " Fugitive(git)
Plug 'dbakker/vim-projectroot'            " Project root

" Plug 'mileszs/ack.vim'                                        " Ack, search in project
" Plug 'kien/ctrlp.vim'                                         " CtrlP
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " fzf
Plug 'junegunn/fzf.vim'
Plug 'jremmen/vim-ripgrep'                                    " ripgrep
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }        " Nerdtree
Plug 'kien/ctrlp.vim'                                         " ctrlp

Plug 'scrooloose/nerdcommenter'           " Comment out, uncomment
Plug 'sbdchd/neoformat'                   " Tool for formatting
Plug 'neomake/neomake'                    " Syntax Checking

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } " Auto Completion

Plug 'jsfaint/gen_tags.vim'               " Generate ctags

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

Plug 'euclio/vim-markdown-composer', { 'do': function('BuildComposer'), 'for': 'markdown' }

""" Python
Plug 'davidhalter/jedi-vim', {'for': 'python'}   " Completion
Plug 'zchee/deoplete-jedi', {'for': 'python'}    " Completion

""" C++
Plug 'majutsushi/tagbar', { 'for': 'cpp' }             " Tagbar
Plug 'zchee/deoplete-clang', { 'for': 'cpp' }          " Completion

call plug#end()

filetype plugin indent on
