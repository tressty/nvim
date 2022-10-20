local colors = require("tressty.colors")

return {
	DiagnosticError = { fg = colors.error },
	DiagnosticVirtualTextError = { fg = colors.error },
	DiagnosticFloatingError = { fg = colors.error },
	DiagnosticSignError = { fg = colors.error },
	DiagnosticUnderlineError = { undercurl = true, sp = colors.error },
	DiagnosticWarn = { link = "WarningMsg" },
	DiagnosticVirtualTextWarn = { link = "WarningMsg" },
	DiagnosticFloatingWarn = { link = "WarningMsg" },
	DiagnosticSignWarn = { link = "WarningMsg" },
	DiagnosticUnderlineWarn = { undercurl = true, link = "WarningMsg" },
	DiagnosticInformation = { fg = colors.paleblue },
	DiagnosticVirtualTextInfo = { fg = colors.paleblue },
	DiagnosticFloatingInfo = { fg = colors.paleblue },
	DiagnosticSignInfo = { fg = colors.paleblue },
	DiagnosticUnderlineInfo = { undercurl = true, sp = colors.paleblue },
	DiagnosticHint = { fg = colors.purple },
	DiagnosticVirtualTextHint = { fg = colors.purple },
	DiagnosticFloatingHint = { fg = colors.purple },
	DiagnosticSignHint = { fg = colors.purple },
	DiagnosticUnderlineHint = { undercurl = true, sp = colors.purple },
	LspReferenceText = { bg = colors.selection }, -- used for highlighting "text" references
	LspReferenceRead = { link = "LspReferenceText" }, -- used for highlighting "read" references
	LspReferenceWrite = { link = "LspReferenceText" }, -- used for highlighting "write" references
}

