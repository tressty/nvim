local util = {}
local theme = require("tressty.theme")
local colors = require("tressty.colors")

-- apply highlights for a given table
-- @param highlights table highlight group names and their values
local apply_highlights = function(highlights)
	for name, values in pairs(highlights) do
		vim.api.nvim_set_hl(0, name, values)
	end
end

local function prepare_environment()
	vim.cmd("hi clear")

	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end

	vim.opt.background = "dark"

	vim.opt.termguicolors = true
	vim.g.colors_name = "tressty"
end

-- see colors in https://github.com/tressty/windows-terminal
local function loadTerminal()
	vim.g.terminal_color_0 = colors.general.black
	vim.g.terminal_color_1 = colors.general.red
	vim.g.terminal_color_2 = colors.general.green
	vim.g.terminal_color_3 = colors.general.yellow
	vim.g.terminal_color_4 = colors.general.blue
	vim.g.terminal_color_5 = colors.general.purple
	vim.g.terminal_color_6 = colors.general.cyan
	vim.g.terminal_color_7 = colors.general.white

	vim.g.terminal_color_8 = colors.general.gray
	vim.g.terminal_color_9 = colors.general.red
	vim.g.terminal_color_10 = colors.general.green
	vim.g.terminal_color_11 = colors.general.yellow
	vim.g.terminal_color_12 = colors.general.blue
	vim.g.terminal_color_13 = colors.general.purple
	vim.g.terminal_color_14 = colors.general.cyan
	vim.g.terminal_color_15 = colors.general.white
end

-- Load the theme
function util.load()
	prepare_environment()
	loadTerminal()

	for _, highlights in pairs(theme) do
		apply_highlights(highlights)
	end
end

return util
