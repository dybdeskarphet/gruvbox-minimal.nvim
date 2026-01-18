<p align="center">
    <img width="100" src="./assets/logo.png"/></h1>
</p>

<p align="center">
    <strong>Gruvbox Minimal</strong>
</p>

<p align="center">
    A <a href="https://github.com/sainnhe/gruvbox-material">Gruvbox Material</a> theme conceptually inspired by <a href="https://github.com/tonsky/sublime-scheme-alabaster">Alabaster</a>.
</p>

## Preview

<img height="450" src="./assets/screenshot_01.png"/></h1>
<img height="450" src="./assets/screenshot_01_light.png"/></h1>

<details><summary>More previews</summary>
<img height="450" src="./assets/screenshot_02.png"/></h1>
<img height="450" src="./assets/screenshot_02_light.png"/></h1>
<img height="450" src="./assets/screenshot_03.png"/></h1>
<img height="450" src="./assets/screenshot_03_light.png"/></h1>
</details>

## Installation

<details><summary>lazy.nvim</summary>

```lua
{
    "dybdeskarphet/gruvbox-minimal.nvim"
    config = {
        vim.cmd.colorscheme("gruvbox-minimal")
    }
}
```

</details>

<details><summary>mini.deps</summary>

```lua
MiniDeps.add({
    source = "dybdeskarphet/gruvbox-minimal.nvim"
})
MiniDeps.now(function()
    -- Add the relevant configuration options if you want to
    vim.cmd.colorscheme("gruvbox-minimal")
end)
```

</details>

## Configuration

The default configuration settings are as follows:

```lua
require("gruvbox-minimal").setup({
	transparent = false, -- Sets all the major background values to 'none'
	italic_comments = false, -- Italic comments
	italic_functions = true, -- Italic functions and methods
	contrast = "low", -- Available values: "high", "low"
	theme = "dark", -- Available values: "dark", "light"
	accent = "red", -- Changes the definition (functions, structs etc.) colors. Available values: "red", "orange", "yellow", "green", "cyan", "blue", "magenta"
    semantic_highlights = true, -- Uses LSP semantic highlighting, disable this if you want the highlights of =< 0.3.1
	overrides = {
      -- Type = { fg = '#83a598' }, -- Hex override
      -- ['Type'] = { link = '@function.method.call' }, -- Link to another group
	},
})

-- Activates the colorscheme
vim.cmd.colorscheme('gruvbox-minimal')
```

## Themed plugins

- [mini.nvim](https://github.com/nvim-mini/mini.nvim)
- [MeanderingProgrammer/render-markdown.nvim](https://github.com/MeanderingProgrammer/render-markdown.nvim)
- [shellRaining/hlchunk.nvim](https://github.com/shellRaining/hlchunk.nvim)
