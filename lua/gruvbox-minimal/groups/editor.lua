local M = {}

--- @param c GruvboxPalette
--- @param config GruvboxConfig
--- @return HighlightTable
function M.setup(c, config)
	return {
		-- Essentials
		Normal = { fg = c.base_15, bg = config.transparent and "none" or c.base_01 },
		NormalNC = { link = "Normal" },
		NormalFloat = { fg = c.base_15, bg = config.transparent and "none" or c.base_02 },
		FloatBorder = { fg = c.base_08, bg = config.transparent and "none" or c.base_02 },
		FloatTitle = { fg = c.base_10, bg = config.transparent and "none" or c.base_02 },
		FloatFooter = { link = "FloatTitle" },
		SignColumn = { link = "Normal" },
		IncSearch = { bg = c.base_08, fg = c.base_00 },
		Substitute = { bg = c.base_06, fg = c.base_15 },
		LineNr = { fg = c.base_06 },
		LineNrAbove = { fg = c.base_06 },
		LineNrBelow = { fg = c.base_06 },
		CursorLineNr = { fg = c.base_15, bold = true },
		CursorLineFold = { fg = c.base_06 },
		ModeMsg = { fg = c.green },
		MsgArea = { link = "Normal" },
		MoreMsg = { fg = c.blue },
		Question = { fg = c.cyan },
		QuickFixLine = { fg = c.cyan },
		Search = { bg = c.base_10, fg = c.base_00 },
		SnippetTabstop = { fg = c.base_15, bg = c.base_01, underline = true },
		SpecialKey = { fg = c.cyan },

		-- Spell
		SpellBad = { sp = c.red, undercurl = true },
		SpellCap = { sp = c.blue, undercurl = true },
		SpellLocal = { sp = c.cyan, undercurl = true },
		SpellRare = { sp = c.magenta, undercurl = true },

		-- StatusLine
		StatusLine = { bg = config.transparent and "none" or c.base_03, fg = c.base_13 },
		StatusLineNC = { bg = config.transparent and "none" or c.base_03, fg = c.base_13 },
		StatusLineTerm = { link = "StatusLine" },
		StatusLineTermNC = { link = "StatusLineNC" },

		-- TabLine
		TabLine = { bg = config.transparent and "none" or c.base_01, fg = c.base_10 },
		TabLineFill = { link = "TabLine" },
		TabLineSel = { bg = c.base_03, fg = c.base_13 },

		-- Pmenu
		Pmenu = { link = "NormalFloat" },
		PmenuSel = { fg = c.base_15, bg = c.base_04 },
		PmenuKind = { fg = c.cyan, bg = c.base_02 },
		PmenuKindSel = { bg = c.base_04 },
		PmenuExtra = { link = "Pmenu" },
		PmenuExtraSel = { link = "PmenuSel" },
		PmenuSbar = { link = "Pmenu" },
		PmenuThumb = { bg = c.base_06 },
		PmenuMatch = { fg = c.base_15, bg = c.base_02, bold = true },
		PmenuMatchSel = { fg = c.base_15, bg = c.base_04, bold = true },
		ComplMatchIns = { fg = c.base_15, bg = c.base_04, bold = true },

		-- Cursor
		Cursor = { reverse = true },
		CursorColumn = { bg = c.base_03 },
		CursorIM = { reverse = true },
		CursorLine = { bg = c.base_03 },
		TermCursor = { reverse = true },
		lCursor = { reverse = true },
		MatchParen = { bg = c.base_05 },

		-- Diff
		DiffAdd = { fg = c.green },
		DiffChange = { fg = c.yellow },
		DiffDelete = { fg = c.red },
		DiffText = { fg = c.yellow, bg = c.bg_yellow },
		DiffTextAdd = { fg = c.green, bg = c.bg_green },

		-- Others
		ColorColumn = { bg = c.base_03 },
		Conceal = { bg = c.base_09 },
		CurSearch = { fg = c.base_00, bg = c.base_13 },
		Directory = { fg = c.cyan },
		EndOfBuffer = { fg = c.base_06 },
		ErrorMsg = { fg = c.red },
		WinSeparator = { fg = c.base_10 },
		NonText = { fg = c.base_06 },
		Title = { fg = c.yellow, bold = true },
		Visual = { bg = c.base_04 },
		VisualNOS = { bg = c.base_04 },
		WarningMsg = { fg = c.yellow },
		WhiteSpace = { fg = c.base_06 },
		WildMenu = { fg = c.base_15, bg = c.base_04 },
		Folded = { fg = c.base_09, bg = config.transparent and "none" or c.base_03, italic = true },
		FoldColumn = { fg = c.red },
		WinBarNC = { bg = config.transparent and "none" or c.base_01, fg = c.base_10 },
		WinBar = { bg = c.base_03, fg = c.base_13 },

		-- Diagnostics
		DiagnosticError = { fg = c.red },
		DiagnosticWarn = { fg = c.orange },
		DiagnosticInfo = { fg = c.cyan },
		DiagnosticHint = { fg = c.blue },
		DiagnosticOk = { fg = c.green },
		DiagnosticVirtualTextError = { bg = c.bg_red, fg = c.red },
		DiagnosticVirtualTextWarn = { bg = c.bg_orange, fg = c.orange },
		DiagnosticVirtualTextInfo = { bg = c.bg_cyan, fg = c.cyan },
		DiagnosticVirtualTextHint = { bg = c.bg_blue, fg = c.blue },
		DiagnosticVirtualTextOk = { bg = c.bg_green, fg = c.green },
		DiagnosticUnderlineError = { sp = c.red, underline = true },
		DiagnosticUnderlineWarn = { sp = c.orange, underline = true },
		DiagnosticUnderlineInfo = { sp = c.cyan, underline = true },
		DiagnosticUnderlineHint = { sp = c.blue, underline = true },
		DiagnosticUnderlineOk = { sp = c.green, underline = true },
		DiagnosticUnnecessary = { fg = c.base_10 },
	}
end

return M
