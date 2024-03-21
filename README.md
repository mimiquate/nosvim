# :feather: nosvim

Light and productive.

A very thin config layer for neovim.

### Motivation

Provide **minimal** defaults that enhance the native neovim experience significantly without too much
bloat.

Special care taken to **avoid** potentially **noisy** and **distracting** features. This means intentionally not included
popular features in other configs like gitsigns blame virtual text like gitsigns, or LSP error/warning diagnostics
virtual text.

### Main features

- Find, filter, preview files with [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- Programming languages support with [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- File explorer with [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua)
- Git integration with [vim-fugitive](https://github.com/tpope/vim-fugitive) and [vim-gitgutter](https://github.com/airblade/vim-gitgutter)
- GitHub integration with [vim-rhubarb](https://github.com/tpope/vim-rhubarb)
- Easily comment code with [vim-commentary](https://github.com/tpope/vim-commentary)
- Easily navigate quickfix with [vim-unimpaired](https://github.com/tpope/vim-unimpaired)
- Dev icons with [nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons) (needs a [patched font](#to-make-dev-icons-work) installed)

## Prerequisites

* [Neovim](https://neovim.io/) 0.9.2+
* tree-sitter-cli

### Suggested and optional dependencies

#### To improve telescope.nvim finding and filtering experience:

* [ripgrep](https://github.com/BurntSushi/ripgrep?tab=readme-ov-file#installation)
* [fd](https://github.com/sharkdp/fd?tab=readme-ov-file#on-ubuntu)

More details on https://github.com/nvim-telescope/telescope.nvim?tab=readme-ov-file#suggested-dependencies

#### To make dev icons work:

* A [patched font](https://github.com/nvim-tree/nvim-web-devicons?tab=readme-ov-file#requirements)

##### What is a patched font in this context?

A font that has been patched/extended with icons.

Great [video intro](https://www.youtube.com/watch?v=fR4ThXzhQYI) to Nerd Fonts by `chris@machine`.

## Installation

```sh
# 0. Backup step in case any existing nvim config
$ mv ~/.config/nvim ~/.config/nvim-backup

# 1. Clone nosvim config files into your system nvim config root
$ git clone https://github.com/mimiquate/nosvim ~/.config/nvim

# 2. Open neovim and wait for lazy.nvim plugin manager to install plugins
$ nvim
```

You can, at any time, manually type :Lazy to open lazy.nvim dashboard on demand
if necessary.

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
