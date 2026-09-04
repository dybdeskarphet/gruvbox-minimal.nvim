local M = {}

--- @param c GruvboxPalette
--- @param config GruvboxConfig
--- @return HighlightTable
function M.setup(c, config)
	return {
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
		--- mini.starter
		MiniStarterFooter = { fg = c.base_10 },
		MiniStarterHeader = { fg = c.base_10 },
		MiniStarterInactive = { fg = c.base_06 },
		MiniStarterItem = { link = "Normal" },
		MiniStarterCurrent = { link = "MiniStarterItem" },
		MiniStarterItemBullet = { fg = c.base_10 },
		MiniStarterItemPrefix = { fg = c.base_10 },
		MiniStarterSection = { fg = c.base_11, bold = true },
		MiniStarterQuery = { bold = true },
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
		-- mini.cursorword
		MiniCursorword = { underline = true },
		-- mini.indentscope
		MiniIndentscopeSymbol = { fg = c.base_08 },
		MiniIndentscopeSymbolOff = { fg = c.base_05 },
		-- mini.notify
		MiniNotifyBorder = { fg = c.base_08, bg = c.base_02 },
		MiniNotifyLspProgress = { fg = c.base_12, bg = c.base_02 },
		MiniNotifyNormal = { fg = c.base_15, bg = c.base_02 },
		MiniNotifyTitle = { fg = c.base_15, bg = c.base_02 },
		-- mini.files
		MiniFilesBorder = { link = "FloatBorder" },
		MiniFilesBorderModified = { fg = c.base_12, bg = config.transparent and "none" or c.base_02 },
		MiniFilesCursorLine = { bg = c.base_04 },
		MiniFilesDirectory = { fg = c.base_11, bg = config.transparent and "none" or c.base_02 },
		MiniFilesFile = { bg = config.transparent and "none" or c.base_02 },
		MiniFilesNormal = { bg = config.transparent and "none" or c.base_02 },
		MiniFilesTitle = { link = "FloatTitle" },
		MiniFilesTitleFocused = { fg = c.base_12, bg = config.transparent and "none" or c.base_02 },
		-- mini.pick
		MiniPickBorder = { link = "FloatBorder" },
		MiniPickBorderBusy = { fg = c.base_05, bg = config.transparent and "none" or c.base_02 },
		MiniPickBorderText = { fg = c.base_15, bg = config.transparent and "none" or c.base_02 },
		MiniPickCursor = { bg = c.base_04 },
		MiniPickDirectory = { fg = c.base_11, bg = config.transparent and "none" or c.base_02 },
		MiniPickFile = { fg = c.base_13, bg = config.transparent and "none" or c.base_02 },
		MiniPickHeader = { link = "FloatTitle" },
		MiniPickMatchCurrent = { bg = c.base_04 },
		MiniPickMatchMarked = { bg = c.bg_orange },
		MiniPickMatchRanges = { fg = c.green, bg = config.transparent and "none" or c.base_02 },
		MiniPickNormal = { fg = c.base_15, bg = config.transparent and "none" or c.base_02 },
		MiniPickPreviewLine = { bg = c.base_04 },
		MiniPickPreviewRegion = { fg = c.green, bg = c.bg_green },
		MiniPickPrompt = { fg = c.base_15, bg = config.transparent and "none" or c.base_02 },
		MiniPickPromptCaret = { fg = c.base_13, bg = config.transparent and "none" or c.base_02 },
		MiniPickPromptPrefix = { fg = c[config.accent], bg = config.transparent and "none" or c.base_02 },
	}
end

return M
