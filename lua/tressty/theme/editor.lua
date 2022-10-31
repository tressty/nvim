local colors = require("tressty.colors")

-- Editor highlight groups
-- https://neovim.io/doc/user/syntax.html#highlight-groups
return {
	ColorColumn = { fg = colors.none, bg = colors.active },
	Conceal = { fg = colors.general.gray },
	CurSearch = { fg = colors.main.active_foreground, bg = colors.main.active_background },

	Cursor = { fg = colors.general.white, bg = colors.general.white },
	lCursor = { link = "Cursor" },
	CursorIM = { link = "Cursor" },
	CursorColumn = { link = "Cursor" },
	CursorLine = { bg = colors.main.highlight },

	Directory = { fg = colors.general.blue },

	DiffAdd = { fg = colors.general.green },
	DiffChange = { fg = colors.general.blue },
	DiffDelete = { fg = colors.general.red },
	DiffText = { fg = colors.additional.moon_light },

	EndOfBuffer = { link = "NonText" },
	TermCursor = { link = "Cursor" },
	TermCursorNc = { link = "Cursor" },

	ErrorMsg = { fg = colors.main.error },

	WinSeparator = { fg = colors.main.border, bg = colors.main.border },

	Folded = { fg = colors.general.gray },
	FoldColumn = { fg = colors.general.blue },
	SignColumn = { fg = colors.main.highlight },
	IncSearch = { link = "CurSearch" },
	Substitute = { fg = colors.main.active_foreground, bg = colors.main.active_background },

	LineNr = { fg = colors.main.highlight },
	LineNrAbove = { link = "LineNr" },
	LineNrBelow = { link = "LineNr" },
	CursorLineNr = { fg = colors.main.foreground },
	CursorLineFold = { fg = colors.main.foreground },
	CursorLineSign = { fg = colors.main.foreground },

	MatchParen = { fg = colors.general.yellow },

	ModeMsg = { fg = colors.additional.moon_light },
	MsgArea = { fg = colors.main.foreground },
	MsgSeparator = { fg = colors.main.border },
	MoreMsg = { link = "ModeMsg" },
	NonText = { fg = colors.main.highlight },

	Normal = { fg = colors.main.foreground, bg = colors.main.background },
	NormalFloat = { bg = colors.main.border },
	NormalNC = { fg = colors.main.foreground, bg = colors.main.background },
	Pmenu = { bg = colors.main.second_background },
	PmenuSel = { bg = colors.main.highlight },
	PmenuSbar = { link = "Pmenu" },
	PmenuThumb = { fg = colors.main.second_highlight, bg = colors.main.second_highlight },

	Question = { fg = colors.additional.moon_light },
	QuickFixLine = { fg = colors.main.accent },

	Search = { fg = colors.main.active_foreground, bg = colors.main.active_background },

	SpecialKey = { link = "Special" },

	SpellBad = { link = "Error" },
	SpellCap = { link = "SpellBad" },
	SpellLocal = { fg = colors.general.blue },
	SpellRare = { fg = colors.general.orange },

	StatusLine = { fg = colors.main.foreground, bg = colors.main.background },
	StatusLineNC = { fg = colors.main.foreground, bg = colors.main.second_background },

    TabLine = { bg = colors.main.buttons },
    TabLineFill = { bg = colors.main.background },
    TabLineSel = { bg = colors.main.buttons, fg = colors.additional.moon_light },

    Title = { fg = colors.general.white },
    Visual = { bg = colors.main.active_background },
    VisualNOS = { link = "Visual" },

    WarningMsg = { fg = colors.main.warning },

    Whitespace = { link = "NonText" },
    WildMenu = { fg = colors.additional.moon_light },
}
