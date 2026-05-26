local M = {}

--- @type GruvboxConfig
M.config = {
	transparent = false,
	italic_comments = false,
	italic_functions = true,
	contrast = "low",
	theme = "dark",
	accent = "red",
	semantic_highlights = true,
	overrides = {},
	terminal_colors = true,
	markdown_docstring = {
		python = false,
	},
}

--- Colorscheme setup function
--- @param opts? GruvboxConfig
function M.setup(opts)
	M.config = vim.tbl_deep_extend("force", M.config, opts or {})
end

--- Load the palette and apply all highlight groups
function M.load()
	--- @type GruvboxPalette
	local palette = require("gruvbox-minimal.palette").get_palette(M.config.contrast, M.config.theme)
	--- @type HighlightTable
	local groups = require("gruvbox-minimal.groups").setup(palette, M.config)

	for group, settings in pairs(groups) do
		vim.api.nvim_set_hl(0, group, settings)
	end

	require("gruvbox-minimal.terminal").setup(palette, M.config)
	require("gruvbox-minimal.optional").setup(M.config)
end

return M
