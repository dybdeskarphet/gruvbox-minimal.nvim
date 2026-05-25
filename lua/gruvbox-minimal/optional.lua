local M = {}

--- @param config GruvboxConfig
function M.setup(config)
	if config.markdown_docstring.python then
		vim.treesitter.query.set(
			"python",
			"highlights",
			[[;; extends
            ((expression_statement
               (string) @variable)
             (#set! priority 100))

            ((expression_statement
               (string
                 (string_content) @variable))
            (#set! priority 100))]]
		)

		vim.treesitter.query.set(
			"python",
			"injections",
			[[;; extends
            ((expression_statement
               (string
                 (string_content) @injection.content))
             (#set! injection.language "markdown"))]]
		)
	end
end

return M
