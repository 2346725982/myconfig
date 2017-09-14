for f in split(glob('$HOME/dotfiles/neovim/*.vimrc'), '\n')
  exe 'source' f
endfor
