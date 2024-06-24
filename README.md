# ForestVim

#### Theme
[git repo](https://github.com/sainnhe/everforest)

#### LSP
[git repo](https://github.com/VonHeikemen/lsp-zero.nvim)

## Prerequisites

#### Install ripgrep
For further instructions please view the git repo [here](https://github.com/BurntSushi/ripgrep).

Arch
```
sudo pacman -S ripgrep
```

Linux
```
sudo apt-get install ripgrep
```

#### Install Packer
For further instructions please view the git repo [here](https://github.com/wbthomason/packer.nvim)

Linux
```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

#### Mason
[git repo](https://github.com/williamboman/mason.nvim)
Visual package manager

---
## KeyBindings

#### Update Plugins
```
:PackerSync
```

#### Search Keybindings
```
:WhichKey
```

## Plugins
#### Harpoon
[git repo](https://github.com/ThePrimeagen/harpoon)
This is used for toggling a quick switching file menu

#### Telescope
[git repo](https://github.com/nvim-telescope/telescope.nvim)
UI for moving through files

#### Search Keybindings
[git repo](https://github.com/folke/which-key.nvim)
```
:WhichKey
```

#### Auto Pairs
[git repo](https://github.com/jiangmiao/auto-pairs)
Auto closes certain characters `() {} [] ""`

#### Undotree
[git repo](https://github.com/mbbill/undotree)
Shows visual representation of history (undo history, not git history)

#### Vim Fugitive
[git repo](https://github.com/tpope/vim-fugitve)
Works as a git wrapper for current directory
