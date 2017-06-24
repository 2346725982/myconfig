# Use true color tmux
```
brew uninstall tmux
brew install https://raw.githubusercontent.com/choppsv1/homebrew-term24/master/tmux.rb
```

# Fix `ctrl + h` not working in `iterm2`
```
cd
infocmp $TERM | sed 's/kbs=^[hH]/kbs=\\177/' > $TERM.ti
tic $TERM.ti
rm $TERM.ti
```
