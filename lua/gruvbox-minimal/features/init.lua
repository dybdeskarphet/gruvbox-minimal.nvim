local M = {}

function M.setup(c, config)
	require("gruvbox-minimal.features.terminal").setup(c, config)
	require("gruvbox-minimal.features.docstring").setup(config)
end

return M
