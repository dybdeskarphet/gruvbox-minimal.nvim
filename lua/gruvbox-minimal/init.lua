--- @alias GruvboxContrast "low" | "high"
--- @alias GruvboxTheme "dark" | "light"
--- @alias GruvboxAccent "red" | "orange" | "yellow" | "green" | "cyan" | "blue" | "magenta"

--- @class GruvboxConfig
--- @field transparent? boolean
--- @field italic_comments? boolean
--- @field italic_functions? boolean
--- @field contrast? GruvboxContrast
--- @field theme? GruvboxTheme
--- @field accent? GruvboxAccent
--- @field semantic_highlights? boolean
--- @field overrides? table<string, table> -- accepts hex colors or links

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
}

--- @param opts? GruvboxConfig
function M.setup(opts)
	M.config = vim.tbl_deep_extend("force", M.config, opts or {})
end

function M.load()
	local palette = require("gruvbox-minimal.palette").get(M.config.contrast, M.config.theme)
	local groups = require("gruvbox-minimal.groups").setup(palette, M.config)

	for group, settings in pairs(groups) do
		vim.api.nvim_set_hl(0, group, settings)
	end
end

return M
