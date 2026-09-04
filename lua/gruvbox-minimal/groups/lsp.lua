local M = {}

--- @param c GruvboxPalette
--- @param config GruvboxConfig
--- @return HighlightTable
function M.setup(c, config)
	if not config.semantic_highlights then
		return {}
	end

	return {
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
	}
end

return M
