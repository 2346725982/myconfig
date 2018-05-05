syntax enable

set background=dark

" => Tab, Indent, Text
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set smarttab            " Be smart when using tabs
set expandtab           " Insert spaces when TAB is pressed.
set tabstop=2           " Render TABs using this many spaces.
set shiftwidth=2        " Indentation amount for < and > commands.

set autoindent          " Auto indent
set smartindent         " Smart indent

set wrap
set linebreak
set nolist              " list disables linebreak

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set showcmd             " Show (partial) command in status line.
set showmatch           " Show matching brackets.
set showmode            " Show current mode.
set ruler               " Show the line and column numbers of the cursor.
set number              " Show the line numbers on the left side.
set formatoptions+=o    " Continue comment marker in new lines.
set textwidth=0         " Hard-wrap long lines as you type them.

set noerrorbells        " No beeps.
set modeline            " Enable modeline.
set linespace=0         " Set line-spacing to minimum.
set nojoinspaces        " Prevents inserting two spaces after punctuation on a join (J)

set splitbelow          " Horizontal split below current.
set splitright          " Vertical split to right of current.

set display+=lastline
set nostartofline       " Do not jump to first character with page commands.

set list                " Show problematic characters.
set hlsearch            " Highlight search results.
set ignorecase          " Make searching case insensitive
set smartcase           " ... unless the query has capital letters.
set incsearch           " Incremental search.
set gdefault            " Use 'g' flag by default with :s/foo/bar/.
set magic               " Use 'magic' patterns (extended regular expressions).

" => Spell
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set spellfile=$HOME/.config/nvim/spell/en.utf-8.add
" syn match myExCapitalWords +\<\w*[A-Z]\S*\>+ contains=@NoSpell

" => Copy/paste
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set clipboard=unnamed

" => Built-in plug setting
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" netrw
" NOTE: wanted to use this to replace NERDTree. Turned out too much work. Gave
" up.
" :help netrw for more details.
let g:netrw_banner = 0       " remove directory banner
let g:netrw_liststyle = 3    " tree view
let g:netrw_browse_split = 4 " open in previous window
let g:netrw_altv = 1
let g:netrw_winsize = 15 " The width of the directory explorer can be fixed to x%
