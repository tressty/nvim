local colors = require("tressty.colors")

-- TreeSitter highlight groups
-- https://github.com/nvim-treesitter/nvim-treesitter/blob/master/CONTRIBUTING.md
return {
	-- Misc
	["@comment"] = { link = "Comment" },
	["@error"] = { link = "Error" },
	["@none"] = { fg = "NONE" },
	["@preproc"] = { link = "PreProc" },
	["@define"] = { link = "Define" },
	["operator"] = { link = "Operator" },

	-- Punctuation
	["@punctuation.delimiter"] = { link = "Delimiter" },

	["@punctuation.bracket"] = { fg = colors.general.cyan },
	["@punctuation.special"] = { fg = colors.general.cyan },

	-- Literals
	["@string"] = { link = "String" },
	["@string.regex"] = { fg = colors.general.cyan },
	["@string.escape"] = { fg = colors.general.gray, bg = colors.additional.pale_green },
	["@string.special"] = { fg = colors.additional.cantaloupe },

	["@character"] = { link = "Character" },
	["@character.special"] = { link = "SpecialChar" },

	["@boolean"] = { link = "Boolean" },
	["@number"] = { link = "Number" },
	["@float"] = { link = "Float" },

	-- Functions
	["@function"] = { link = "Function" },
	["@function.builtin"] = { link = "@function" },
	["@function.call"] = { link = "@function" },
	["@function.macro"] = { fg = colors.additional.plum },

	["@method"] = { link = "@function" },
	["@method.call"] = { link = "@method" },

	["@constructor"] = { link = "@function" },
	["@parameter"] = { fg = colors.additional.moon_light },

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
	["@type.builtin"] = { fg = colors.general.red },
	["@type.definition"] = { link = "@keyword" },
	["@type.qualifier"] = { fg = colors.general.red },

	["@storageclass"] = { fg = colors.general.purple },
	["@attribute"] = { fg = colors.general.cyan },
	["@field"] = { fg = colors.fg },
	["@property"] = { link = "@field" },

	-- Identifiers
	["@variable"] = { link = "Identifier" },
	["@variable.builtin"] = { fg = colors.general.red },

	["@constant"] = { fg = colors.additional.pale_turquoise }, -- see also https://github.com/nvim-treesitter/nvim-treesitter/issues/3610
	["@constant.builtin"] = { fg = colors.general.cyan },
	["@constant.macro"] = { link = "Macro" },

	["@namespace"] = { fg = colors.general.pink },
	["@symbol"] = { link = "@reference" },

	-- Text
	["@text"] = { fg = colors.main.fg },
	["@text.strong"] = { link = "@text", bold = true },
	["@text.emphasis"] = { fg = colors.additional.moon_light },
	["@text.underline"] = { link = "@text", underline = true },
	["@text.strike"] = { link = "@text", strikethrough = true },
	["@text.title"] = { fg = colors.general.white },
	["@text.literal"] = { fg = colors.general.yellow },
	["@text.uri"] = { link = "Underlined" },
	["@text.math"] = { fg = colors.general.yellow },
	["@text.environment"] = { fg = colors.general.green },
	["@text.environment.name"] = { fg = colors.general.red },
	["@text.reference"] = { fg = colors.main.foreground, italic = true },

	["@text.todo"] = { link = "Todo" },
	["@text.note"] = { fg = colors.additional.moon_light },
	["@text.warning"] = { link = "WarningMsg" },
	["@text.danger"] = { fg = colors.main.foreground, bg = colors.general.error },

	-- Tags
	["@tag"] = { fg = colors.general.orange },
	["@tag.attribute"] = { fg = colors.general.green },
	["@tag.delimiter"] = { fg = colors.general.cyan },

    -- Conceal
    ["@conceal"] = { link = "Conceal" },
}
