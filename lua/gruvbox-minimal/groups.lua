local M = {}

function M.setup(c, config)
	local essential_groups = {
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

		-- Others
		ColorColumn = { bg = c.base_03 },
		Conceal = { bg = c.base_09 },
		CurSearch = { fg = c.base_00, bg = c.base_13 },
		Directory = { fg = c.cyan },
		EndOfBuffer = { fg = c.base_06 },
		ErrorMsg = { fg = c.red },
		WinSeparator = { fg = c.base_10 },
		FoldColumn = { fg = c.base_12 },
		NonText = { fg = c.base_06 },
		Title = { fg = c.yellow, bold = true },
		Visual = { bg = c.base_04 },
		VisualNOS = { bg = c.base_04 },
		WarningMsg = { fg = c.yellow },
		WhiteSpace = { fg = c.base_06 },
		WildMenu = { fg = c.base_15, bg = c.base_04 },

		WinBarNC = { bg = config.transparent and "none" or c.base_01, fg = c.base_10 },
		WinBar = { bg = c.base_03, fg = c.base_13 },

		-- Syntax Colors
		Comment = { fg = c.cyan, italic = config.italic_comments },
		Constant = { fg = c.cyan },
		String = { fg = c.yellow },
		Character = { fg = c.base_15 },
		Number = { fg = c.base_15 },
		Boolean = { fg = c.cyan },
		Float = { fg = c.base_15 },
		Operator = { fg = c.base_10 },
		Identifier = { fg = c.base_15 },
		Function = { fg = c[config.accent], italic = config.italic_functions },
		Statement = { fg = c.base_15 },
		Conditional = { fg = c.base_15 },
		Repeat = { fg = c.base_15 },
		Label = { fg = c[config.accent] },
		Keyword = { fg = c.base_15 },
		Exception = { fg = c.base_15 },
		PreProc = { fg = c.base_15 },
		Include = { fg = c.base_15 },
		Define = { fg = c.base_15 },
		Macro = { fg = c.base_15 },
		PreCondit = { fg = c.base_15 },
		Type = { fg = c.base_15 },
		StorageClass = { fg = c.base_15 },
		Structure = { fg = c[config.accent] },
		Typedef = { fg = c[config.accent] },
		SpecialChar = { link = "Constant" },
		Tag = { fg = c.base_13 },
		Delimiter = { link = "Operator" },
		SpecialComment = { fg = c.cyan, italic = config.italic_comments },
		Debug = { fg = c.orange },
		Special = { fg = c.base_12 },
		Error = { fg = c.red, bg = c.bg_red },
		Todo = { fg = c.base_00, bg = c.green },
		Added = { fg = c.green },
		Changed = { fg = c.blue },
		Removed = { fg = c.red },

		-- Treesitter Syntax Colors
		["@variable"] = { link = "Identifier" },
		["@constant.builtin"] = { link = "Constant" },
		["@function.builtin"] = { link = "Function" },
		["@function.call"] = { fg = c.base_12, italic = config.italic_functions },
		["@function.method.call"] = { fg = c.base_12, italic = config.italic_functions },
		["@comment.error"] = { bg = c.red, fg = c.bg_red },
		["@comment.warning"] = { bg = c.orange, fg = c.bg_orange },
		["@comment.todo"] = { bg = c.green, fg = c.bg_green },
		["@comment.note"] = { bg = c.blue, fg = c.bg_blue },

		--- todo.txt TS
		["@type.todotxt"] = { fg = c[config.accent] },
		["@string.todotxt"] = { fg = c.cyan },
		["@comment.todotxt"] = { fg = c.base_10 },

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
		--- hlchunk.nvim
		HLChunk1 = { fg = c.base_08 },
		HLChunk2 = { fg = c.base_08 },
		HLIndent = { fg = c.base_05 },
		HLIndent1 = { fg = c.base_05 },
		--- mini.hipatterns
		MiniHipatternsTodo = { bg = c.green, fg = c.bg_green, bold = true },
		MiniHipatternsFixme = { bg = c.red, fg = c.bg_red, bold = true },
		MiniHipatternsHack = { bg = c.magenta, fg = c.bg_magenta, bold = true },
		MiniHipatternsNote = { bg = c.blue, fg = c.bg_blue, bold = true },
		--- mini.statusline
		MiniStatuslineModeNormal = { bg = c.base_13, fg = c.base_00 },
		MiniStatuslineModeInsert = { bg = c.blue, fg = c.base_00 },
		MiniStatuslineModeVisual = { bg = c.green, fg = c.base_00 },
		MiniStatuslineModeReplace = { bg = c.magenta, fg = c.base_00 },
		MiniStatuslineModeCommand = { bg = c.yellow, fg = c.base_00 },
		MiniStatuslineModeOther = { bg = c.red, fg = c.base_15 },
		--- mini.diff
		MiniDiffSignDelete = { fg = c.red },
		MiniDiffSignAdd = { fg = c.green },
		MiniDiffSignChange = { fg = c.orange },
		--- mini.clue
		MiniClueBorder = { link = "FloatBorder" },
		MiniClueDescGroup = { fg = c.yellow, bg = config.transparent and "none" or c.base_02 },
		MiniClueDescSingle = { fg = c.base_15, bg = config.transparent and "none" or c.base_02 },
		MiniClueNextKey = { fg = c.base_12, bg = config.transparent and "none" or c.base_02 },
		MiniClueNextKeyWithPostkeys = { fg = c.base_12, bg = config.transparent and "none" or c.base_02 },
		MiniClueSeparator = { fg = c.base_12, bg = config.transparent and "none" or c.base_02 },
		MiniClueTitle = { fg = c.yellow, bg = config.transparent and "none" or c.base_02 },
		--- render-markdown.nvim
		RenderMarkdownH1Bg = { bg = c.bg_red, fg = c.red, bold = true },
		RenderMarkdownH2Bg = { bg = c.bg_green, fg = c.green, bold = true },
		RenderMarkdownH3Bg = { bg = c.bg_yellow, fg = c.yellow, bold = true },
		RenderMarkdownH4Bg = { bg = c.bg_cyan, fg = c.cyan, bold = true },
		RenderMarkdownH5Bg = { bg = c.bg_magenta, fg = c.magenta, bold = true },
		RenderMarkdownUnchecked = { fg = c.red, bold = true },
		RenderMarkdownChecked = { fg = c.green, bold = true },
		RenderMarkdownBullet = { fg = c.yellow, bold = true },
		--- lewis6991/gitsigns.nvim
		GitSignsAdd = { fg = c.green },
		GitSignsChange = { fg = c.blue },
		GitSignsDelete = { fg = c.red },
		GitSignsAddLn = { bg = c.bg_green },
		GitSignsChangeLn = { bg = c.bg_blue },
		GitSignsDeleteLn = { bg = c.bg_red },
		-- folke/flash.nvim
		FlashLabel = { fg = c.base_00, bg = c[config.accent] },
	}

	groups = essential_groups

	if config.semantic_highlights then
		groups = vim.tbl_deep_extend("force", essential_groups, {
			-- LSP Semantic Highlights
			["@property.type.class"] = { link = "Type" },
			["@lsp.type.comment"] = { link = "Comment" },
			["@lsp.type.decorator"] = { link = "Macro" },
			["@lsp.type.enum"] = { link = "Type" },
			["@lsp.type.enumMember"] = { link = "Constant" },
			["@lsp.type.event"] = { link = "Type" },
			["@lsp.type.function"] = { link = "Function" },
			["@lsp.type.interface"] = { link = "Type" },
			["@lsp.type.keyword"] = { link = "Keyword" },
			["@lsp.type.macro"] = { link = "Macro" },
			["@lsp.type.method"] = { link = "Function" },
			["@lsp.type.modifier"] = { link = "Type" },
			["@lsp.type.namespace"] = { link = "Structure" },
			["@lsp.type.number"] = { link = "Number" },
			["@lsp.type.operator"] = { link = "Operator" },
			["@lsp.type.parameter"] = { fg = c.base_15, italic = true },
			["@lsp.type.property"] = { link = "Keyword" },
			["@lsp.type.regexp"] = { link = "SpecialChar" },
			["@lsp.type.string"] = { link = "String" },
			["@lsp.type.struct"] = { link = "Type" },
			["@lsp.type.typeParameter"] = { link = "Type" },
			["@lsp.type.variable"] = { link = "Keyword" },

			["@lsp.mod.abstract"] = { link = "Type" },
			["@lsp.mod.async"] = { link = "Function" },
			["@lsp.mod.declaration"] = {},
			["@lsp.mod.defaultLibrary"] = { link = "Special" },
			["@lsp.mod.definition"] = {},
			["@lsp.mod.documentation"] = { link = "Comment" },
			["@lsp.mod.readonly"] = { link = "Constant" },
			["@lsp.mod.static"] = { link = "Constant" },

			-- TypeScript / JavaScript
			["@lsp.mod.readonly.typescript"] = {},
			["@lsp.mod.readonly.javascript"] = {},
		})
	end

	if config.overrides and next(config.overrides) ~= nil then
		groups = vim.tbl_deep_extend("force", groups, config.overrides)
	end

	return groups
end

return M
