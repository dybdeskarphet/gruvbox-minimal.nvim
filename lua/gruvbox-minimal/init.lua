local M = {}

M.config = {
	transparent = false,
	italic_comments = false,
}

function M.setup(opts)
	M.config = vim.tbl_deep_extend("force", M.config, opts or {})
end

function M.load()
	local palette = require("gruvbox-minimal.palette")
	local groups = require("gruvbox-minimal.groups").setup(palette, M.config)

	for group, settings in pairs(groups) do
		vim.api.nvim_set_hl(0, group, settings)
	end
end

return M
