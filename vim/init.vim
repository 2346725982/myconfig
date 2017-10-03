for f in split(glob('$HOME/dotfiles/vim/*.vimrc'), '\n')
  exe 'source' f
endfor
