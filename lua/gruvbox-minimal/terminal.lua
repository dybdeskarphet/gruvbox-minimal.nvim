local M = {}

--- @param c table
--- @param config GruvboxConfig
function M.setup(c, config)
	if not config.terminal_colors then
		return
	end

	vim.g.terminal_color_0 = c.base_00
	vim.g.terminal_color_1 = c.red
	vim.g.terminal_color_2 = c.green
	vim.g.terminal_color_3 = c.yellow
	vim.g.terminal_color_4 = c.blue
	vim.g.terminal_color_5 = c.magenta
	vim.g.terminal_color_6 = c.cyan
	vim.g.terminal_color_7 = c.base_15

	vim.g.terminal_color_8 = c.base_00
	vim.g.terminal_color_9 = c.red
	vim.g.terminal_color_10 = c.green
	vim.g.terminal_color_11 = c.yellow
	vim.g.terminal_color_12 = c.blue
	vim.g.terminal_color_13 = c.magenta
	vim.g.terminal_color_14 = c.cyan
	vim.g.terminal_color_15 = c.base_15
end

return M
