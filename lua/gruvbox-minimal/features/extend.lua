local M = {}

--- @param config GruvboxConfig
function M.setup(config)
	if config.extend.todotxt then
		vim.treesitter.query.set(
			"todotxt",
			"injections",
			[[;; extends
            ((task) @injection.content
            (#set! injection.language "markdown_inline")
            (#set! injection.combined))
            ]]
		)
	end
end

return M
