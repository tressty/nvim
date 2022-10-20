local colors = require("tressty.colors")

-- Main syntax highlight groups
-- https://github.com/neovim/neovim/blob/master/runtime/doc/syntax.txt
return {
	Comment = { fg = colors.comments },

	Constant = { fg = colors.darkcyan },
	String = { fg = colors.green },
	Character = { link = "String" },
	Number = { fg = colors.orange },
	Boolean = { fg = colors.orange },
	Float = { fg = colors.orange },

	Identifier = { fg = colors.fg },
	Function = { fg = colors.blue },

	Statement = { fg = colors.cyan },
	Conditional = { fg = colors.cyan },
	Repeat = { fg = colors.cyan },
	Label = { fg = colors.cyan },
	Operator = { fg = colors.cyan },
	Keyword = { fg = colors.orange },
	Exception = { fg = colors.red },

	PreProc = { fg = colors.purple },
	Include = { fg = colors.orange },
	Define = { fg = colors.red },
	Macro = { link = "Define" },
	PreCondit = { link = "Conditional" },

	Type = { fg = colors.yellow },
	StorageClass = { fg = colors.darkblue },
	Structure = { fg = colors.yellow },
	Typedef = { fg = colors.green },

	Special = { fg = colors.red },
	SpecialChar = { link = "Special" },
	Tag = { fg = colors.cyan },
	Delimiter = { fg = colors.cyan },
	SpecialComment = { link = "Comment" },
	Debug = { fg = colors.red },

	Underlined = { fg = colors.link, underline = true },
	Ignore = { fg = colors.disabled },
	Error = { fg = colors.error },
	Todo = { fg = colors.fg, bg = colors.yellow },

	htmlLink = { fg = colors.link, underline = true },
	htmlH1 = { fg = colors.cyan, bold = true },
	htmlH2 = { fg = colors.red, bold = true },
	htmlH3 = { fg = colors.green, bold = true },
	htmlH4 = { fg = colors.yellow, bold = true },
	htmlH5 = { fg = colors.purple, bold = true },

	markdownH1 = { fg = colors.cyan, bold = true },
	markdownH2 = { fg = colors.red, bold = true },
	markdownH3 = { fg = colors.green, bold = true },
	markdownH1Delimiter = { fg = colors.cyan },
	markdownH2Delimiter = { fg = colors.red },
	markdownH3Delimiter = { fg = colors.green },
}
