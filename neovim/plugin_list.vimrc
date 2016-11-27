call plug#begin('~/.config/nvim/plugged')

""" Color Schema
" Plug 'morhetz/gruvbox'                  " grvvbox, changable
Plug 'iCyMind/NeoSolarized'               " Neo solarized

""" Visualization
Plug 'Yggdroot/indentLine'                " Highlight Indent
Plug 'terryma/vim-expand-region'          " Expand Region
Plug 'kshenoy/vim-signature'              " place, toggle and display marks
Plug 'ihacklog/HiCursorWords'             " HiCursorWords
Plug 'vim-airline/vim-airline'            " Airline
Plug 'vim-airline/vim-airline-themes'     " Airline themes

""" Developing Tools
Plug 'scrooloose/nerdcommenter'           " Comment out, uncomment
Plug 'mileszs/ack.vim'                    " Ack, search in project
Plug 'jiangmiao/auto-pairs'               " Parens, brackets match
Plug 'neomake/neomake'                    " Syntax Checking
Plug 'ervandew/supertab'                  " Tab for Completion
Plug 'tpope/vim-fugitive'                 " Fugitive(git)
Plug 'airblade/vim-gitgutter'             " Gitgutter, show git diff
Plug 'kien/ctrlp.vim'                     " CtrlP
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }        " Nerdtree
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } " Auto Completion

""" Python
Plug 'tmhedberg/SimpylFold', { 'for': 'python' }  " Fold
Plug 'davidhalter/jedi-vim', { 'for': 'python' }  " Completion
Plug 'zchee/deoplete-jedi', { 'for': 'python' }   " Completion

""" C++
Plug 'ludovicchabant/vim-gutentags', { 'for': 'cpp' }  " Generate tags
Plug 'majutsushi/tagbar', { 'for': 'cpp' }             " Tagbar
Plug 'Rip-Rip/clang_complete', { 'for': 'cpp', 'do': 'make install'} " Completion

call plug#end()
