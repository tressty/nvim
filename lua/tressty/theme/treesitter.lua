local colors = require("tressty.colors")

-- TreeSitter highlight groups
-- https://github.com/nvim-treesitter/nvim-treesitter/blob/master/CONTRIBUTING.md
return {
	-- Misc
	["@comment"] = { link = "Comment" },
	["@error"] = { link = "Error" },
	["@none"] = { fg = colors.none },
	["@preproc"] = { link = "PreProc" },
	["@define"] = { link = "Define" },
	["operator"] = { link = "Operator" },

	-- Punctuation
	["@punctuation.delimiter"] = { fg = colors.cyan },
	["@punctuation.bracket"] = { fg = colors.cyan },
	["@punctuation.special"] = { fg = colors.cyan },

	-- Literals
	["@string"] = { link = "String" },
	["@string.regex"] = { fg = colors.cyan },
	["@string.escape"] = { fg = colors.text },
	["@string.special"] = { fg = colors.yellow },

	["@character"] = { link = "Character" },
	["@character.special"] = { fg = colors.cyan },

	["@boolean"] = { link = "Boolean" },
	["@number"] = { link = "Number" },
	["@float"] = { link = "Float" },

	-- Functions
	["@function"] = { link = "Function" },
	["@function.builtin"] = { link = "@function" },
	["@function.call"] = { link = "@function" },
	["@function.macro"] = { fg = colors.darkpurple },

	["@method"] = { link = "@function" },
	["@method.call"] = { link = "@method" },

	["@constructor"] = { link = "@function" },
	["@parameter"] = { fg = colors.paleblue },

	-- Keywords
	["@keyword"] = { link = "Keyword" },
	["@keyword.function"] = { link = "@keyword" },
	["@keyword.operator"] = { link = "@keyword" },
	["@keyword.return"] = { link = "@keyword" },

	["@conditional"] = { link = "Conditional" },
	["@repeat"] = { link = "Repeat" },
	["@debug"] = { link = "@keyword" },
	["@label"] = { link = "Label" },
	["@include"] = { link = "@keyword" },
	["@exception"] = { link = "@keyword" },

	-- Types
	["@type"] = { link = "Type" },
	["@type.builtin"] = { fg = colors.red },
	["@type.definition"] = { link = "@keyword" },
	["@type.qualifier"] = { fg = colors.red },

	["@storageclass"] = { fg = colors.purple },
	["@attribute"] = { fg = colors.cyan },
	["@field"] = { fg = colors.fg },
	["@property"] = { link = "@field" },

	-- Identifiers
	["@variable"] = { link = "Identifier" },
	["@variable.builtin"] = { fg = colors.red },

	["@constant"] = { fg = colors.darkcyan }, -- see also https://github.com/nvim-treesitter/nvim-treesitter/issues/3610
	["@constant.builtin"] = { fg = colors.cyan },
	["@constant.macro"] = { link = "Macro" },

	["@namespace"] = { fg = colors.pink },
	["@symbol"] = { link = "@reference" },

	-- Text
	["@text"] = { fg = colors.fg },
	["@text.strong"] = { link = "@text", bold = true },
	["@text.emphasis"] = { fg = colors.paleblue },
	["@text.underline"] = { link = "@text", underline = true },
	["@text.strike"] = { link = "@text" }, -- How to do this???
	["@text.title"] = { fg = colors.title },
	["@text.literal"] = { fg = colors.yellow },
	["@text.uri"] = { fg = colors.link },
	["@text.math"] = { fg = colors.yellow },
	["@text.environment"] = { fg = colors.green },
	["@text.environment.name"] = { fg = colors.red },
	["@text.reference"] = { fg = colors.fg, italic = true },

	["@text.todo"] = { link = "Todo" },
	["@text.note"] = { fg = colors.paleblue },
	["@text.warning"] = { link = "WarningMsg" },
	["@text.danger"] = { fg = colors.fg, bg = colors.darkred },

	-- Tags
	["@tag"] = { fg = colors.orange },
	["@tag.attribute"] = { fg = colors.green },
	["@tag.delimiter"] = { fg = colors.cyan },

	--
}
