local M = {}

--- @param c GruvboxPalette
--- @param config GruvboxConfig
function M.setup(c, config)
	local groups = vim.tbl_deep_extend(
		"force",
		require("gruvbox-minimal.groups.editor").setup(c, config),
		require("gruvbox-minimal.groups.syntax").setup(c, config),
		require("gruvbox-minimal.groups.lsp").setup(c, config),
		require("gruvbox-minimal.groups.plugins.mini").setup(c, config),
		require("gruvbox-minimal.groups.plugins.plugins").setup(c, config)
	)

	if config.overrides and next(config.overrides) ~= nil then
		groups = vim.tbl_deep_extend("force", groups, config.overrides)
	end

	return groups
end

return M
