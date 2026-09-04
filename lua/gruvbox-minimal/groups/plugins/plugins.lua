local M = {}

--- @param c GruvboxPalette
--- @param config GruvboxConfig
--- @return HighlightTable
function M.setup(c, config)
	vim.schedule(function()
		if package.loaded["hlchunk"] then
			vim.api.nvim_set_hl(0, "HLChunk1", { fg = c.base_08 })
			vim.api.nvim_set_hl(0, "HLChunk2", { fg = c.base_08 })
			vim.api.nvim_set_hl(0, "HLIndent", { fg = c.base_05 })
			vim.api.nvim_set_hl(0, "HLIndent1", { fg = c.base_05 })
		end
	end)

	return {
		--- render-markdown.nvim
		RenderMarkdownH1Bg = { bg = c.bg_red, fg = c.red, bold = true },
		RenderMarkdownH2Bg = { bg = c.bg_orange, fg = c.orange, bold = true },
		RenderMarkdownH3Bg = { bg = c.bg_yellow, fg = c.yellow, bold = true },
		RenderMarkdownH4Bg = { bg = c.bg_green, fg = c.green, bold = true },
		RenderMarkdownH5Bg = { bg = c.bg_cyan, fg = c.cyan, bold = true },
		RenderMarkdownH6Bg = { bg = c.bg_blue, fg = c.blue, bold = true },
		RenderMarkdownUnchecked = { fg = c.red, bold = true },
		RenderMarkdownChecked = { fg = c.green, bold = true },
		RenderMarkdownTodo = { fg = c.yellow, bold = true },
		RenderMarkdownCode = { bg = c.base_03 },
		RenderMarkdownCodeInfo = { fg = c.base_09, italic = true },
		RenderMarkdownCodeBorder = { bg = c.base_04, italic = true },
		RenderMarkdownCodeFallback = { link = "Normal" },
		RenderMarkdownQuote = { fg = c.base_12 },
		RenderMarkdownBullet = { fg = c.base_11, bold = true },
		RenderMarkdownDash = { fg = c.base_05, bold = true },
		RenderMarkdownMath = { fg = c.base_13 },
		RenderMarkdownLink = { fg = c.blue },
		RenderMarkdownLinkTitle = { fg = c.blue },

		--- lewis6991/gitsigns.nvim
		GitSignsAdd = { fg = c.green },
		GitSignsChange = { fg = c.blue },
		GitSignsDelete = { fg = c.red },
		GitSignsAddLn = { bg = c.bg_green },
		GitSignsChangeLn = { bg = c.bg_blue },
		GitSignsDeleteLn = { bg = c.bg_red },

		-- kosayoda/nvim-lightbulb
		LightBulbSign = { fg = c.yellow, bg = c.bg_yellow },
		LightBulbVirtualText = { fg = c.yellow, bg = c.bg_yellow },
		LightBulbFloatWin = { fg = c.yellow, bg = c.bg_yellow },
		LightBulbNumber = { fg = c.yellow, bg = config.transparent and "none" or c.base_02 },
		LightBulbLine = { fg = c.yellow, bg = c.bg_yellow },

		-- folke/flash.nvim
		FlashLabel = { fg = c.base_00, bg = c[config.accent] },
		-- lukas-reineke/indent-blankline.nvim
		IblIndent = { fg = c.base_05 },
		IblScope = { fg = c.base_08 },
		-- beacon.nvim
		Beacon = { bg = c.base_09 },
		-- m-pilia/vim-mediawiki
		wikiItalic = { italic = true },
		wikiBold = { bold = true },
		wikiBoldAndItalic = { bold = true, italic = true },
		wikiH1 = { fg = c.red, bg = c.bg_red, bold = true },
		wikiH2 = { fg = c.green, bg = c.bg_green, bold = true },
		wikiH3 = { fg = c.yellow, bg = c.bg_yellow, bold = true },
		wikiH4 = { fg = c.cyan, bg = c.bg_cyan, bold = true },
		wikiH5 = { fg = c.magenta, bg = c.bg_magenta, bold = true },
		wikiH6 = { bold = true },
		wikiLink = { fg = c.base_10, italic = true },
		wikiLinkPage = { fg = c.base_13 },
		wikiLinkName = { fg = c.base_15, bold = true },
		wikiLinkAttribute = { fg = c.base_15, italic = false },
		wikiExternalLink = { fg = c.base_10, italic = true },
		wikiExternalLinkDelimiter = { fg = c.base_10 },
		wikiExternalLinkName = { fg = c.base_15, bold = true },
		wikiTemplate = { fg = c.base_10 },
		wikiTemplateDelim = { fg = c.base_10 },
		wikiTemplateName = { fg = c.base_13, bold = true },
		wikiTemplateParam = { fg = c.base_15 },
		wikiTableSeparator = { fg = c.base_10 },
		wikiTableHeadingCell = { fg = c.base_15, bold = true },
		wikiPre = { fg = c.base_12, bg = c.base_03, bold = false },
		htmlPre = { link = "wikiPre" },
		wikiSource = { link = "wikiPre" },
		wikiSyntaxHL = { link = "wikiPre" },
		wikiParaFormatChar = { fg = c.cyan },
	}
end

return M
