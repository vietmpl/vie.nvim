# vie.nvim
<div align="center" >
    <img width="256" height="256" alt="icon" src="https://github.com/user-attachments/assets/0fd21f26-4ee1-4404-9209-2264f947659c" />
</div>

Supercharge your Vie experience in Neovim!

## Install

```lua
vim.pack.add{ 'https://github.com/vietmpl/vie.nvim' }
```

## Syntax highlighting

> Requires [`nvim-treesitter`](https://github.com/nvim-treesitter/nvim-treesitter) to be installed.

This plugin provides syntax highlighting for `.vie` files. If the filename
includes a subextension (for example, `schema.yml.vie`), Vie syntax will be
injected into the base file's syntax.

Once the plugin is loaded, you can install the Tree-sitter parser with:

```lua
require("nvim-treesitter").install({"vie"})
```
