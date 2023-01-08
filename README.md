# My NeoVim Configs


- clone and run

```bash
git submodule init
git submodule update
```

- install fonts for feline

```bash
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font
```

- select installed font in `iTerm2 -> Preferences -> Profile -> Text -> Font`


- install `packer`
```bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

- install Vundle
```bash
git clone https://github.com/VundleVim/Vundle.vim.git ~/.config/nvim/bundle/Vundle.vim
```


- install plugins
```bash
nvim +PackerSync
nvim +PluginInstall +qall
```

- use older node for Copilot
```bash
brew install node@16
brew link --overwrite node@16
```
