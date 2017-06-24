call plug#begin('~/.config/nvim/plugged')

""" Color Schema
Plug 'iCyMind/NeoSolarized'               " the only neovim solarized with weird borader

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

Plug 'mileszs/ack.vim'                                        " Ack, search in project
Plug 'kien/ctrlp.vim'                                         " CtrlP
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }        " Nerdtree

Plug 'scrooloose/nerdcommenter'           " Comment out, uncomment
Plug 'sbdchd/neoformat'                   " Tool for formatting
Plug 'neomake/neomake'                    " Syntax Checking

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } " Auto Completion

Plug 'jsfaint/gen_tags.vim'               " Generate ctags

""" Python
Plug 'davidhalter/jedi-vim', {'for': 'python'},   " Completion
Plug 'zchee/deoplete-jedi', {'for': 'python'},    " Completion

""" C++
Plug 'majutsushi/tagbar', { 'for': 'cpp' }             " Tagbar
Plug 'vim-scripts/a.vim', { 'for': 'cpp' }             " Switch between header and source
Plug 'zchee/deoplete-clang', { 'for': 'cpp' }          " Completion

call plug#end()

filetype plugin indent on
