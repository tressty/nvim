local colors = require("tressty.colors")

-- Main syntax highlight groups
-- https://github.com/neovim/neovim/blob/master/runtime/doc/syntax.txt
return {
	Comment = { fg = colors.general.gray },

	Constant = { fg = colors.general.turquoise },
	String = { fg = colors.general.green },
	Character = { link = "String" },
	Number = { fg = colors.general.orange },
	Boolean = { fg = colors.general.orange },
	Float = { fg = colors.general.orange },

	Identifier = { fg = colors.main.foreground },
	Function = { fg = colors.general.blue },

	Statement = { fg = colors.general.cyan },
	Conditional = { fg = colors.general.cyan },
	Repeat = { fg = colors.general.cyan },
	Label = { fg = colors.general.cyan },
	Operator = { fg = colors.general.cyan },
	Keyword = { fg = colors.general.orange },
	Exception = { fg = colors.main.error },

	PreProc = { fg = colors.general.purple },
	Include = { fg = colors.general.orange },
	Define = { fg = colors.general.red },
	Macro = { link = "Define" },
	PreCondit = { link = "Conditional" },

	Type = { fg = colors.general.yellow },
	StorageClass = { fg = colors.general.darkblue },
	Structure = { fg = colors.general.yellow },
	Typedef = { fg = colors.general.orange },

	Special = { fg = colors.additional.vermilion },
	SpecialChar = { link = "Special" },
	Tag = { fg = colors.general.cyan },
	Delimiter = { fg = colors.general.cyan },
	SpecialComment = { link = "Comment" },
	Debug = { fg = colors.general.magenta },

	Underlined = { fg = colors.general.turquoise, underline = true },
	Ignore = { fg = colors.general.gray },
	Error = { fg = colors.main.error },
	Todo = { fg = colors.main.foreground, bg = colors.additional.sand },

	htmlLink = { link = "Underlined" },
	htmlH1 = { fg = colors.general.cyan, bold = true },
	htmlH2 = { fg = colors.general.red, bold = true },
	htmlH3 = { fg = colors.general.green, bold = true },
	htmlH4 = { fg = colors.general.yellow, bold = true },
	htmlH5 = { fg = colors.general.purple, bold = true },

	markdownH1 = { link = "htmlH1" },
	markdownH2 = { link = "htmlH2" },
	markdownH3 = { link = "htmlH3" },
	markdownH1Delimiter = { fg = colors.general.cyan },
	markdownH2Delimiter = { fg = colors.general.red },
	markdownH3Delimiter = { fg = colors.general.green },
}
