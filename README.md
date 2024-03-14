# :feather: nosvim

Light and productive.

A very thin config layer for neovim.

### Main features

- Find, filter, preview files with [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- Syntax highlighting of any language with [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- Autocompletions with [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- LSP integration with [mason.nvim](https://github.com/williamboman/mason.nvim) and [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- File explorer with [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua)
- Git integration with [vim-fugitive](https://github.com/tpope/vim-fugitive) and [vim-gitgutter](https://github.com/airblade/vim-gitgutter)
- GitHub integration with [vim-rhubarb](https://github.com/tpope/vim-rhubarb)
- Easily comment code with [vim-commentary](https://github.com/tpope/vim-commentary)
- Easily navigate quickfix with [vim-unimpaired](https://github.com/tpope/vim-unimpaired)
- Dev icons with [nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons) (needs a [patched font](https://github.com/nvim-tree/nvim-web-devicons?tab=readme-ov-file#requirements) installed)

## Prerequisites

* [Neovim](https://neovim.io/) 0.9.2+
* tree-sitter-cli

### Optional

* [ripgrep](https://github.com/BurntSushi/ripgrep?tab=readme-ov-file#installation)

## Installation

```sh
# 0. Backup step in case any existing nvim config
$ mv ~/.config/nvim ~/.config/nvim-backup

# 1. Clone nosvim
$ git clone https://github.com/mimiquate/nosvim ~/.config/nvim

# 2. Open neovim and wait for plugins to be installed
$ nvim
```

## Update

```sh
$ cd ~/.config/nvim
$ git pull
```

## Install support for programming languages

Using nvim-treesitter commands

```
# inside nvim
:TSInstall <language_to_install>
```

More details: https://github.com/nvim-treesitter/nvim-treesitter?tab=readme-ov-file#language-parsers

## Check installation health

```
# inside nvim
:checkhealth()
```

## Extra customizations

Extra customizations and/or overrides can be placed under `~/.nvim.lua`, which will be loaded
automatically if present.

### Plugins

To add a new plugin, you need to add a new file under `~/.config/nvim/lua/plugins/` according to
lazy.nvim plugins spec specification.

See other existing files under that directory for examples on how to configure.


## License

   Copyright 2024 Mimiquate

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.
