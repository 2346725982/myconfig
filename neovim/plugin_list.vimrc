call plug#begin('~/.config/nvim/plugged')

""" Color Schema
Plug 'iCyMind/NeoSolarized'               " Neo solarized

""" Python
Plug 'davidhalter/jedi-vim',   " Completion
Plug 'zchee/deoplete-jedi',    " Completion

""" C++
Plug 'majutsushi/tagbar', { 'for': 'cpp' }             " Tagbar
Plug 'Rip-Rip/clang_complete', { 'for': 'cpp', 'do': 'make install'} " Completion

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

Plug 'scrooloose/nerdcommenter'           " Comment out, uncomment
Plug 'sbdchd/neoformat'                   " Tool for formatting
Plug 'neomake/neomake'                    " Syntax Checking
Plug 'c0r73x/neotags.nvim'                " Tags (default disabled)

Plug 'mileszs/ack.vim'                                        " Ack, search in project
Plug 'kien/ctrlp.vim'                                         " CtrlP
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }        " Nerdtree

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } " Auto Completion

call plug#end()
