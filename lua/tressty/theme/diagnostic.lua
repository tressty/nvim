local colors = require("tressty.colors")

-- Diagnostic highlights
-- https://neovim.io/doc/user/diagnostic.html
return {
	DiagnosticError = { link = "Error" },
	DiagnosticWarn = { link = "WarningMsg" },
	DiagnosticInfo = { fg = colors.additional.moon_light },
	DiagnosticHint = { fg = colors.general.purple},

	DiagnosticVirtualTextError = { link = "DiagnosticError" },
	DiagnosticVirtualTextWarn = { link = "DiagnosticWarn" },
	DiagnosticVirtualTextInfo = { link = "DiagnosticInfo"},
	DiagnosticVirtualTextHint = { link = "DiagnosticHint" },

	DiagnosticUnderlineError = { undercurl = true, sp = colors.general.error },
	DiagnosticUnderlineWarn = { undercurl = true,  sp = colors.general.vermilion },
	DiagnosticUnderlineInfo = { undercurl = true,  sp = colors.additional.moon_light },
	DiagnosticUnderlineHint = { undercurl = true,  sp = colors.general.purple },

    DiagnosticFloatingError = { link = "DiagnosticError" },
	DiagnosticFloatingWarn = { link = "DiagnosticWarn" },
	DiagnosticFloatingInfo = { link = "DiagnosticInfo" },
	DiagnosticFloatingHint = { link = "DiagnosticHint" },

    DiagnosticSignError = { link = "DiagnosticError" },
	DiagnosticSignWarn = { link = "DiagnosticWarn" },
	DiagnosticSignInfo = { link = "DiagnosticInfo" },
	DiagnosticSignHint = { link = "DiagnosticHint" },
}
