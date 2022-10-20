local colors = require("tressty.colors")

local theme = {}

-- Main syntax highlight groups
-- https://github.com/neovim/neovim/blob/master/runtime/doc/syntax.txt
theme.main = {
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

-- Editor highlight groups
theme.editor = {
	Normal = { fg = colors.fg, bg = colors.bg }, -- normal text and background color
	NormalNC = { fg = colors.fg, bg = colors.bg_nc }, -- normal text and background color
	NormalFloat = { fg = colors.fg, bg = colors.float }, -- normal text and background color for floating windows
	NormalContrast = { fg = colors.fg, bg = colors.bg_alt }, -- a help group for contrast fileypes
	FloatBorder = { fg = colors.border, bg = colors.float }, -- floating window border
	ColorColumn = { fg = colors.none, bg = colors.active }, --  used for the columns set with 'colorcolumn'
	Conceal = { fg = colors.disabled }, -- placeholder characters substituted for concealed text (see 'conceallevel')
	Cursor = { fg = colors.bg_alt, bg = colors.cursor }, -- the character under the cursor
	CursorIM = { fg = colors.bg_alt, bg = colors.cursor }, -- like Cursor, but used when in IME mode
	Directory = { fg = colors.blue }, -- directory names (and other special names in listings)
	DiffAdd = { fg = colors.green, reverse = true }, -- diff mode: Added line
	GitSignsAdd = { fg = colors.green }, -- diff mode: Added line |diff.txt|
	DiffChange = { fg = colors.blue }, --  diff mode: Changed line
	GitSignsChange = { fg = colors.blue }, -- diff mode: Changed line |diff.txt|
	DiffDelete = { fg = colors.red, reverse = true }, -- diff mode: Deleted line
	GitSignsDelete = { fg = colors.red }, -- diff mode: Deleted line |diff.txt|
	DiffText = { fg = colors.blue, reverse = true }, -- diff mode: Changed text within a changed line
	ErrorMsg = { fg = colors.error }, -- error messages
	Folded = { fg = colors.disabled, italic = true }, -- line used for closed folds
	FoldColumn = { fg = colors.blue }, -- 'foldcolumn'
	IncSearch = { fg = colors.title, bg = colors.selection, underline = true }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
	LineNr = { fg = colors.line_numbers }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
	CursorLineNr = { fg = colors.accent }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
	MatchParen = { fg = colors.yellow, bold = true }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
	ModeMsg = { fg = colors.accent }, -- 'showmode' message (e.g., "-- INSERT -- ")
	MoreMsg = { fg = colors.accent }, -- |more-prompt|
	NonText = { fg = colors.disabled }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
	PmenuSel = { fg = colors.accent, bg = colors.bg }, -- Popup menu: selected item.
    Pmenu = { fg = colors.fg, bg = colors.bg },
	Question = { fg = colors.green }, -- |hit-enter| prompt and yes/no questions
	QuickFixLine = { fg = colors.highlight, bg = colors.title, reverse = true }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
	qfLineNr = { link = "QuickFixLine" }, -- Line numbers for quickfix lists
	Search = { fg = colors.title, bg = colors.selection, bold = true }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
	SignColumn = { fg = colors.fg },
	SpecialKey = { fg = colors.purple }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
	SpellBad = { fg = colors.red, italic = true, undercurl = true }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
	SpellCap = { fg = colors.blue, italic = true, undercurl = true }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
	SpellLocal = { fg = colors.cyan, italic = true, undercurl = true }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
	SpellRare = { fg = colors.purple, italic = true, undercurl = true }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
	StatusLine = { fg = colors.fg, bg = colors.active }, -- status line of current window
	StatusLineNC = { fg = colors.disabled, bg = colors.bg }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
	StatusLineTerm = { fg = colors.fg, bg = colors.active }, -- status line of current terminal window
	StatusLineTermNC = { fg = colors.disabled, bg = colors.bg }, -- status lines of not-current terminal windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
	TabLineFill = { fg = colors.fg }, -- tab pages line, where there are no labels
	TablineSel = { fg = colors.bg, bg = colors.accent }, -- tab pages line, active tab page label
	Tabline = { fg = colors.fg },
	Title = { fg = colors.title, bold = true }, -- titles for output from ":set all", ":autocmd" etc.
	Visual = { fg = colors.none, bg = colors.selection }, -- Visual mode selection
	VisualNOS = { link = "Visual" }, -- Visual mode selection when vim is "Not Owning the Selection".
	WarningMsg = { fg = colors.darkyellow }, -- warning messages
	Whitespace = { fg = colors.disabled }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
	WildMenu = { fg = colors.orange, bold = true }, -- current match in 'wildmenu' completion
	CursorLine = { fg = colors.none, bg = colors.bg_cur }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
	CursorColumn = { link = "CursorLine" }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
	-- ToolbarLine =			{ fg = colors.fg, bg = colors.bg_alt },
	-- ToolbarButton =			{ fg = colors.fg, bold = true },
	NormalMode = { fg = colors.accent }, -- Normal mode message in the cmdline
	InsertMode = { fg = colors.green }, -- Insert mode message in the cmdline
	ReplacelMode = { fg = colors.red }, -- Replace mode message in the cmdline
	VisualMode = { fg = colors.purple }, -- Visual mode message in the cmdline
	CommandMode = { fg = colors.gray }, -- Command mode message in the cmdline
	Warnings = { fg = colors.yellow },

	healthError = { fg = colors.error },
	healthSuccess = { fg = colors.green },
	healthWarning = { fg = colors.yellow },

	-- Dashboard
	DashboardShortCut = { fg = colors.red },
	DashboardHeader = { fg = colors.comments },
	DashboardCenter = { fg = colors.accent },
	DashboardFooter = { fg = colors.green, italic = true },

	VertSplit = { fg = colors.vsp }, -- The column separating vertically split windows
	WinSeparator = { fg = colors.vsp }, -- Lines between window splits
}

-- TreeSitter highlight groups
-- https://github.com/nvim-treesitter/nvim-treesitter/blob/master/CONTRIBUTING.md
theme.treeSitter = {
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

-- Lsp highlight groups
theme.lsp = {
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

return theme
